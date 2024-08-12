
///////////////////////////////////////////////////////////////////////////////////
//  This file is part of Sorcerers. Copyright (C) 2020 @salvakantero
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU Lesser General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU Lesser General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
///////////////////////////////////////////////////////////////////////////////////

// Sorcerers v1.0

#include <cpctelera.h>

#include "gfx/tiles.h"			// tiles to compose the map (4x4 px)
#include "gfx/font.h"			// letters and numbers (6x8 px)
#include "gfx/logo.h"			// game logo for the main menu (106x36 px)
#include "gfx/goldframe.h"		// three pieces to create decorative frames (6x6 px) 
#include "gfx/objects.h"		// 16 objects (8x8 px)
#include "gfx/magic.h"			// magic shots; red, blue, green and yellow (8x8 px)

#include "sprites/sorcerer1.h"	// 10 frames for SVEN, the 1st player (10x12 px)
#include "sprites/sentinel.h"	// 8 frames for the sentinel sprite (10x12 px)
#include "sprites/door.h"		// 2 frames for the door (10x12 px)

// compressed game map (40x42 tiles / 160x168 pixels each)
// gardens
#include "map/mappk0.h"
#include "map/mappk1.h"


///////////////////////////////////////////////////////////////////////////////////
// DEFINITIONS AND VARIABLES
///////////////////////////////////////////////////////////////////////////////////

#define TRUE	1
#define FALSE	0

#define GLOBAL_MAX_X  80 	// X maximum value for the screen (bytes)
#define GLOBAL_MAX_Y  200	// Y maximun value for the screen (px)

#define FNT_W 3 // width of text characters (bytes)
#define FNT_H 8 // height of text characters (px)

#define SPR_W 5 // sprite width (bytes)
#define SPR_H 12 // sprite height (px)

#define SHT_W 4 // shot width (bytes)
#define SHT_H 8 // shot height (px)

// character types
#define SORCERER1	0
#define SENTINEL	2

#define OBJ_W 4 // object width (bytes)
#define OBJ_H 8 // object height (px)

#define TILESET_WELL 38 // the well is detected in this tile number
#define TILESET_DOOR 14 // the door is detected in this tile number
#define TILESET_BLOCKERS 45 // tile number where the blocking tiles begin

#define BG_COLOR 1 // background color (1 = black)

// maps
#define MAP_W 40 // game screen size in tiles
#define MAP_H 42
#define ORIG_MAP_Y 32 // the map starts at position 32 of the vertical coordinates
#define UNPACKED_MAP_END (u8*)(0x1600) // the program starts at 0x1601
#define UNPACKED_MAP_INI (u8*)(0x0F71)
u8 nMap; // current level number
u8 lastNMap; // has been a level change?
u8 *lName; // text to display on screen for each level

// other global variables
u8 ctInactivity[2];	// counters to detect inactive players
i16 ctMainLoop; 	// main loop iteration counter

// keyboard / joystick controls
cpct_keyID ctlUp[2];
cpct_keyID ctlDown[2];
cpct_keyID ctlLeft[2];
cpct_keyID ctlRight[2];
cpct_keyID ctlAbort;
cpct_keyID ctlMusic;  
cpct_keyID ctlPause;

// frame of the sprite to print
typedef struct {
	//u8 dir;
	u8* spr;
} TFrm;

// structure to manage sprites (players and enemies)
typedef struct {
	// common properties
	u8 num;		// sprite number (0 to 6; two players and five enemies)
	u8 ident;	// identity; Sorcerer1, Sorcerer2, Sentinel, etc ...
	u8 x, y;	// X, Y coordinates of the sprite
	u8 px, py;	// previous X, Y coordinates of the sprite
	u8 status;	// current status of the sprite; standing, walking, etc ...
	u8 dir;		// sprite direction
	TFrm* frm;	// animation sequence image
	u8 nFrm;	// animation frame number

	// shared properties for players and enemies (saving memory)
	
	// players: lives left
	// enemies: speed
	u8 lives_speed;
	
	// players: number of ingredients purchased
	// enemies: movement type
	u8 objNum_mov;
	
	// players: need to reprint sprite?
	// enemies: minimum value X / Y in linear motion
	u8 print_minV;
	
	// players: powerUp speed*2
	// enemies: maximum value X / Y in linear motion
	u8 power_maxV;
} TSpr;

TSpr spr[7];	// 0) sorcerer #1
				// 1) sorcerer #2
				// 2) enemy #1
				// 3) enemy #2
				// 4) enemy #3
				// 5) enemy #4
				// 6) enemy #5 (wizard)

// necessary data to control the two objects to collect
i8 nObj[2];	// item number
u8 objX[2];	// X coordinate of item
u8 objY[2];	// Y coordinate of item

			// -1) No active object
			// 	0) Coin
			//  1) Coin x5
			//  2) Extra life
			//  3) PowerUp speed*2		
			//	4) Toad snot
			//	5) Diamond dust
			//	6) Newt eye
			//	7) Mammoth poop
			//  8) Kraken ink
			//  9) Mermaid tear
			// 10) Martian mushroom
			// 11) Dragon blood
			// 12) Dodo egg
			// 13) Unicorn blood
			// 14) Troll fat
			// 15) Mordor lava
						
// enumerations
// sprite movement direction
enum {D_up, D_down, D_left, D_right} enum_dir;
// sprite status
enum {S_walkingUp, S_walkingDown, S_walkingLeft, S_walkingRight, S_stopped} enum_sta;
// behavior of sprites controlled by CPU
enum {M_linear_X, M_linear_Y, M_linear_XY, M_chaser} enum_mov;

// 8 frames of Sorcerer1 in motion
const TFrm frmSorcerer1[8] = {
	{g_sorcerer1_00}, // up step 1
	{g_sorcerer1_01}, // up step 2
	{g_sorcerer1_02}, // dows step 1
	{g_sorcerer1_03}, // down step 2
	{g_sorcerer1_04}, // left step 1
	{g_sorcerer1_05}, // left step 2
	{g_sorcerer1_06}, // right step 1
	{g_sorcerer1_07}  // right step 2
};
// Sorcerer1 animation sequences
TFrm* const animUp_Sorcerer1[2] = {&frmSorcerer1[0], &frmSorcerer1[1]};
TFrm* const animDown_Sorcerer1[2] = {&frmSorcerer1[2], &frmSorcerer1[3]};
TFrm* const animLeft_Sorcerer1[2] = {&frmSorcerer1[4], &frmSorcerer1[5]};
TFrm* const animRight_Sorcerer1[2] = {&frmSorcerer1[6], &frmSorcerer1[7]};

// 8 frames of Sentinel in motion
const TFrm frmSentinel[8] = {
	{g_sentinel_0}, // up step 1
	{g_sentinel_1}, // up step 2
	{g_sentinel_2}, // down step 1
	{g_sentinel_3}, // down step 2	
	{g_sentinel_4}, // left step 1
	{g_sentinel_5}, // left step 2
	{g_sentinel_6}, // right step 1
	{g_sentinel_7}	// right step 2 
};
// Sentinel animation sequences
TFrm* const animUp_Sentinel[2] = {&frmSentinel[0], &frmSentinel[1]};
TFrm* const animDown_Sentinel[2] = {&frmSentinel[2], &frmSentinel[3]};
TFrm* const animLeft_Sentinel[2] = {&frmSentinel[4], &frmSentinel[5]};
TFrm* const animRight_Sentinel[2] = {&frmSentinel[6], &frmSentinel[7]};


// Transparency mask table
cpctm_createTransparentMaskTable(g_maskTable, 0x100, M0, 0);


///////////////////////////////////////////////////////////////////////////////////
//  FUNCTION STATEMENTS
///////////////////////////////////////////////////////////////////////////////////

void InitGame();
void GameOver(u8 player);
void PrintObject(u8 nObj, u8 objX, u8 objY);
u8 SpriteCollision(u8 x, u8 y, TSpr *pSpr, u8 marginX);
void PrintSprite(TSpr *pSpr) __z88dk_fastcall;
void ResetData();


///////////////////////////////////////////////////////////////////////////////////
// GENERIC FUNCTIONS
///////////////////////////////////////////////////////////////////////////////////

// returns the absolute value of a number
i16 Abs(i16 number) __z88dk_fastcall {
	if (number < 0)
    	number *= -1;
    return (number);
}


// get the length of a string
u8 Strlen(const unsigned char *str) __z88dk_fastcall {
    const unsigned char *s;
    for (s = str; *s; ++s);
    return (s - str);
}


// converts an integer to ASCII (Lukás Chmela / GPLv3)
char* Itoa(u16 value, char* result, int base) {    
    int tmp_value;
    char* ptr = result, *ptr1 = result, tmp_char;
    
    if (base < 2 || base > 36) { 
        *result = '\0'; 
        return result; 
    }
    
    do {
        tmp_value = value;
        value /= base;
        *ptr++ = "zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmnopqrstuvwxyz" [35 + (tmp_value - value * base)];
    } while (value);
    
    if (tmp_value < 0) 
        *ptr++ = '-';
    *ptr-- = '\0';
    
    while(ptr1 < ptr) {
        tmp_char = *ptr;
        *ptr--= *ptr1;
        *ptr1++ = tmp_char;
    }
    
    return result;
}


// generates a pause
void Pause(u16 value) __z88dk_fastcall {
    u16 i;
    for(i=0; i < value; i++) {
		__asm
			halt
		__endasm;
	}
}



// every x calls, plays the music and/or FX and reads the keyboard
void Interrupt() {
   static u8 nInt;

   if (++nInt == 6) {
      cpct_scanKeyboard_if();
      nInt = 0;
   }
}


///////////////////////////////////////////////////////////////////////////////////
// GRAPHICS, TILES AND SCREEN MANAGEMENT FUNCTIONS 
///////////////////////////////////////////////////////////////////////////////////

// cleans the screen with the specified color
void ClearScreen() {
	cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(BG_COLOR, BG_COLOR), 16384);
}


// get the tile number of a certain position XY in the current map
u8* GetTileNum(u8 x, u8 y) {
	return UNPACKED_MAP_INI + (y - ORIG_MAP_Y) / 4 * MAP_W + x / 2;	
}


// returns "1" if the coordinates are placed on the background tiles, "0" if they are blockers
u8 OnBackground(u8 x, u8 y) {
	if (*GetTileNum(x+3, y+8) >= TILESET_BLOCKERS) 
		return FALSE;
	return TRUE;
}


// print the map corresponding to the current map number 
void PrintMap() {
	cpct_etm_drawTilemap2x4(MAP_W, MAP_H, 
							cpctm_screenPtr(CPCT_VMEM_START, 0, ORIG_MAP_Y), 
							UNPACKED_MAP_INI);
}


// print a number as a text string
void PrintNumber(u16 num, u8 len, u8 x, u8 y, u8 prevDel) { 
	u8 txt[6];
	u8 zeros;
	u8 pos = 0;
	u8 nAux;

	Itoa(num, txt, 10);    
	zeros = len - Strlen(txt);
	nAux = txt[pos];

	while(nAux != '\0')	{	
		u8* ptr = cpct_getScreenPtr(CPCT_VMEM_START, (zeros + pos) * FNT_W + x, y);
		if (prevDel) 
			cpct_drawSolidBox(ptr, cpct_px2byteM0(BG_COLOR, BG_COLOR), FNT_W, FNT_H); // previous deletion
		cpct_drawSpriteMaskedAlignedTable(g_font[nAux - 48], ptr, FNT_W, FNT_H, g_maskTable);
		nAux = txt[++pos];
	}
}


// prints a character string at XY coordinates
void PrintText(u8 txt[], u8 x, u8 y, u8 prevDel) {
	u8 pos = 0;
	u8 car = txt[pos];

 	while(car != '\0') { // "@" = blank    ";" = -   ">" = !!   "[" = ,
		u8* ptr = cpct_getScreenPtr(CPCT_VMEM_START, (pos * FNT_W) + x, y);
		if (prevDel) 
			cpct_drawSolidBox(ptr, cpct_px2byteM0(BG_COLOR, BG_COLOR), FNT_W, FNT_H); // previous deletion
		cpct_drawSpriteMaskedAlignedTable(g_font[car - 48], ptr, FNT_W, FNT_H, g_maskTable);
		car = txt[++pos];
	}
}


// print a gold frame
void PrintFrame(u8 xIni, u8 yIni, u8 xEnd, u8 yEnd) {
	int i = xIni+3;	
	// horizontal tiles
	while (i < xEnd) {		
		cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yIni), 3, 6, g_maskTable);	
		cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yEnd), 3, 6, g_maskTable);	
		i += 3;
	}	
	// vertical tiles	
	i = yIni+6;
	while (i < yEnd) {		
		cpct_drawSpriteMaskedAlignedTable(g_goldframe_1, cpctm_screenPtr(CPCT_VMEM_START, xIni, i), 3, 6, g_maskTable);	
		cpct_drawSpriteMaskedAlignedTable(g_goldframe_1, cpctm_screenPtr(CPCT_VMEM_START, xEnd, i), 3, 6, g_maskTable);	
		i += 6;
	}	
	// gems	
	// upper left corner
	cpct_drawSpriteMaskedAlignedTable(g_goldframe_0, cpctm_screenPtr(CPCT_VMEM_START, xIni, yIni), 3, 6, g_maskTable);
	// upper right corner
	cpct_drawSpriteMaskedAlignedTable(g_goldframe_0, cpctm_screenPtr(CPCT_VMEM_START, xEnd, yIni), 3, 6, g_maskTable);
	// lower left corner				
	cpct_drawSpriteMaskedAlignedTable(g_goldframe_0, cpctm_screenPtr(CPCT_VMEM_START, xIni, yEnd), 3, 6, g_maskTable);
	// lower right corner				
	cpct_drawSpriteMaskedAlignedTable(g_goldframe_0, cpctm_screenPtr(CPCT_VMEM_START, xEnd, yEnd), 3, 6, g_maskTable);									
}


///////////////////////////////////////////////////////////////////////////////////
// KEYBOARD FUNCTIONS
///////////////////////////////////////////////////////////////////////////////////

// returns the key pressed
cpct_keyID ReturnKeyPressed() {
    u8 i = 10, *keys = cpct_keyboardStatusBuffer + 9;
    u16 keypressed;
    // We wait until a key is pressed
    do { cpct_scanKeyboard(); } while ( ! cpct_isAnyKeyPressed() );
    // We detect which key has been pressed
    do {
        keypressed = *keys ^ 0xFF;
        if (keypressed)
            return (keypressed << 8) + (i - 1); 
        keys--;
    } while(--i);    
	return 0;
}


// wait for the full press of a key
// useful to empty the keyboard buffer
void Wait4Key(cpct_keyID key) {
    do cpct_scanKeyboard_f();
    while(!cpct_isKeyPressed(key));
    do cpct_scanKeyboard_f();
    while(cpct_isKeyPressed(key));
}


// asks for a key and returns the key pressed
cpct_keyID RedefineKey(u8 *info) {
    cpct_keyID key; 
    PrintText(info, 28, 120, 1);       
    key = ReturnKeyPressed();
    Wait4Key(key);
    return key;    
}


///////////////////////////////////////////////////////////////////////////////////
// SCOREBOARD FUNCTIONS
///////////////////////////////////////////////////////////////////////////////////


// print the scoreboard
void InitScoreboard() {
	PrintFrame(0,0,77,24);	
}


///////////////////////////////////////////////////////////////////////////////////
// FUNCTIONS FOR OBJECT MANAGEMENT
///////////////////////////////////////////////////////////////////////////////////

// resets the values ​​related to collecting objects
void ResetObjData(u8 player) __z88dk_fastcall {
	spr[player].objNum_mov = 0; // number of objects
		cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 7, 16), cpct_px2byteM0(BG_COLOR, BG_COLOR), 20, 8);
} 


// the active object is printed at the assigned XY coordinates
void PrintObject(u8 nObj, u8 objX, u8 objY) {
	cpct_drawSpriteMaskedAlignedTable(g_objects[nObj], cpct_getScreenPtr(CPCT_VMEM_START, objX, objY),
									  OBJ_W, OBJ_H, g_maskTable);
}


// a portion of the map is printed at the XY coordinates of the object (to delete it)
void DeleteObject(u8 index) __z88dk_fastcall {
	cpct_etm_drawTileBox2x4(objX[index] / 2, (objY[index] - ORIG_MAP_Y) / 4,
							2 + (objX[index] & 1), 2 + (objY[index] & 3 ? 1 : 0), MAP_W, 
							cpctm_screenPtr(CPCT_VMEM_START, 0, ORIG_MAP_Y), UNPACKED_MAP_INI);	
}



// check if any player has passed over the object
// increase the score and update the scoreboard.
void CheckObject(u8 index) {	
	i8 player = -1;

	if (nObj[index] != -1)	{
		if (SpriteCollision(objX[index], objY[index], &spr[0], 0)) 
      player = 0; // player 1
		// collision with object
		if (player >= 0)	{									
			DeleteObject(index);

			nObj[index] = -1; // object not assigned
		}
	}
}


// are there enemies hiding the object?
u8 ObjectCollision(u8 numObj) __z88dk_fastcall {	
	u8 i=2;	// check sprites 2 to 5	
	while(i<=5) {
		if ((spr[i].x + SPR_W >= objX[numObj] && spr[i].x <= objX[numObj] + OBJ_W) && 
			(spr[i].y + SPR_H >= objY[numObj] && spr[i].y <= objY[numObj] + OBJ_H)) {
			return 1;
		}
		i++;
	}
	return 0;
}


// reprints the object on-screen so it doesn't get erased by moving sprites
// animates the "dust effect" when the object appears and disappears
// animates the "rotation effect" when the coin appears
void ReprintObject() {
	// first object
	if (nObj[0] >= 0 && !ObjectCollision(0)) {  // does not print if hidden by enemies
		switch(ctMainLoop) {
			// "dust effect" 1st frame
			case 0:
			case 344:	
			// "dust effect" 2nd frame
			case 8:
			case 336:	
			
			// erase the dust and print the object
			case 16:	

			// coin animation
			case 24:
			case 56:
			case 88: 
			case 32:
			case 64:
			case 96: 
			case 40:
			case 72:
			case 104: 

			// delete the object
			case 328:	{ DeleteObject(0); }
			// in all other cases print the object
			default:	{ PrintObject(nObj[0], objX[0], objY[0]); }			
		}
	}
	// second object
	if (nObj[1] >= 0 && !ObjectCollision(1)) {
		switch(ctMainLoop) {
			// "dust effect" 1st frame
			case 176:
			case 168:	
			// "dust effect" 2nd frame
			case 184:
			case 160:	
			// delete the dust and print the object
			case 192:	

			// coin animation
			case 200:
			case 232:
			case 264: 
			case 208:
			case 240:
			case 272: 
			case 216:
			case 248:
			case 280: 

			// delete the object
			case 154:	{ DeleteObject(1); }
			// in all other cases print the object
			default:	{ PrintObject(nObj[1], objX[1], objY[1]); }			
		}
	}
}

// check if any player has stepped on a special tile; shop, well, exit door
void CheckActiveTile(u8 player) {	
	u8 currentTile = *GetTileNum(spr[player].x+3, spr[player].y+8);	
	u8 i = 0;
	

	// collision with the well. Do we have objects or coins?
	if (currentTile == TILESET_WELL ) {	
		// it sounds like we dropped something
		// clear P1 or P2 scoreboard
		if (player == 0)
			cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 7, 16), 
							  cpct_px2byteM0(BG_COLOR, BG_COLOR), 20, 8);
		else
			cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 46, 16), 
							  cpct_px2byteM0(BG_COLOR, BG_COLOR), 20, 8);
				
		spr[player].objNum_mov = 0;	// throwing objects
		
	}

}


///////////////////////////////////////////////////////////////////////////////////
// FUNCTIONS FOR SPRITES MANAGEMENT
///////////////////////////////////////////////////////////////////////////////////

// prints the sprite and its mask at the current XY coordinates
void PrintSprite(TSpr *pSpr) __z88dk_fastcall {
	cpct_drawSpriteMaskedAlignedTable(pSpr->frm->spr, 
									  cpct_getScreenPtr(CPCT_VMEM_START, pSpr->x, pSpr->y), 
									  SPR_W, SPR_H, g_maskTable);
}


// print a portion of the map in the coordinates of the sprite (to delete it)
void DeleteSprite(TSpr *pSpr) __z88dk_fastcall {	
	cpct_etm_drawTileBox2x4(pSpr->px / 2, (pSpr->py - ORIG_MAP_Y) / 4, 
							3 + (pSpr->px & 1), 3 + (pSpr->py & 3 ? 1 : 0),	
							MAP_W, cpctm_screenPtr(CPCT_VMEM_START, 0, ORIG_MAP_Y), UNPACKED_MAP_INI);
}


// next frame of the animation sequence
void AssignFrame(TSpr *pSpr, TFrm **anim) {
	u8 animPause = 2;
	if (pSpr->num > 3) animPause = 1; // slow enemies (4 and 5) have no pause in animation
	pSpr->frm = anim[pSpr->nFrm / animPause];	
}


// we assign a frame or sequence of frames to each state
void SelectFrame(TSpr *pSpr) __z88dk_fastcall {
	// player 1
	if(pSpr->ident == SORCERER1) {
		switch(pSpr->status) {
			case S_walkingUp: 		{AssignFrame(&spr[0], animUp_Sorcerer1); break;}
			case S_walkingDown:		{AssignFrame(&spr[0], animDown_Sorcerer1); break;}
			case S_walkingLeft:		{AssignFrame(&spr[0], animLeft_Sorcerer1); break;}
			case S_walkingRight:	{AssignFrame(&spr[0], animRight_Sorcerer1); break;}
			case S_stopped:			{spr[0].frm = &frmSorcerer1[spr[0].dir*2];}		
		}
	}
	// sentinel
	else if(pSpr->ident == SENTINEL) {
		switch(pSpr->dir) {
			case D_up:				{AssignFrame(pSpr, animUp_Sentinel); break;}
			case D_down:			{AssignFrame(pSpr, animDown_Sentinel); break;}
			case D_left:			{AssignFrame(pSpr, animLeft_Sentinel); break;}
			case D_right:			{AssignFrame(pSpr, animRight_Sentinel);}
		}
	}
}



// return "1" or "TRUE" if the coordinates match those of the sprite + the supplied margin
u8 SpriteCollision(u8 x, u8 y, TSpr *pSpr, u8 marginX) {
	u8 marginY = marginX+marginX;	
	if (x+OBJ_W > pSpr->x-marginX && x-marginX < pSpr->x+SPR_W) // check the X coordinate with the sprite		
		if (y+OBJ_H > pSpr->y-marginY && y-marginY < pSpr->y+SPR_H) // check the Y coordinate with the sprite
			return TRUE;	
	return FALSE;
}



///////////////////////////////////////////////////////////////////////////////////
// FUNCTIONS FOR CONTROLLING PLAYERS
///////////////////////////////////////////////////////////////////////////////////

void MoveUp(TSpr *pSpr) __z88dk_fastcall { 
	// move the sprite up if there is space and there are no barriers
	if (pSpr->y > ORIG_MAP_Y && OnBackground(pSpr->x-1, pSpr->y-2)) {
		pSpr->y -= 2;
		if (pSpr->power_maxV > 0 && OnBackground(pSpr->x-1, pSpr->y-2))
			pSpr->y -= 2; // powerUp speed*2
		
		pSpr->dir = D_up;
		pSpr->status = S_walkingUp;
	}
}


void MoveDown(TSpr *pSpr) __z88dk_fastcall {
	// move the sprite down if there is space and there are no barriers
	if (pSpr->y + SPR_H < GLOBAL_MAX_Y && OnBackground(pSpr->x-1, pSpr->y+4)) {
		pSpr->y += 2;
		if (pSpr->power_maxV > 0 && OnBackground(pSpr->x-1, pSpr->y+4))
			pSpr->y += 2; // powerUp speed*2
		
		pSpr->dir = D_down;
		pSpr->status = S_walkingDown;
	}
}


void MoveLeft(TSpr *pSpr) __z88dk_fastcall {
	// move the sprite to the left if there is space and there are no barriers
	if (OnBackground(pSpr->x-3, pSpr->y+1)) {
		pSpr->x--;
		if (pSpr->power_maxV > 0 && OnBackground(pSpr->x-3, pSpr->y+1))
			pSpr->x--; // powerUp speed*2
		
		pSpr->dir = D_left;
		pSpr->status = S_walkingLeft;
	} 
}


void MoveRight(TSpr *pSpr) __z88dk_fastcall { 
	// move the sprite to the right if there is space and there are no barriers
	if (OnBackground(pSpr->x+1, pSpr->y+1)) {
		pSpr->x++;
		if (pSpr->power_maxV > 0 && OnBackground(pSpr->x+1, pSpr->y+1)) 
			pSpr->x++; // powerUp speed*2
		
		pSpr->dir = D_right;
		pSpr->status = S_walkingRight;
	}
}


// prepare the movement
void WalkIn(TSpr *pSpr, u8 dir) {
	pSpr->nFrm = 0;
	pSpr->dir = dir;
	pSpr->status = dir;
	pSpr->print_minV = TRUE; // the sprite must be printed, it will move
}


// stands still
void Stop(TSpr *pSpr) __z88dk_fastcall {
	cpct_scanKeyboard_f(); // check the pressed keys
	if(cpct_isKeyPressed(ctlUp[pSpr->ident]))			WalkIn(pSpr, D_up);
	else if(cpct_isKeyPressed(ctlDown[pSpr->ident]))	WalkIn(pSpr, D_down);
	else if(cpct_isKeyPressed(ctlLeft[pSpr->ident]))	WalkIn(pSpr, D_left);
	else if(cpct_isKeyPressed(ctlRight[pSpr->ident]))	WalkIn(pSpr, D_right);	
	// leave the game
	else if(cpct_isKeyPressed(ctlAbort)) {
		spr[0].lives_speed = 0;
		spr[1].lives_speed = 0;
		GameOver(2);
	}
	// pause
	else if(cpct_isKeyPressed(ctlPause)) {
		Wait4Key(ctlPause);
		while (!cpct_isAnyKeyPressed());
		Wait4Key(ctlPause);
	}

	
}


// assign the frame corresponding to the animation sequence of the sprite
void WalkAnim(TSpr *pSpr, u8 dir) {
	u8 animPause = 2;
	if (pSpr->num > 3) animPause = 1; // slow enemies (4 and 5) have no pause in animation
	pSpr->dir = dir;
	if(++pSpr->nFrm == animPause*2) pSpr->nFrm = 0;
}


// walking
void Walk(TSpr *pSpr) __z88dk_fastcall {
	cpct_scanKeyboard_f(); // check the pressed keys
	// possible movements to the right
	if(cpct_isKeyPressed(ctlRight[pSpr->ident])) {	
		if (cpct_isKeyPressed(ctlUp[pSpr->ident])) 			MoveUp(pSpr);  // diagonal derecha-arriba
		else if(cpct_isKeyPressed(ctlDown[pSpr->ident]))	MoveDown(pSpr); // diagonal derecha-abajo
		MoveRight(pSpr);
		WalkAnim(pSpr, D_right);
	}
	// possible movements to the left
	else if(cpct_isKeyPressed(ctlLeft[pSpr->ident])) {	
		if (cpct_isKeyPressed(ctlUp[pSpr->ident])) 			MoveUp(pSpr); // diagonal izda-arriba
		else if(cpct_isKeyPressed(ctlDown[pSpr->ident]))	MoveDown(pSpr); // diagonal izda-abajo
		MoveLeft(pSpr); 
		WalkAnim(pSpr, D_left);
	}
	// only up
	else if(cpct_isKeyPressed(ctlUp[pSpr->ident])) {
		MoveUp(pSpr); 
		WalkAnim(pSpr, D_up);
	}
	// only down
	else if(cpct_isKeyPressed(ctlDown[pSpr->ident])) {
		MoveDown(pSpr); 
		WalkAnim(pSpr, D_down);
	}
	else
		pSpr->status = S_stopped;
}


// calls the appropriate function based on the status of the main sprites
void RunStatus(TSpr *pSpr) __z88dk_fastcall {
	if (pSpr->status == S_stopped)
		Stop(pSpr);
	else
		Walk(pSpr);	
}


// player logic inside the main loop
void PlayerLoop(TSpr *pSpr) __z88dk_fastcall {
	RunStatus(pSpr); // calls the appropriate function based on the status of the main sprites
	if (pSpr->print_minV) { // does the sprite have to be reprinted?
		SelectFrame(pSpr); // we assign the next frame of the animation to the sprite
		DeleteSprite(pSpr); // delete the sprite
		pSpr->px = pSpr->x; // save the current X coordinate
		pSpr->py = pSpr->y; // save the current Y coordinate
		PrintSprite(pSpr); // paint the sprite in the new XY position
		ctInactivity[pSpr->num] = 0; // on the move
		if (pSpr->status == S_stopped) 
			pSpr->print_minV = FALSE; // if it is stopped it is no longer necessary to continue printing the sprite
	}
	// sometimes reprint, in case they have been deleted between both players
	else if (ctMainLoop % 5 == 0)
		PrintSprite(pSpr);
}	


// values ​​enemy properties based on current map
// coordinate calculation: x=TILED(x)*2  y=(TILED(y)*4)+ORIG_MAP_Y  [ORIG_MAP_Y=32]
// for "linear" movements, the higher SPEED value, the higher speed
// for "chaser" movements, the lower SPEED value, the higher speed
// to avoid flickering assigning enemies 2 and 3 to those with the highest Y and putting a minimum Y
// enemies 2 and 3 are processed in each iteration of the loop (fast)
void changeMap() {
	switch (nMap) {
		// gardens #1
		case 1: {			 
			// player 1 starting position
			spr[0].x = spr[0].px = 6; 
			spr[0].y = spr[0].py = 178;			
			// unzip the map
			cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk0_end);
			// screen title
			lName = "1;1@@GARDENS";
			break;
		}
		// gardens #2
		case 0: {
			// player 1 starting position
			spr[0].x = spr[0].px = 58; 
			spr[0].y = spr[0].py = 178;	
			// unzip the map
			cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk1_end);
			// screen title
			lName = "1;2@@GARDENS";
			break;
		}
	}
}


///////////////////////////////////////////////////////////////////////////////////
// MAIN MENU
///////////////////////////////////////////////////////////////////////////////////

void PrintStartMenu() {
	ClearScreen();

    // "SORCERERS" logo
	cpct_drawSprite(g_logo_0, cpctm_screenPtr(CPCT_VMEM_START, 0, 0), G_LOGO_0_W, G_LOGO_0_H);
	cpct_drawSprite(g_logo_1, cpctm_screenPtr(CPCT_VMEM_START, G_LOGO_0_W, 0), G_LOGO_0_W, G_LOGO_0_H);

	PrintText("1@@1@PLAYER@GAME", 10, 50, 0);

	// Sven y Erik
	cpct_drawSpriteMaskedAlignedTable(g_sorcerer1_06, 
		cpct_getScreenPtr(CPCT_VMEM_START, 6, 187), SPR_W, SPR_H, g_maskTable);

    PrintText("NEKROFAGE", 13, 190, 0);
}


void StartMenu() {
	u8 randSeed = 254;
	u8 page = 0;

	while(1) {
		// get the seed of randomness based on the time it takes to press a key
		// switches between menu and help after 256 cycles
		if (++randSeed == 255) {					
			if (page == 0) 		
        PrintStartMenu();	// page 1; menu
			randSeed = 0;
			if (++page == 8) //12
				page = 0;		
		}
		// get keystrokes from menu options
		cpct_scanKeyboard_f();
		if(cpct_isKeyPressed(Key_1)) { // 1 player
        	break;
    	}
		Pause(3);
	}	
	cpct_setSeed_lcg_u8(randSeed); // set the seed
	ClearScreen();
}


///////////////////////////////////////////////////////////////////////////////////
// MAIN LOOP
///////////////////////////////////////////////////////////////////////////////////

// assigns default values ​​that do not vary between games
void InitValues() {	
	// default key mapping
	// player 1
	ctlUp[0] = Key_Z;
	ctlDown[0] = Key_S;
	ctlLeft[0] = Key_Q;
	ctlRight[0] = Key_D;
	// common
	ctlAbort = Key_X;
	ctlMusic = Key_M;
	ctlPause = Key_H;	

}


// InitGame() and gameOver() common values
void ResetData() {
	ctMainLoop = 0;
	nObj[0] = -1;
	nObj[1] = -1;
	
	// reset player data
	spr[0].dir = D_right; 
	spr[0].status = S_stopped;
	spr[0].print_minV = TRUE; // the first time must be printed on screen
	spr[0].power_maxV = 0;
	ctInactivity[0] = 0;

	changeMap();
	PrintMap();
}


// initialization of some variables
void InitGame() {
	StartMenu(); // run the start menu
	nMap = 0; // initial map number
	lastNMap = 255;
	
	// initial player 1 data
	spr[0].num = 0; // sprite number
	spr[0].ident = SORCERER1; // identity
	spr[0].lives_speed = 3; // lives
	ResetObjData(0);
	
	InitScoreboard();		
  
	ResetData();
}


// Players 1 or 2 lose a life, some variables are reset
void GameOver(u8 player) {
	// if there are lives left
	if (spr[player].lives_speed > 1 && player != 2) {
		spr[player].lives_speed--;
		ResetData();
	}
	else { // prepare a new game
		// puts 0 life on the scoreboard of the losing player
		spr[player].lives_speed = 0;
		// print a GAME OVER in the center of the play area
		cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START,  6, 80), cpct_px2byteM0(4, 4), 34, 60);
		cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 40, 80), cpct_px2byteM0(4, 4), 34, 60);
		PrintFrame(6,80,71,134);
	PrintText("G@A@M@E@@O@V@E@R", 16, 107, 0);
		Pause(500);	
		// wait for a key press
		while (!cpct_isAnyKeyPressed());
		InitGame();
	}
}


void main(void) {
	// disable firmware
	cpct_disableFirmware();
	// initialize sound effects
	// initialize the interrupt manager (keyboard and sound)
	cpct_setInterruptHandler(Interrupt); 
	// activate mode 0; 160 * 200 16 colors
	cpct_setVideoMode(0);
	// assign palette
	cpct_setPalette(g_palette, 16);
	// print border (black)
	cpct_setBorder(g_palette[BG_COLOR]);
	// keep in memory the tiles for the maps (4 * 4)
	cpct_etm_setTileset2x4(g_tileset);	
	// assigns default values ​​that do not vary between games
	InitValues();
	// initial value assignment for each item
	InitGame();

	// main loop
	while (1) {
		// every 8 passes of the loop ...
		if (ctMainLoop % 8 == 0) {
			ReprintObject(); // reprint the active object
			CheckObject(0); // verify collection of object 1
			CheckObject(1); // verify collection of object 2
			if (spr[0].print_minV) 
        CheckActiveTile(0); // check entry into store, door or well of player 1

		}		
		
    cpct_waitVSYNC(); // wait for vertical retrace	

		// shift system to avoid double video buffer
		switch (ctMainLoop % 3) {
			// turn 1
			case 0: {							
				PlayerLoop(&spr[0]); // player 1
				break;
			}
			// turn 2
			case 1:	{			
				break;
			}			
			// turn 3			
			case 2:	{
				break;
			}
		}
		
		if (ctMainLoop == 174) {
			ctMainLoop++;
		}
		else if (ctMainLoop++ == 350) {			
			ctMainLoop = 0; // reset counter
		}		

		// DEBUG					
		//PrintNumber(spr[3].dir, 2, 72, 185, 1); 
	}
}
