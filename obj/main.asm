;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _InitValues
	.globl _StartMenu
	.globl _PrintObjInfo
	.globl _PrintStartMenu
	.globl _EnemyLoop
	.globl _CheckEnemyCollision
	.globl _SetEnemies
	.globl _SetEnemyParams
	.globl _MoveEnemy
	.globl _MakeWizardAnim
	.globl _WizardAnim
	.globl _PrintWizard
	.globl _MoveShot
	.globl _PrintShot
	.globl _DeleteShot
	.globl _MakeShot
	.globl _CheckDuel
	.globl _ExplodePlayerInDuel
	.globl _PlayerLoop
	.globl _RunStatus
	.globl _Walk
	.globl _WalkAnim
	.globl _Stop
	.globl _WalkIn
	.globl _MoveRight
	.globl _MoveLeft
	.globl _MoveDown
	.globl _MoveUp
	.globl _ExplodeSprite
	.globl _PrintExplosion
	.globl _SelectFrame
	.globl _AssignFrame
	.globl _DeleteSprite
	.globl _CheckActiveTile
	.globl _CompareKeys
	.globl _PrintKey
	.globl _AddObjectToScoreboard
	.globl _SetObject
	.globl _ReprintObject
	.globl _ObjectCollision
	.globl _CheckObject
	.globl _PrintObjectInStore
	.globl _DeleteObjectInStore
	.globl _PrintCoin
	.globl _PrintDust
	.globl _DeleteObject
	.globl _ResetObjData
	.globl _RefreshScoreboard
	.globl _InitScoreboard
	.globl _RefreshHighScore
	.globl _RedefineKey
	.globl _Wait4Key
	.globl _ReturnKeyPressed
	.globl _PrintTip
	.globl _PrintEndGame
	.globl _PrintLevelInfo
	.globl _PrintSmallBlueBox
	.globl _PrintFrame
	.globl _PrintText
	.globl _PrintNumber
	.globl _PrintMap
	.globl _OnBackground
	.globl _GetTileNum
	.globl _ClearScreen
	.globl _Interrupt
	.globl _Pause
	.globl _Itoa
	.globl _Strlen
	.globl _Abs
	.globl _cpct_zx7b_decrunch_s
	.globl _cpct_etm_setTileset2x4
	.globl _cpct_etm_drawTileBox2x4
	.globl _cpct_setSeed_lcg_u8
	.globl _cpct_getRandom_lcg_u8
	.globl _cpct_getScreenPtr
	.globl _cpct_setPALColour
	.globl _cpct_setPalette
	.globl _cpct_waitVSYNC
	.globl _cpct_setVideoMode
	.globl _cpct_drawSpriteMaskedAlignedTable
	.globl _cpct_drawSprite
	.globl _cpct_drawSolidBox
	.globl _cpct_px2byteM0
	.globl _cpct_isAnyKeyPressed
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard_if
	.globl _cpct_scanKeyboard_f
	.globl _cpct_scanKeyboard
	.globl _cpct_memset
	.globl _cpct_setInterruptHandler
	.globl _cpct_disableFirmware
	.globl _enum_mov
	.globl _enum_sta
	.globl _enum_dir
	.globl _nPObj
	.globl _objY
	.globl _objX
	.globl _nObj
	.globl _sht
	.globl _spr
	.globl _ctlPause
	.globl _ctlMusic
	.globl _ctlAbort
	.globl _ctlRight
	.globl _ctlLeft
	.globl _ctlDown
	.globl _ctlUp
	.globl _ctMainLoop
	.globl _ctWizardAnim
	.globl _nTip
	.globl _turboMode
	.globl _ctInactivity
	.globl _enemyTurn
	.globl _storeY
	.globl _storeX
	.globl _playerKey
	.globl _doorKey
	.globl _coinScore
	.globl _potScore
	.globl _highScore
	.globl _score
	.globl _TwoPlayers
	.globl _lName
	.globl _lastNMap
	.globl _nMap
	.globl _animRight_Witch
	.globl _animLeft_Witch
	.globl _frmWitch
	.globl _anim_Bat
	.globl _frmBat
	.globl _animRight_Ghost
	.globl _animLeft_Ghost
	.globl _animDown_Ghost
	.globl _animUp_Ghost
	.globl _frmGhost
	.globl _animRight_Knight
	.globl _animLeft_Knight
	.globl _animDown_Knight
	.globl _animUp_Knight
	.globl _frmKnight
	.globl _animRight_Sentinel
	.globl _animLeft_Sentinel
	.globl _animDown_Sentinel
	.globl _animUp_Sentinel
	.globl _frmSentinel
	.globl _animRight_Sorcerer2
	.globl _animLeft_Sorcerer2
	.globl _animDown_Sorcerer2
	.globl _animUp_Sorcerer2
	.globl _frmSorcerer2
	.globl _animRight_Sorcerer1
	.globl _animLeft_Sorcerer1
	.globl _animDown_Sorcerer1
	.globl _animUp_Sorcerer1
	.globl _frmSorcerer1
	.globl _PrintObject
	.globl _PrintSprite
	.globl _SpriteCollision
	.globl _MakeDuel
	.globl _ResetData
	.globl _InitGame
	.globl _GameOver
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_nMap::
	.ds 1
_lastNMap::
	.ds 1
_lName::
	.ds 2
_TwoPlayers::
	.ds 1
_score::
	.ds 4
_highScore::
	.ds 2
_potScore::
	.ds 2
_coinScore::
	.ds 2
_doorKey::
	.ds 5
_playerKey::
	.ds 5
_storeX::
	.ds 1
_storeY::
	.ds 1
_enemyTurn::
	.ds 1
_ctInactivity::
	.ds 2
_turboMode::
	.ds 1
_nTip::
	.ds 1
_ctWizardAnim::
	.ds 1
_ctMainLoop::
	.ds 2
_ctlUp::
	.ds 4
_ctlDown::
	.ds 4
_ctlLeft::
	.ds 4
_ctlRight::
	.ds 4
_ctlAbort::
	.ds 2
_ctlMusic::
	.ds 2
_ctlPause::
	.ds 2
_spr::
	.ds 105
_sht::
	.ds 5
_nObj::
	.ds 2
_objX::
	.ds 2
_objY::
	.ds 2
_nPObj::
	.ds 1
_enum_dir::
	.ds 1
_enum_sta::
	.ds 1
_enum_mov::
	.ds 1
_Interrupt_nInt_1_147:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;src/main.c:329: cpctm_createTransparentMaskTable(g_maskTable, 0x100, M0, 0);
;	---------------------------------
; Function dummy_cpct_transparentMaskTable0M0_container
; ---------------------------------
_dummy_cpct_transparentMaskTable0M0_container::
	.area _g_maskTable_ (ABS) 
	.org 0x100 
	 _g_maskTable::
	.db 0xFF, 0xAA, 0x55, 0x00, 0xAA, 0xAA, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.area _CSEG (REL, CON) 
;src/main.c:366: i16 Abs(i16 number) __z88dk_fastcall {
;	---------------------------------
; Function Abs
; ---------------------------------
_Abs::
;src/main.c:367: if (number < 0)
	bit	7, h
	ret	Z
;src/main.c:368: number *= -1;
	xor	a, a
	sub	a, l
	ld	l, a
	ld	a, #0x00
	sbc	a, h
	ld	h, a
;src/main.c:369: return (number);
	ret
_frmSorcerer1:
	.dw _g_sorcerer1_00
	.dw _g_sorcerer1_01
	.dw _g_sorcerer1_02
	.dw _g_sorcerer1_03
	.dw _g_sorcerer1_04
	.dw _g_sorcerer1_05
	.dw _g_sorcerer1_06
	.dw _g_sorcerer1_07
_animUp_Sorcerer1:
	.dw (_frmSorcerer1 + 0)
	.dw (_frmSorcerer1 + 2)
_animDown_Sorcerer1:
	.dw (_frmSorcerer1 + 4)
	.dw (_frmSorcerer1 + 6)
_animLeft_Sorcerer1:
	.dw (_frmSorcerer1 + 8)
	.dw (_frmSorcerer1 + 10)
_animRight_Sorcerer1:
	.dw (_frmSorcerer1 + 12)
	.dw (_frmSorcerer1 + 14)
_frmSorcerer2:
	.dw _g_sorcerer2_00
	.dw _g_sorcerer2_01
	.dw _g_sorcerer2_02
	.dw _g_sorcerer2_03
	.dw _g_sorcerer2_04
	.dw _g_sorcerer2_05
	.dw _g_sorcerer2_06
	.dw _g_sorcerer2_07
_animUp_Sorcerer2:
	.dw (_frmSorcerer2 + 0)
	.dw (_frmSorcerer2 + 2)
_animDown_Sorcerer2:
	.dw (_frmSorcerer2 + 4)
	.dw (_frmSorcerer2 + 6)
_animLeft_Sorcerer2:
	.dw (_frmSorcerer2 + 8)
	.dw (_frmSorcerer2 + 10)
_animRight_Sorcerer2:
	.dw (_frmSorcerer2 + 12)
	.dw (_frmSorcerer2 + 14)
_frmSentinel:
	.dw _g_sentinel_0
	.dw _g_sentinel_1
	.dw _g_sentinel_2
	.dw _g_sentinel_3
	.dw _g_sentinel_4
	.dw _g_sentinel_5
	.dw _g_sentinel_6
	.dw _g_sentinel_7
_animUp_Sentinel:
	.dw (_frmSentinel + 0)
	.dw (_frmSentinel + 2)
_animDown_Sentinel:
	.dw (_frmSentinel + 4)
	.dw (_frmSentinel + 6)
_animLeft_Sentinel:
	.dw (_frmSentinel + 8)
	.dw (_frmSentinel + 10)
_animRight_Sentinel:
	.dw (_frmSentinel + 12)
	.dw (_frmSentinel + 14)
_frmKnight:
	.dw _g_knight_0
	.dw _g_knight_1
	.dw _g_knight_2
	.dw _g_knight_3
	.dw _g_knight_4
	.dw _g_knight_5
	.dw _g_knight_6
	.dw _g_knight_7
_animUp_Knight:
	.dw (_frmKnight + 0)
	.dw (_frmKnight + 2)
_animDown_Knight:
	.dw (_frmKnight + 4)
	.dw (_frmKnight + 6)
_animLeft_Knight:
	.dw (_frmKnight + 8)
	.dw (_frmKnight + 10)
_animRight_Knight:
	.dw (_frmKnight + 12)
	.dw (_frmKnight + 14)
_frmGhost:
	.dw _g_ghost_0
	.dw _g_ghost_1
	.dw _g_ghost_2
	.dw _g_ghost_3
	.dw _g_ghost_4
	.dw _g_ghost_5
	.dw _g_ghost_6
	.dw _g_ghost_7
_animUp_Ghost:
	.dw (_frmGhost + 0)
	.dw (_frmGhost + 2)
_animDown_Ghost:
	.dw (_frmGhost + 4)
	.dw (_frmGhost + 6)
_animLeft_Ghost:
	.dw (_frmGhost + 8)
	.dw (_frmGhost + 10)
_animRight_Ghost:
	.dw (_frmGhost + 12)
	.dw (_frmGhost + 14)
_frmBat:
	.dw _g_bat_0
	.dw _g_bat_1
_anim_Bat:
	.dw (_frmBat + 0)
	.dw (_frmBat + 2)
_frmWitch:
	.dw _g_witch_0
	.dw _g_witch_1
	.dw _g_witch_2
	.dw _g_witch_3
_animLeft_Witch:
	.dw (_frmWitch + 0)
	.dw (_frmWitch + 2)
_animRight_Witch:
	.dw (_frmWitch + 4)
	.dw (_frmWitch + 6)
;src/main.c:374: u8 Strlen(const unsigned char *str) __z88dk_fastcall {
;	---------------------------------
; Function Strlen
; ---------------------------------
_Strlen::
;src/main.c:376: for (s = str; *s; ++s);
	ld	c,l
	ld	b,h
00103$:
	ld	a, (hl)
	or	a, a
	jr	Z,00101$
	inc	hl
	jr	00103$
00101$:
;src/main.c:377: return (s - str);
	cp	a, a
	sbc	hl, bc
	ret
;src/main.c:382: char* Itoa(u16 value, char* result, int base) {    
;	---------------------------------
; Function Itoa
; ---------------------------------
_Itoa::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
;src/main.c:384: char* ptr = result, *ptr1 = result, tmp_char;
	ld	e,6 (ix)
	ld	d,7 (ix)
	ld	-6 (ix), e
	ld	-5 (ix), d
;src/main.c:386: if (base < 2 || base > 36) { 
	ld	a, 8 (ix)
	sub	a, #0x02
	ld	a, 9 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00101$
	ld	a, #0x24
	cp	a, 8 (ix)
	ld	a, #0x00
	sbc	a, 9 (ix)
	jp	PO, 00140$
	xor	a, #0x80
00140$:
	jp	P, 00115$
00101$:
;src/main.c:387: *result = '\0'; 
	xor	a, a
	ld	(de), a
;src/main.c:388: return result; 
	ex	de,hl
	jp	00112$
;src/main.c:391: do {
00115$:
	ld	-2 (ix), e
	ld	-1 (ix), d
00104$:
;src/main.c:392: tmp_value = value;
	ld	a, 4 (ix)
	ld	-4 (ix), a
	ld	a, 5 (ix)
	ld	-3 (ix), a
;src/main.c:393: value /= base;
	ld	c,8 (ix)
	ld	b,9 (ix)
	push	bc
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__divuint
	pop	af
	pop	af
	ld	4 (ix), l
	ld	5 (ix), h
;src/main.c:394: *ptr++ = "zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmnopqrstuvwxyz" [35 + (tmp_value - value * base)];
	ld	c, -4 (ix)
	ld	e, 4 (ix)
	ld	h, 8 (ix)
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00141$:
	add	hl, hl
	jr	NC,00142$
	add	hl, de
00142$:
	djnz	00141$
	ld	a, c
	sub	a, l
	add	a, #0x23
	ld	c, a
	rla
	sbc	a, a
	ld	b, a
	ld	hl, #___str_0
	add	hl, bc
	ld	c, (hl)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), c
	inc	-2 (ix)
	jr	NZ,00143$
	inc	-1 (ix)
00143$:
;src/main.c:395: } while (value);
	ld	a, 5 (ix)
	or	a,4 (ix)
	jr	NZ,00104$
;src/main.c:397: if (tmp_value < 0) 
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	bit	7, -3 (ix)
	jr	Z,00108$
;src/main.c:398: *ptr++ = '-';
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #0x2d
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	inc	bc
00108$:
;src/main.c:399: *ptr-- = '\0';
	xor	a, a
	ld	(bc), a
	dec	bc
;src/main.c:401: while(ptr1 < ptr) {
	ld	e,-6 (ix)
	ld	d,-5 (ix)
00109$:
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jr	NC,00111$
;src/main.c:402: tmp_char = *ptr;
	ld	a, (bc)
	ld	-7 (ix), a
;src/main.c:403: *ptr--= *ptr1;
	ld	a, (de)
	ld	(bc), a
	dec	bc
;src/main.c:404: *ptr1++ = tmp_char;
	ld	a, -7 (ix)
	ld	(de), a
	inc	de
	jr	00109$
00111$:
;src/main.c:407: return result;
	ld	l,6 (ix)
	ld	h,7 (ix)
00112$:
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmno"
	.ascii "pqrstuvwxyz"
	.db 0x00
;src/main.c:412: void Pause(u16 value) __z88dk_fastcall {
;	---------------------------------
; Function Pause
; ---------------------------------
_Pause::
;src/main.c:414: for(i=0; i < value; i++) {
	ld	bc, #0x0000
00103$:
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	ret	NC
;src/main.c:417: __endasm;
	halt
;src/main.c:414: for(i=0; i < value; i++) {
	inc	bc
	jr	00103$
;src/main.c:424: void Interrupt() {
;	---------------------------------
; Function Interrupt
; ---------------------------------
_Interrupt::
;src/main.c:427: if (++nInt == 6) {
	ld	iy, #_Interrupt_nInt_1_147
	inc	0 (iy)
	ld	a, 0 (iy)
	sub	a, #0x06
	ret	NZ
;src/main.c:428: cpct_scanKeyboard_if();
	call	_cpct_scanKeyboard_if
;src/main.c:429: nInt = 0;
	ld	hl,#_Interrupt_nInt_1_147 + 0
	ld	(hl), #0x00
	ret
;src/main.c:447: void ClearScreen() {
;	---------------------------------
; Function ClearScreen
; ---------------------------------
_ClearScreen::
;src/main.c:448: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(BG_COLOR, BG_COLOR), 16384);
	ld	hl, #0x0101
	push	hl
	call	_cpct_px2byteM0
	ld	b, l
	ld	hl, #0x4000
	push	hl
	push	bc
	inc	sp
	ld	h, #0xc0
	push	hl
	call	_cpct_memset
	ret
;src/main.c:453: u8* GetTileNum(u8 x, u8 y) {
;	---------------------------------
; Function GetTileNum
; ---------------------------------
_GetTileNum::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:454: return UNPACKED_MAP_INI + (y - ORIG_MAP_Y) / 4 * MAP_W + x / 2;	
	ld	c, 5 (ix)
	ld	b, #0x00
	ld	a, c
	add	a, #0xe0
	ld	e, a
	ld	a, b
	adc	a, #0xff
	ld	d, a
	ld	l, e
	ld	h, d
	bit	7, d
	jr	Z,00103$
	ld	hl, #0xffe3
	add	hl, bc
00103$:
	sra	h
	rr	l
	sra	h
	rr	l
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, #0x0f71
	add	hl, bc
	ld	c, 4 (ix)
	srl	c
	ld	e,c
	ld	d,#0x00
	add	hl, de
	pop	ix
	ret
;src/main.c:459: u8 OnBackground(u8 x, u8 y) {
;	---------------------------------
; Function OnBackground
; ---------------------------------
_OnBackground::
;src/main.c:460: if (*GetTileNum(x+3, y+8) >= TILESET_BLOCKERS) 
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	add	a, #0x08
	ld	b, a
	ld	hl, #2+0
	add	hl, sp
	ld	d, (hl)
	inc	d
	inc	d
	inc	d
	ld	c, d
	push	bc
	call	_GetTileNum
	pop	af
	ld	a, (hl)
	sub	a, #0x2d
	jr	C,00102$
;src/main.c:461: return FALSE;
	ld	l, #0x00
	ret
00102$:
;src/main.c:462: return TRUE;
	ld	l, #0x01
	ret
;src/main.c:467: void PrintMap() {
;	---------------------------------
; Function PrintMap
; ---------------------------------
_PrintMap::
;src/main.c:468: cpct_etm_drawTilemap2x4(MAP_W, MAP_H, 
	ld	hl, #0x0f71
	push	hl
	ld	hl, #0xc140
	push	hl
	ld	hl, #0x282a
	push	hl
	ld	l, #0x00
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_cpct_etm_drawTileBox2x4
	ret
;src/main.c:475: void PrintNumber(u16 num, u8 len, u8 x, u8 y, u8 prevDel) { 
;	---------------------------------
; Function PrintNumber
; ---------------------------------
_PrintNumber::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-11
	add	hl, sp
	ld	sp, hl
;src/main.c:481: Itoa(num, txt, 10);    
	ld	hl, #0x0003
	add	hl, sp
	ld	c, l
	ld	b, h
	ld	e, c
	ld	d, b
	push	bc
	ld	hl, #0x000a
	push	hl
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_Itoa
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	pop	bc
;src/main.c:482: zeros = len - Strlen(txt);
	ld	l, c
	ld	h, b
	push	bc
	call	_Strlen
	pop	bc
	ld	a, 6 (ix)
	sub	a, l
	ld	-9 (ix), a
;src/main.c:483: nAux = txt[pos];
	ld	a, (bc)
	ld	-11 (ix), a
;src/main.c:485: while(nAux != '\0')	{	
	ld	-10 (ix), #0x00
00103$:
	ld	a, -11 (ix)
	or	a, a
	jp	Z, 00106$
;src/main.c:486: u8* ptr = cpct_getScreenPtr(CPCT_VMEM_START, (zeros + pos) * FNT_W + x, y);
	ld	a, -9 (ix)
	add	a, -10 (ix)
	ld	e, a
	add	a, a
	add	a, e
	ld	e,a
	add	a, 7 (ix)
	ld	d, a
	push	bc
	ld	a, 8 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
;src/main.c:488: cpct_drawSolidBox(ptr, cpct_px2byteM0(BG_COLOR, BG_COLOR), FNT_W, FNT_H); // previous deletion
	ld	-2 (ix), l
	ld	-1 (ix), h
;src/main.c:487: if (prevDel) 
	ld	a, 9 (ix)
	or	a, a
	jr	Z,00102$
;src/main.c:488: cpct_drawSolidBox(ptr, cpct_px2byteM0(BG_COLOR, BG_COLOR), FNT_W, FNT_H); // previous deletion
	push	bc
	ld	hl, #0x0101
	push	hl
	call	_cpct_px2byteM0
	pop	bc
	ld	h, #0x00
	push	bc
	ld	de, #0x0803
	push	de
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_cpct_drawSolidBox
	pop	bc
00102$:
;src/main.c:489: cpct_drawSpriteMaskedAlignedTable(g_font[nAux - 48], ptr, FNT_W, FNT_H, g_maskTable);
	ld	a, -11 (ix)
	ld	d, #0x00
	add	a, #0xd0
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #_g_font
	add	hl, de
	push	bc
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0803
	push	de
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	push	de
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
	pop	bc
;src/main.c:490: nAux = txt[++pos];
	inc	-10 (ix)
	ld	l,-10 (ix)
	ld	h,#0x00
	add	hl, bc
	ld	a, (hl)
	ld	-11 (ix), a
	jp	00103$
00106$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:496: void PrintText(u8 txt[], u8 x, u8 y, u8 prevDel) {
;	---------------------------------
; Function PrintText
; ---------------------------------
_PrintText::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/main.c:498: u8 car = txt[pos];
	ld	c,4 (ix)
	ld	b,5 (ix)
	ld	a, (bc)
	ld	-3 (ix), a
;src/main.c:500: while(car != '\0') { // "@" = blank    ";" = -   ">" = !!   "[" = ,
	ld	-4 (ix), #0x00
00103$:
	ld	a, -3 (ix)
	or	a, a
	jp	Z, 00106$
;src/main.c:501: u8* ptr = cpct_getScreenPtr(CPCT_VMEM_START, (pos * FNT_W) + x, y);
	ld	l, -4 (ix)
	ld	e, l
	add	hl, hl
	add	hl, de
	ld	a, l
	add	a, 6 (ix)
	ld	d, a
	push	bc
	ld	a, 7 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
;src/main.c:503: cpct_drawSolidBox(ptr, cpct_px2byteM0(BG_COLOR, BG_COLOR), FNT_W, FNT_H); // previous deletion
	ld	-2 (ix), l
	ld	-1 (ix), h
;src/main.c:502: if (prevDel) 
	ld	a, 8 (ix)
	or	a, a
	jr	Z,00102$
;src/main.c:503: cpct_drawSolidBox(ptr, cpct_px2byteM0(BG_COLOR, BG_COLOR), FNT_W, FNT_H); // previous deletion
	push	bc
	ld	hl, #0x0101
	push	hl
	call	_cpct_px2byteM0
	pop	bc
	ld	h, #0x00
	push	bc
	ld	de, #0x0803
	push	de
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_cpct_drawSolidBox
	pop	bc
00102$:
;src/main.c:504: cpct_drawSpriteMaskedAlignedTable(g_font[car - 48], ptr, FNT_W, FNT_H, g_maskTable);
	ld	a, -3 (ix)
	ld	d, #0x00
	add	a, #0xd0
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #_g_font
	add	hl, de
	push	bc
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0803
	push	de
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	push	de
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
	pop	bc
;src/main.c:505: car = txt[++pos];
	inc	-4 (ix)
	ld	l,-4 (ix)
	ld	h,#0x00
	add	hl, bc
	ld	a, (hl)
	ld	-3 (ix), a
	jp	00103$
00106$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:511: void PrintFrame(u8 xIni, u8 yIni, u8 xEnd, u8 yEnd) {
;	---------------------------------
; Function PrintFrame
; ---------------------------------
_PrintFrame::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-12
	add	hl, sp
	ld	sp, hl
;src/main.c:512: int i = xIni+3;	
	ld	c, 4 (ix)
	ld	b, #0x00
	inc	bc
	inc	bc
	inc	bc
	ld	-2 (ix), c
	ld	-1 (ix), b
;src/main.c:514: while (i < xEnd) {		
	ld	a, 5 (ix)
	rrca
	rrca
	rrca
	and	a, #0x1f
	ld	-3 (ix), a
	ld	a, 5 (ix)
	and	a, #0x07
	ld	-4 (ix), a
	ld	a, 7 (ix)
	rrca
	rrca
	rrca
	and	a, #0x1f
	ld	-5 (ix), a
	ld	a, 7 (ix)
	and	a, #0x07
	ld	-6 (ix), a
00101$:
	ld	a, 6 (ix)
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
;src/main.c:515: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yIni), 3, 6, g_maskTable);	
	ld	l, -3 (ix)
	ld	h, #0x00
	ld	e, -4 (ix)
	ld	d, #0x00
;src/main.c:516: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yEnd), 3, 6, g_maskTable);	
	ld	c, -5 (ix)
	ld	b, #0x00
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	-9 (ix), #0x00
;src/main.c:515: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yIni), 3, 6, g_maskTable);	
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	pop	de
	ex	(sp), hl
	ld	a, e
	rlca
	rlca
	rlca
	and	a, #0xf8
	ld	d, a
	ld	e, #0x00
;src/main.c:516: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yEnd), 3, 6, g_maskTable);	
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a, -10 (ix)
	rlca
	rlca
	rlca
	and	a, #0xf8
	ld	b, a
	ld	c, #0x00
;src/main.c:515: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yIni), 3, 6, g_maskTable);	
	ld	a, -12 (ix)
	add	a, #0x00
	ld	-12 (ix), a
	ld	a, -11 (ix)
	adc	a, #0xc0
	ld	-11 (ix), a
;src/main.c:516: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yEnd), 3, 6, g_maskTable);	
	push	de
	ld	de, #0xc000
	add	hl, de
	pop	de
;src/main.c:515: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yIni), 3, 6, g_maskTable);	
	ld	a, -12 (ix)
	add	a, e
	ld	-12 (ix), a
	ld	a, -11 (ix)
	adc	a, d
	ld	-11 (ix), a
;src/main.c:516: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yEnd), 3, 6, g_maskTable);	
	add	hl,bc
	ld	-10 (ix), l
	ld	-9 (ix), h
;src/main.c:514: while (i < xEnd) {		
	ld	a, -2 (ix)
	sub	a, -8 (ix)
	ld	a, -1 (ix)
	sbc	a, -7 (ix)
	jp	PO, 00127$
	xor	a, #0x80
00127$:
	jp	P, 00103$
;src/main.c:515: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yIni), 3, 6, g_maskTable);	
	ld	bc, #_g_maskTable
	ld	a, -12 (ix)
	add	a, -2 (ix)
	ld	e, a
	ld	a, -11 (ix)
	adc	a, -1 (ix)
	ld	d, a
	push	bc
	ld	hl, #0x0603
	push	hl
	push	de
	ld	hl, #_g_goldframe_2
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:516: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yEnd), 3, 6, g_maskTable);	
	ld	a, -10 (ix)
	add	a, -2 (ix)
	ld	c, a
	ld	a, -9 (ix)
	adc	a, -1 (ix)
	ld	b, a
	ld	hl, #_g_maskTable
	push	hl
	ld	hl, #0x0603
	push	hl
	push	bc
	ld	hl, #_g_goldframe_2
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:517: i += 3;
	ld	a, -2 (ix)
	add	a, #0x03
	ld	-2 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	jp	00101$
00103$:
;src/main.c:520: i = yIni+6;
	ld	c, 5 (ix)
	ld	b, #0x00
	ld	hl, #0x0006
	add	hl,bc
	ld	-8 (ix), l
	ld	-7 (ix), h
;src/main.c:521: while (i < yEnd) {		
00104$:
	ld	c, 7 (ix)
	ld	b, #0x00
	ld	a, -8 (ix)
	sub	a, c
	ld	a, -7 (ix)
	sbc	a, b
	jp	PO, 00128$
	xor	a, #0x80
00128$:
	jp	P, 00106$
;src/main.c:522: cpct_drawSpriteMaskedAlignedTable(g_goldframe_1, cpctm_screenPtr(CPCT_VMEM_START, xIni, i), 3, 6, g_maskTable);	
	ld	a, -8 (ix)
	ld	-2 (ix), a
	ld	a, -7 (ix)
	ld	-1 (ix), a
	sra	-1 (ix)
	rr	-2 (ix)
	sra	-1 (ix)
	rr	-2 (ix)
	sra	-1 (ix)
	rr	-2 (ix)
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, #0xc000
	add	hl, bc
	ld	a, -8 (ix)
	and	a, #0x07
	rlca
	rlca
	rlca
	and	a, #0xf8
	ld	b, a
	ld	c, #0x00
	add	hl,bc
	ex	de,hl
	ld	l,4 (ix)
	ld	h,#0x00
	add	hl, de
	push	de
	ld	bc, #_g_maskTable
	push	bc
	ld	bc, #0x0603
	push	bc
	push	hl
	ld	hl, #_g_goldframe_1
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
	pop	de
;src/main.c:523: cpct_drawSpriteMaskedAlignedTable(g_goldframe_1, cpctm_screenPtr(CPCT_VMEM_START, xEnd, i), 3, 6, g_maskTable);	
	ld	bc, #_g_maskTable
	ld	l,6 (ix)
	ld	h,#0x00
	add	hl, de
	push	bc
	ld	bc, #0x0603
	push	bc
	push	hl
	ld	hl, #_g_goldframe_1
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:524: i += 6;
	ld	a, -8 (ix)
	add	a, #0x06
	ld	-8 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
	jp	00104$
00106$:
;src/main.c:528: cpct_drawSpriteMaskedAlignedTable(g_goldframe_0, cpctm_screenPtr(CPCT_VMEM_START, xIni, yIni), 3, 6, g_maskTable);
	ld	a, -12 (ix)
	add	a, 4 (ix)
	ld	c, a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	b, a
	ld	hl, #_g_maskTable
	push	hl
	ld	hl, #0x0603
	push	hl
	push	bc
	ld	hl, #_g_goldframe_0
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:530: cpct_drawSpriteMaskedAlignedTable(g_goldframe_0, cpctm_screenPtr(CPCT_VMEM_START, xEnd, yIni), 3, 6, g_maskTable);
	ld	a, -12 (ix)
	add	a, 6 (ix)
	ld	c, a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	b, a
	ld	hl, #_g_maskTable
	push	hl
	ld	hl, #0x0603
	push	hl
	push	bc
	ld	hl, #_g_goldframe_0
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:532: cpct_drawSpriteMaskedAlignedTable(g_goldframe_0, cpctm_screenPtr(CPCT_VMEM_START, xIni, yEnd), 3, 6, g_maskTable);
	ld	a, -10 (ix)
	add	a, 4 (ix)
	ld	c, a
	ld	a, -9 (ix)
	adc	a, #0x00
	ld	b, a
	ld	hl, #_g_maskTable
	push	hl
	ld	hl, #0x0603
	push	hl
	push	bc
	ld	hl, #_g_goldframe_0
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:534: cpct_drawSpriteMaskedAlignedTable(g_goldframe_0, cpctm_screenPtr(CPCT_VMEM_START, xEnd, yEnd), 3, 6, g_maskTable);									
	ld	a, -10 (ix)
	add	a, 6 (ix)
	ld	c, a
	ld	a, -9 (ix)
	adc	a, #0x00
	ld	b, a
	ld	hl, #_g_maskTable
	push	hl
	ld	hl, #0x0603
	push	hl
	push	bc
	ld	hl, #_g_goldframe_0
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
	ld	sp, ix
	pop	ix
	ret
;src/main.c:550: void PrintSmallBlueBox() {
;	---------------------------------
; Function PrintSmallBlueBox
; ---------------------------------
_PrintSmallBlueBox::
;src/main.c:551: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START,  6, 80), cpct_px2byteM0(4, 4), 34, 60);
	ld	hl, #0x0404
	push	hl
	call	_cpct_px2byteM0
	ld	h, #0x00
	ld	bc, #0x3c22
	push	bc
	push	hl
	ld	hl, #0xc326
	push	hl
	call	_cpct_drawSolidBox
;src/main.c:552: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 40, 80), cpct_px2byteM0(4, 4), 34, 60);
	ld	hl, #0x0404
	push	hl
	call	_cpct_px2byteM0
	ld	h, #0x00
	ld	bc, #0x3c22
	push	bc
	push	hl
	ld	hl, #0xc348
	push	hl
	call	_cpct_drawSolidBox
;src/main.c:553: PrintFrame(6,80,71,134);
	ld	hl, #0x8647
	push	hl
	ld	hl, #0x5006
	push	hl
	call	_PrintFrame
	pop	af
	pop	af
	ret
;src/main.c:558: void PrintLevelInfo() {
;	---------------------------------
; Function PrintLevelInfo
; ---------------------------------
_PrintLevelInfo::
;src/main.c:559: PrintSmallBlueBox();	
	call	_PrintSmallBlueBox
;src/main.c:561: if (TwoPlayers) {
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jr	Z,00102$
;src/main.c:562: PrintText("LEVEL", 13, 95, 0);
	ld	hl, #0x005f
	push	hl
	ld	a, #0x0d
	push	af
	inc	sp
	ld	hl, #___str_1
	push	hl
	call	_PrintText
	pop	af
;src/main.c:563: PrintText(lName, 31, 95, 0);
	inc	sp
	ld	hl,#0x005f
	ex	(sp),hl
	ld	a, #0x1f
	push	af
	inc	sp
	ld	hl, (_lName)
	push	hl
	call	_PrintText
	pop	af
;src/main.c:564: PrintText("HIGH@SCORE:", 16, 118, 0);
	inc	sp
	ld	hl,#0x0076
	ex	(sp),hl
	ld	a, #0x10
	push	af
	inc	sp
	ld	hl, #___str_2
	push	hl
	call	_PrintText
	pop	af
;src/main.c:565: PrintNumber(highScore, 4, 52, 118, 0);
	inc	sp
	ld	hl,#0x0076
	ex	(sp),hl
	ld	hl, #0x3404
	push	hl
	ld	hl, (_highScore)
	push	hl
	call	_PrintNumber
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	jr	00103$
00102$:
;src/main.c:568: PrintText("LEVEL", 13, 107, 0);
	ld	hl, #0x006b
	push	hl
	ld	a, #0x0d
	push	af
	inc	sp
	ld	hl, #___str_1
	push	hl
	call	_PrintText
	pop	af
;src/main.c:569: PrintText(lName, 31, 107, 0);
	inc	sp
	ld	hl,#0x006b
	ex	(sp),hl
	ld	a, #0x1f
	push	af
	inc	sp
	ld	hl, (_lName)
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
00103$:
;src/main.c:572: Pause(1150);
	ld	hl, #0x047e
	jp  _Pause
___str_1:
	.ascii "LEVEL"
	.db 0x00
___str_2:
	.ascii "HIGH@SCORE:"
	.db 0x00
;src/main.c:576: void PrintEndGame(u8 player) __z88dk_fastcall {
;	---------------------------------
; Function PrintEndGame
; ---------------------------------
_PrintEndGame::
	dec	sp
	ld	iy, #0
	add	iy, sp
	ld	0 (iy), l
;src/main.c:578: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 5, 40), cpct_px2byteM0(4, 4), 35, 144);
	ld	hl, #0x0404
	push	hl
	call	_cpct_px2byteM0
	ld	h, #0x00
	ld	bc, #0x9023
	push	bc
	push	hl
	ld	hl, #0xc195
	push	hl
	call	_cpct_drawSolidBox
;src/main.c:579: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 40, 40), cpct_px2byteM0(4, 4), 35, 144);	
	ld	hl, #0x0404
	push	hl
	call	_cpct_px2byteM0
	ld	h, #0x00
	ld	bc, #0x9023
	push	bc
	push	hl
	ld	hl, #0xc1b8
	push	hl
	call	_cpct_drawSolidBox
;src/main.c:580: PrintFrame(5,40,72,178);
	ld	hl, #0xb248
	push	hl
	ld	hl, #0x2805
	push	hl
	call	_PrintFrame
	pop	af
;src/main.c:582: PrintText("CONGRATULATIONS", 12, 60, 0);
	ld	hl, #0x003c
	ex	(sp),hl
	ld	a, #0x0c
	push	af
	inc	sp
	ld	hl, #___str_3
	push	hl
	call	_PrintText
	pop	af
;src/main.c:583: PrintText("PLAYER@@>", 12, 70, 0);
	inc	sp
	ld	hl,#0x0046
	ex	(sp),hl
	ld	a, #0x0c
	push	af
	inc	sp
	ld	hl, #___str_4
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
;src/main.c:584: PrintNumber(++player, 1, 33, 70, 0);
	ld	hl, #0+0
	add	hl, sp
	ld	c, (hl)
	inc	c
	ld	b, #0x00
	ld	hl, #0x0046
	push	hl
	ld	hl, #0x2101
	push	hl
	push	bc
	call	_PrintNumber
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
;src/main.c:585: PrintText("YOU@FOUND@YOUR", 12, 90, 0);
	ld	hl, #0x005a
	push	hl
	ld	a, #0x0c
	push	af
	inc	sp
	ld	hl, #___str_5
	push	hl
	call	_PrintText
	pop	af
;src/main.c:586: PrintText("FATHERS@SPELL@BOOK", 12, 100, 0);
	inc	sp
	ld	hl,#0x0064
	ex	(sp),hl
	ld	a, #0x0c
	push	af
	inc	sp
	ld	hl, #___str_6
	push	hl
	call	_PrintText
	pop	af
;src/main.c:587: PrintText("NOW@YOUR@POWER@WILL", 12, 120, 0);
	inc	sp
	ld	hl,#0x0078
	ex	(sp),hl
	ld	a, #0x0c
	push	af
	inc	sp
	ld	hl, #___str_7
	push	hl
	call	_PrintText
	pop	af
;src/main.c:588: PrintText("BE@UNSURPASSED", 12, 130, 0);
	inc	sp
	ld	hl,#0x0082
	ex	(sp),hl
	ld	a, #0x0c
	push	af
	inc	sp
	ld	hl, #___str_8
	push	hl
	call	_PrintText
	pop	af
;src/main.c:589: PrintText(";THANKS@FOR@PLAYING;", 10, 160, 0);	
	inc	sp
	ld	hl,#0x00a0
	ex	(sp),hl
	ld	a, #0x0a
	push	af
	inc	sp
	ld	hl, #___str_9
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
;src/main.c:591: Pause(1000);
	ld	hl, #0x03e8
	call	_Pause
;src/main.c:592: while (!cpct_isAnyKeyPressed()); // wait for a key press
00101$:
	call	_cpct_isAnyKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00101$
;src/main.c:593: InitGame();
	call	_InitGame
	inc	sp
	ret
___str_3:
	.ascii "CONGRATULATIONS"
	.db 0x00
___str_4:
	.ascii "PLAYER@@>"
	.db 0x00
___str_5:
	.ascii "YOU@FOUND@YOUR"
	.db 0x00
___str_6:
	.ascii "FATHERS@SPELL@BOOK"
	.db 0x00
___str_7:
	.ascii "NOW@YOUR@POWER@WILL"
	.db 0x00
___str_8:
	.ascii "BE@UNSURPASSED"
	.db 0x00
___str_9:
	.ascii ";THANKS@FOR@PLAYING;"
	.db 0x00
;src/main.c:598: void PrintTip() {
;	---------------------------------
; Function PrintTip
; ---------------------------------
_PrintTip::
;src/main.c:599: PrintSprite(&spr[0]);
	ld	hl, #_spr
	call	_PrintSprite
;src/main.c:600: PrintSmallBlueBox();
	call	_PrintSmallBlueBox
;src/main.c:601: switch (nTip) {
	ld	iy, #_nTip
	ld	a, 0 (iy)
	or	a, a
	jr	Z,00101$
	ld	a, 0 (iy)
	dec	a
	jr	Z,00102$
	ld	a, 0 (iy)
	sub	a, #0x02
	jr	Z,00103$
	ld	a, 0 (iy)
	sub	a, #0x03
	jp	Z,00104$
	jp	00105$
;src/main.c:602: case 0: {
00101$:
;src/main.c:603: PrintText("TIP:@TAKE@THE@EXACT", 11, 95, 0);
	ld	hl, #0x005f
	push	hl
	ld	a, #0x0b
	push	af
	inc	sp
	ld	hl, #___str_10
	push	hl
	call	_PrintText
	pop	af
;src/main.c:604: PrintText("COINS@TO@BUY@THE", 16, 105, 0);
	inc	sp
	ld	hl,#0x0069
	ex	(sp),hl
	ld	a, #0x10
	push	af
	inc	sp
	ld	hl, #___str_11
	push	hl
	call	_PrintText
	pop	af
;src/main.c:605: PrintText("REQUIRED@INGREDIENT", 11, 115, 0);
	inc	sp
	ld	hl,#0x0073
	ex	(sp),hl
	ld	a, #0x0b
	push	af
	inc	sp
	ld	hl, #___str_12
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
;src/main.c:606: break;
	jp	00105$
;src/main.c:608: case 1: {
00102$:
;src/main.c:609: PrintText("TIP:@GO@TO@THE@SHOP", 11, 95, 0);
	ld	hl, #0x005f
	push	hl
	ld	a, #0x0b
	push	af
	inc	sp
	ld	hl, #___str_13
	push	hl
	call	_PrintText
	pop	af
;src/main.c:610: PrintText("WHEN@YOU@CAN@GET@THE", 10, 105, 0);
	inc	sp
	ld	hl,#0x0069
	ex	(sp),hl
	ld	a, #0x0a
	push	af
	inc	sp
	ld	hl, #___str_14
	push	hl
	call	_PrintText
	pop	af
;src/main.c:611: PrintText("INGREDIENT@YOU@NEED", 11, 115, 0);
	inc	sp
	ld	hl,#0x0073
	ex	(sp),hl
	ld	a, #0x0b
	push	af
	inc	sp
	ld	hl, #___str_15
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
;src/main.c:612: break;
	jr	00105$
;src/main.c:614: case 2: {
00103$:
;src/main.c:615: PrintText("TIP:@USE@THE@WELL", 14, 95, 0);
	ld	hl, #0x005f
	push	hl
	ld	a, #0x0e
	push	af
	inc	sp
	ld	hl, #___str_16
	push	hl
	call	_PrintText
	pop	af
;src/main.c:616: PrintText("WHEN@YOU@TAKE@MORE", 13, 105, 0);
	inc	sp
	ld	hl,#0x0069
	ex	(sp),hl
	ld	a, #0x0d
	push	af
	inc	sp
	ld	hl, #___str_17
	push	hl
	call	_PrintText
	pop	af
;src/main.c:617: PrintText("COINS@THAN@YOU@NEED", 11, 115, 0);
	inc	sp
	ld	hl,#0x0073
	ex	(sp),hl
	ld	a, #0x0b
	push	af
	inc	sp
	ld	hl, #___str_18
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
;src/main.c:618: break;
	jr	00105$
;src/main.c:620: case 3: {
00104$:
;src/main.c:621: PrintText("TIP:@GO@TO@THE@EXIT", 11, 95, 0);
	ld	hl, #0x005f
	push	hl
	ld	a, #0x0b
	push	af
	inc	sp
	ld	hl, #___str_19
	push	hl
	call	_PrintText
	pop	af
;src/main.c:622: PrintText("DOOR@WHEN@YOU@HAVE", 13, 105, 0);
	inc	sp
	ld	hl,#0x0069
	ex	(sp),hl
	ld	a, #0x0d
	push	af
	inc	sp
	ld	hl, #___str_20
	push	hl
	call	_PrintText
	pop	af
;src/main.c:623: PrintText("THE@RIGHT@POTION", 15, 115, 0);
	inc	sp
	ld	hl,#0x0073
	ex	(sp),hl
	ld	a, #0x0f
	push	af
	inc	sp
	ld	hl, #___str_21
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
;src/main.c:625: }
00105$:
;src/main.c:626: Pause(400);
	ld	hl, #0x0190
	call	_Pause
;src/main.c:627: while (!cpct_isAnyKeyPressed()); // wait for a key press
00106$:
	call	_cpct_isAnyKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00106$
;src/main.c:628: nTip++; // next message
	ld	hl, #_nTip+0
	inc	(hl)
;src/main.c:629: PrintMap();
	jp  _PrintMap
___str_10:
	.ascii "TIP:@TAKE@THE@EXACT"
	.db 0x00
___str_11:
	.ascii "COINS@TO@BUY@THE"
	.db 0x00
___str_12:
	.ascii "REQUIRED@INGREDIENT"
	.db 0x00
___str_13:
	.ascii "TIP:@GO@TO@THE@SHOP"
	.db 0x00
___str_14:
	.ascii "WHEN@YOU@CAN@GET@THE"
	.db 0x00
___str_15:
	.ascii "INGREDIENT@YOU@NEED"
	.db 0x00
___str_16:
	.ascii "TIP:@USE@THE@WELL"
	.db 0x00
___str_17:
	.ascii "WHEN@YOU@TAKE@MORE"
	.db 0x00
___str_18:
	.ascii "COINS@THAN@YOU@NEED"
	.db 0x00
___str_19:
	.ascii "TIP:@GO@TO@THE@EXIT"
	.db 0x00
___str_20:
	.ascii "DOOR@WHEN@YOU@HAVE"
	.db 0x00
___str_21:
	.ascii "THE@RIGHT@POTION"
	.db 0x00
;src/main.c:646: cpct_keyID ReturnKeyPressed() {
;	---------------------------------
; Function ReturnKeyPressed
; ---------------------------------
_ReturnKeyPressed::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/main.c:647: u8 i = 10, *keys = cpct_keyboardStatusBuffer + 9;
	ld	c, #0x0a
;src/main.c:650: do { cpct_scanKeyboard(); } while ( ! cpct_isAnyKeyPressed() );
00101$:
	push	bc
	call	_cpct_scanKeyboard
	call	_cpct_isAnyKeyPressed
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00101$
;src/main.c:652: do {
	ld	de, #(_cpct_keyboardStatusBuffer + 0x0009)
	ld	b, #0x0a
00106$:
;src/main.c:653: keypressed = *keys ^ 0xFF;
	ld	a, (de)
	xor	a, #0xff
	ld	l, a
	ld	h, #0x00
	inc	sp
	inc	sp
	push	hl
;src/main.c:654: if (keypressed)
	ld	a, h
	or	a,l
	jr	Z,00105$
;src/main.c:655: return (keypressed << 8) + (i - 1); 
	ld	h, -2 (ix)
	ld	l, #0x00
	ld	b, #0x00
	dec	bc
	add	hl, bc
	jr	00109$
00105$:
;src/main.c:656: keys--;
	dec	de
;src/main.c:657: } while(--i);    
	dec	b
	ld	a,b
	ld	c,a
	or	a, a
	jr	NZ,00106$
;src/main.c:658: return 0;
	ld	hl, #0x0000
00109$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:664: void Wait4Key(cpct_keyID key) {
;	---------------------------------
; Function Wait4Key
; ---------------------------------
_Wait4Key::
;src/main.c:665: do cpct_scanKeyboard_f();
00101$:
	call	_cpct_scanKeyboard_f
;src/main.c:666: while(!cpct_isKeyPressed(key));
	pop	bc
	pop	hl
	push	hl
	push	bc
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00101$
;src/main.c:667: do cpct_scanKeyboard_f();
00104$:
	call	_cpct_scanKeyboard_f
;src/main.c:668: while(cpct_isKeyPressed(key));
	pop	bc
	pop	hl
	push	hl
	push	bc
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	NZ,00104$
	ret
;src/main.c:673: cpct_keyID RedefineKey(u8 *info) {
;	---------------------------------
; Function RedefineKey
; ---------------------------------
_RedefineKey::
;src/main.c:675: PrintText(info, 28, 120, 1);       
	ld	hl, #0x0178
	push	hl
	ld	a, #0x1c
	push	af
	inc	sp
	ld	hl, #5
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_PrintText
	pop	af
	pop	af
	inc	sp
;src/main.c:676: key = ReturnKeyPressed();
	call	_ReturnKeyPressed
;src/main.c:677: Wait4Key(key);
	push	hl
	push	hl
	call	_Wait4Key
	pop	af
	pop	hl
;src/main.c:678: return key;    
	ret
;src/main.c:695: void RefreshHighScore(u8 player) __z88dk_fastcall {
;	---------------------------------
; Function RefreshHighScore
; ---------------------------------
_RefreshHighScore::
	ld	e, l
;src/main.c:696: if (highScore < score[player])
	ld	bc, #_score+0
	ld	l, e
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	iy, #_highScore
	ld	a, 0 (iy)
	sub	a, c
	ld	a, 1 (iy)
	sbc	a, b
	ret	NC
;src/main.c:697: highScore = score[player];
	ld	(_highScore), bc
	ret
;src/main.c:702: void InitScoreboard() {
;	---------------------------------
; Function InitScoreboard
; ---------------------------------
_InitScoreboard::
;src/main.c:703: nPObj = 0;
	ld	hl,#_nPObj + 0
	ld	(hl), #0x00
;src/main.c:704: PrintFrame(0,0,77,24);	
	ld	hl, #0x184d
	push	hl
	ld	hl, #0x0000
	push	hl
	call	_PrintFrame
	pop	af
;src/main.c:707: cpct_drawSpriteMaskedAlignedTable(g_sorcerer1_06, cpct_getScreenPtr(CPCT_VMEM_START,  3, 4), SPR_W, SPR_H, g_maskTable);
	ld	hl, #0x0403
	ex	(sp),hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	bc, #_g_sorcerer1_06+0
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0c05
	push	de
	push	hl
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:708: PrintText("0000", 14, 6, 1); // player score
	ld	hl, #0x0106
	push	hl
	ld	a, #0x0e
	push	af
	inc	sp
	ld	hl, #___str_22
	push	hl
	call	_PrintText
	pop	af
;src/main.c:709: PrintObject(nPObj, 28, 6); PrintText("00", 32, 6, 1);	// coins score	
	inc	sp
	ld	hl,#0x061c
	ex	(sp),hl
	ld	a, (_nPObj)
	push	af
	inc	sp
	call	_PrintObject
	inc	sp
	ld	hl,#0x0106
	ex	(sp),hl
	ld	a, #0x20
	push	af
	inc	sp
	ld	hl, #___str_23
	push	hl
	call	_PrintText
	pop	af
;src/main.c:710: PrintText("<", 28, 15, 1); PrintText("00", 32, 15, 1);	// potion score
	inc	sp
	ld	hl,#0x010f
	ex	(sp),hl
	ld	a, #0x1c
	push	af
	inc	sp
	ld	hl, #___str_24
	push	hl
	call	_PrintText
	pop	af
	inc	sp
	ld	hl,#0x010f
	ex	(sp),hl
	ld	a, #0x20
	push	af
	inc	sp
	ld	hl, #___str_23
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
;src/main.c:713: if (TwoPlayers) {
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jr	Z,00102$
;src/main.c:714: cpct_drawSpriteMaskedAlignedTable(g_sorcerer2_06, cpct_getScreenPtr(CPCT_VMEM_START, 42, 4), SPR_W, SPR_H, g_maskTable);
	ld	hl, #0x042a
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	bc, #_g_sorcerer2_06+0
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0c05
	push	de
	push	hl
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:715: PrintText("0000", 53, 6, 1); // player score
	ld	hl, #0x0106
	push	hl
	ld	a, #0x35
	push	af
	inc	sp
	ld	hl, #___str_22
	push	hl
	call	_PrintText
	pop	af
;src/main.c:716: PrintObject(nPObj, 67, 6); PrintText("00", 71, 6, 1);	// coins score
	inc	sp
	ld	hl,#0x0643
	ex	(sp),hl
	ld	a, (_nPObj)
	push	af
	inc	sp
	call	_PrintObject
	inc	sp
	ld	hl,#0x0106
	ex	(sp),hl
	ld	a, #0x47
	push	af
	inc	sp
	ld	hl, #___str_23
	push	hl
	call	_PrintText
	pop	af
;src/main.c:717: PrintText("<", 67, 15, 1); PrintText("00", 71, 15, 1);	// potion score
	inc	sp
	ld	hl,#0x010f
	ex	(sp),hl
	ld	a, #0x43
	push	af
	inc	sp
	ld	hl, #___str_24
	push	hl
	call	_PrintText
	pop	af
	inc	sp
	ld	hl,#0x010f
	ex	(sp),hl
	ld	a, #0x47
	push	af
	inc	sp
	ld	hl, #___str_23
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
	ret
00102$:
;src/main.c:720: PrintText("HIGH:", 44, 6 , 1);
	ld	hl, #0x0106
	push	hl
	ld	a, #0x2c
	push	af
	inc	sp
	ld	hl, #___str_25
	push	hl
	call	_PrintText
	pop	af
;src/main.c:721: PrintText("00000", 61, 6, 1); 
	inc	sp
	ld	hl,#0x0106
	ex	(sp),hl
	ld	a, #0x3d
	push	af
	inc	sp
	ld	hl, #___str_26
	push	hl
	call	_PrintText
	pop	af
;src/main.c:722: PrintNumber(highScore, 5, 61, 6, 1); // high score
	inc	sp
	ld	hl,#0x0106
	ex	(sp),hl
	ld	hl, #0x3d05
	push	hl
	ld	hl, (_highScore)
	push	hl
	call	_PrintNumber
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
;src/main.c:723: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 60, 16), cpct_px2byteM0(BG_COLOR, BG_COLOR), 16, 8); // key
	ld	hl, #0x0101
	push	hl
	call	_cpct_px2byteM0
	ld	h, #0x00
	ld	bc, #0x0810
	push	bc
	push	hl
	ld	hl, #0xc0dc
	push	hl
	call	_cpct_drawSolidBox
;src/main.c:724: PrintText("KEY:", 47, 15, 1);
	ld	hl, #0x010f
	push	hl
	ld	a, #0x2f
	push	af
	inc	sp
	ld	hl, #___str_27
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
	ret
___str_22:
	.ascii "0000"
	.db 0x00
___str_23:
	.ascii "00"
	.db 0x00
___str_24:
	.ascii "<"
	.db 0x00
___str_25:
	.ascii "HIGH:"
	.db 0x00
___str_26:
	.ascii "00000"
	.db 0x00
___str_27:
	.ascii "KEY:"
	.db 0x00
;src/main.c:730: void RefreshScoreboard() { 
;	---------------------------------
; Function RefreshScoreboard
; ---------------------------------
_RefreshScoreboard::
;src/main.c:732: PrintNumber(spr[0].lives_speed,  1,  8, 6, 1); 		// lives
	ld	hl, #_spr + 11
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0x0106
	push	hl
	ld	hl, #0x0801
	push	hl
	push	bc
	call	_PrintNumber
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
;src/main.c:733: PrintNumber(score[0], 4, 14, 6, 1);		 			// current score
	ld	hl, (#_score + 0)
	ld	bc, #0x0106
	push	bc
	ld	bc, #0x0e04
	push	bc
	push	hl
	call	_PrintNumber
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
;src/main.c:734: PrintText("0", 32, 6, 1);
	ld	hl, #0x0106
	push	hl
	ld	a, #0x20
	push	af
	inc	sp
	ld	hl, #___str_28
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
;src/main.c:735: PrintNumber(coinScore[0], 2, 32, 6, 1); 			// coin score
	ld	hl, #_coinScore + 0
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0x0106
	push	hl
	ld	hl, #0x2002
	push	hl
	push	bc
	call	_PrintNumber
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
;src/main.c:736: PrintText("0", 32, 15, 1);
	ld	hl, #0x010f
	push	hl
	ld	a, #0x20
	push	af
	inc	sp
	ld	hl, #___str_28
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
;src/main.c:737: PrintNumber(potScore[0], 2, 32, 15, 1); 			// potion score
	ld	hl, #_potScore + 0
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0x010f
	push	hl
	ld	hl, #0x2002
	push	hl
	push	bc
	call	_PrintNumber
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
;src/main.c:739: if (TwoPlayers) {
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jp	Z, 00102$
;src/main.c:740: PrintNumber(spr[1].lives_speed,  1, 47, 6, 1); 	// lives
	ld	hl, #_spr + 26
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0x0106
	push	hl
	ld	hl, #0x2f01
	push	hl
	push	bc
	call	_PrintNumber
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
;src/main.c:741: PrintNumber(score[1], 4, 53, 6, 1);		 		// current score
	ld	hl, (#_score + 2)
	ld	bc, #0x0106
	push	bc
	ld	bc, #0x3504
	push	bc
	push	hl
	call	_PrintNumber
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
;src/main.c:742: PrintText("0", 71, 6, 1);
	ld	hl, #0x0106
	push	hl
	ld	a, #0x47
	push	af
	inc	sp
	ld	hl, #___str_28
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
;src/main.c:743: PrintNumber(coinScore[1], 2, 71, 6, 1); 		// coin score
	ld	hl, #_coinScore + 1
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0x0106
	push	hl
	ld	hl, #0x4702
	push	hl
	push	bc
	call	_PrintNumber
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
;src/main.c:744: PrintText("0", 71, 15, 1);
	ld	hl, #0x010f
	push	hl
	ld	a, #0x47
	push	af
	inc	sp
	ld	hl, #___str_28
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
;src/main.c:745: PrintNumber(potScore[1], 2, 71, 15, 1); 		// potion score
	ld	hl, #_potScore + 1
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0x010f
	push	hl
	ld	hl, #0x4702
	push	hl
	push	bc
	call	_PrintNumber
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	ret
00102$:
;src/main.c:748: PrintNumber(highScore, 5, 61, 6, 1);
	ld	hl, #0x0106
	push	hl
	ld	hl, #0x3d05
	push	hl
	ld	hl, (_highScore)
	push	hl
	call	_PrintNumber
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	ret
___str_28:
	.ascii "0"
	.db 0x00
;src/main.c:765: void ResetObjData(u8 player) __z88dk_fastcall {
;	---------------------------------
; Function ResetObjData
; ---------------------------------
_ResetObjData::
	ld	c, l
;src/main.c:766: spr[player].objNum_mov = 0; // number of objects
	ld	de, #_spr+0
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, de
	ld	de, #0x000c
	add	hl, de
	ld	(hl), #0x00
;src/main.c:767: potScore[player] = 0; // potion value
	ld	de, #_potScore+0
	ld	l,c
	ld	h,#0x00
	add	hl, de
	ld	(hl), #0x00
;src/main.c:768: coinScore[player] = 0; // money
	ld	de, #_coinScore+0
	ld	l,c
	ld	h,#0x00
	add	hl, de
	ld	(hl), #0x00
;src/main.c:770: if (player == 0)
	ld	a, c
	or	a, a
	jr	NZ,00102$
;src/main.c:771: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 7, 16), cpct_px2byteM0(BG_COLOR, BG_COLOR), 20, 8);
	ld	hl, #0x0101
	push	hl
	call	_cpct_px2byteM0
	ld	h, #0x00
	ld	bc, #0x0814
	push	bc
	push	hl
	ld	hl, #0xc0a7
	push	hl
	call	_cpct_drawSolidBox
	ret
00102$:
;src/main.c:773: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 46, 16), cpct_px2byteM0(BG_COLOR, BG_COLOR), 20, 8);
	ld	hl, #0x0101
	push	hl
	call	_cpct_px2byteM0
	ld	h, #0x00
	ld	bc, #0x0814
	push	bc
	push	hl
	ld	hl, #0xc0ce
	push	hl
	call	_cpct_drawSolidBox
	ret
;src/main.c:778: void PrintObject(u8 nObj, u8 objX, u8 objY) {
;	---------------------------------
; Function PrintObject
; ---------------------------------
_PrintObject::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:780: OBJ_W, OBJ_H, g_maskTable);
;src/main.c:779: cpct_drawSpriteMaskedAlignedTable(g_objects[nObj], cpct_getScreenPtr(CPCT_VMEM_START, objX, objY),
	ld	h, 6 (ix)
	ld	l, 5 (ix)
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	c, l
	ld	b, h
	ld	de, #_g_objects+0
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0804
	push	de
	push	bc
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
	pop	ix
	ret
;src/main.c:785: void DeleteObject(u8 index) __z88dk_fastcall {
;	---------------------------------
; Function DeleteObject
; ---------------------------------
_DeleteObject::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
	ld	c, l
;src/main.c:787: 2 + (objX[index] & 1), 2 + (objY[index] & 3 ? 1 : 0), MAP_W, 
	ld	de, #_objY+0
	ld	l,c
	ld	h,#0x00
	add	hl, de
	ld	b, (hl)
	ld	a, b
	and	a, #0x03
	jr	Z,00103$
	ld	a, #0x01
	jr	00104$
00103$:
	ld	a, #0x00
00104$:
	add	a, #0x02
	ld	-1 (ix), a
	ld	de, #_objX+0
	ld	l,c
	ld	h,#0x00
	add	hl, de
	ld	e, (hl)
	ld	a, e
	and	a, #0x01
	ld	d, a
	inc	d
	inc	d
;src/main.c:786: cpct_etm_drawTileBox2x4(objX[index] / 2, (objY[index] - ORIG_MAP_Y) / 4,
	ld	c, b
	ld	b, #0x00
	ld	a, c
	add	a, #0xe0
	ld	-3 (ix), a
	ld	a, b
	adc	a, #0xff
	ld	-2 (ix), a
	pop	hl
	push	hl
	bit	7, -2 (ix)
	jr	Z,00105$
	ld	hl, #0xffe3
	add	hl, bc
00105$:
	sra	h
	rr	l
	sra	h
	rr	l
	ld	c, l
	srl	e
	ld	hl, #0x0f71
	push	hl
	ld	hl, #0xc140
	push	hl
	ld	a, #0x28
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	ld	d, c
	push	de
	call	_cpct_etm_drawTileBox2x4
	ld	sp, ix
	pop	ix
	ret
;src/main.c:793: void PrintDust(u8 nFrame, u8 index) {
;	---------------------------------
; Function PrintDust
; ---------------------------------
_PrintDust::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:796: OBJ_W, OBJ_H, g_maskTable);
;src/main.c:795: cpct_getScreenPtr(CPCT_VMEM_START, objX[index], objY[index]), 
	ld	bc, #_objY+0
	ld	l,5 (ix)
	ld	h,#0x00
	add	hl, bc
	ld	d, (hl)
	ld	bc, #_objX+0
	ld	l,5 (ix)
	ld	h,#0x00
	add	hl, bc
	ld	e, (hl)
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	c, l
	ld	b, h
;src/main.c:794: cpct_drawSpriteMaskedAlignedTable(g_dust[nFrame], 
	ld	de, #_g_dust+0
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0804
	push	de
	push	bc
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
	pop	ix
	ret
;src/main.c:801: void PrintCoin(u8 nFrame, u8 index) {
;	---------------------------------
; Function PrintCoin
; ---------------------------------
_PrintCoin::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:804: 3, OBJ_H, g_maskTable);
;src/main.c:803: cpct_getScreenPtr(CPCT_VMEM_START, objX[index], objY[index]), 
	ld	bc, #_objY+0
	ld	l,5 (ix)
	ld	h,#0x00
	add	hl, bc
	ld	d, (hl)
	ld	bc, #_objX+0
	ld	l,5 (ix)
	ld	h,#0x00
	add	hl, bc
	ld	e, (hl)
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	c, l
	ld	b, h
;src/main.c:802: cpct_drawSpriteMaskedAlignedTable(g_coin[nFrame], 
	ld	e,4 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #_g_coin
	add	hl, de
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0803
	push	de
	push	bc
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
	pop	ix
	ret
;src/main.c:809: void DeleteObjectInStore() {
;	---------------------------------
; Function DeleteObjectInStore
; ---------------------------------
_DeleteObjectInStore::
;src/main.c:810: if (TwoPlayers) return;
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	ret	NZ
;src/main.c:812: 2 + (storeX & 1), 2 + (storeY & 3 ? 1 : 0),	MAP_W, 
	ld	a,(#_storeY + 0)
	and	a, #0x03
	jr	Z,00105$
	ld	d, #0x01
	jr	00106$
00105$:
	ld	d, #0x00
00106$:
	inc	d
	inc	d
	ld	a,(#_storeX + 0)
	and	a, #0x01
	ld	e, a
	inc	e
	inc	e
;src/main.c:811: cpct_etm_drawTileBox2x4(storeX / 2, storeY / 4,
	ld	hl,#_storeY + 0
	ld	b, (hl)
	srl	b
	srl	b
	ld	hl,#_storeX + 0
	ld	c, (hl)
	srl	c
	ld	hl, #0x0f71
	push	hl
	ld	hl, #0xc140
	push	hl
	ld	a, #0x28
	push	af
	inc	sp
	push	de
	push	bc
	call	_cpct_etm_drawTileBox2x4
	ret
;src/main.c:818: void PrintObjectInStore() {
;	---------------------------------
; Function PrintObjectInStore
; ---------------------------------
_PrintObjectInStore::
;src/main.c:819: if (TwoPlayers) return;
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	ret	NZ
;src/main.c:820: if (coinScore[0] == 0) return;
	ld	a, (#_coinScore + 0)
	or	a, a
	ret	Z
;src/main.c:822: if (coinScore[0] < 13)
	cp	a, #0x0d
	jr	NC,00106$
;src/main.c:823: nPObj = coinScore[0] + 3; // assign the corresponding object to the available money
	ld	hl, #_nPObj
	add	a, #0x03
	ld	(hl), a
	jr	00107$
00106$:
;src/main.c:825: nPObj = 15; // assign the most expensive object
	ld	hl,#_nPObj + 0
	ld	(hl), #0x0f
00107$:
;src/main.c:827: PrintObject(nPObj, storeX, storeY + ORIG_MAP_Y);
	ld	a,(#_storeY + 0)
	add	a, #0x20
	ld	b, a
	push	bc
	inc	sp
	ld	a, (_storeX)
	push	af
	inc	sp
	ld	a, (_nPObj)
	push	af
	inc	sp
	call	_PrintObject
	pop	af
	inc	sp
	ret
;src/main.c:833: void CheckObject(u8 index) {	
;	---------------------------------
; Function CheckObject
; ---------------------------------
_CheckObject::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
;src/main.c:834: i8 player = -1;
	ld	-7 (ix), #0xff
;src/main.c:836: if (nObj[index] != -1)	{
	ld	a, 4 (ix)
	add	a, #<(_nObj)
	ld	-4 (ix), a
	ld	a, #0x00
	adc	a, #>(_nObj)
	ld	-3 (ix), a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	c, (hl)
	inc	c
	jp	Z,00124$
;src/main.c:837: if (SpriteCollision(objX[index], objY[index], &spr[0], 0)) player = 0; // player 1
	ld	a, 4 (ix)
	add	a, #<(_objY)
	ld	-6 (ix), a
	ld	a, #0x00
	adc	a, #>(_objY)
	ld	-5 (ix), a
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	d, (hl)
	ld	a, 4 (ix)
	add	a, #<(_objX)
	ld	-2 (ix), a
	ld	a, #0x00
	adc	a, #>(_objX)
	ld	-1 (ix), a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	b, (hl)
	xor	a, a
	push	af
	inc	sp
	ld	hl, #_spr
	push	hl
	ld	e, b
	push	de
	call	_SpriteCollision
	pop	af
	pop	af
	inc	sp
	ld	a, l
	or	a, a
	jr	Z,00105$
	ld	-7 (ix), #0x00
	jr	00106$
00105$:
;src/main.c:838: else if (TwoPlayers && SpriteCollision(objX[index], objY[index], &spr[1], 0)) player = 1; // player 2
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jr	Z,00106$
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	d, (hl)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	b, (hl)
	xor	a, a
	push	af
	inc	sp
	ld	hl, #(_spr + 0x000f)
	push	hl
	ld	e, b
	push	de
	call	_SpriteCollision
	pop	af
	pop	af
	inc	sp
	ld	a, l
	or	a, a
	jr	Z,00106$
	ld	-7 (ix), #0x01
00106$:
;src/main.c:840: if (player >= 0)	{									
	bit	7, -7 (ix)
	jp	NZ, 00124$
;src/main.c:841: DeleteObject(index);
	ld	l, 4 (ix)
	call	_DeleteObject
;src/main.c:844: if (nObj[index] <= 1) {
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	c, (hl)
	ld	a, #0x01
	sub	a, c
	jp	PO, 00183$
	xor	a, #0x80
00183$:
	jp	M, 00112$
;src/main.c:845: if (nMap == 0 && !TwoPlayers && nTip<2) 
	ld	a,(#_nMap + 0)
	or	a, a
	jr	NZ,00112$
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jr	NZ,00112$
	ld	a,(#_nTip + 0)
	sub	a, #0x02
	jr	NC,00112$
;src/main.c:846: PrintTip(); // novice help
	call	_PrintTip
00112$:
;src/main.c:849: switch (nObj[index])
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
;src/main.c:852: coinScore[player]++;
	ld	e, -7 (ix)
	ld	a, -7 (ix)
	rla
	sbc	a, a
	ld	d, a
;src/main.c:853: score[player] += 5;
	ld	c, e
	ld	b, d
	sla	c
	rl	b
;src/main.c:849: switch (nObj[index])
	ld	a, -2 (ix)
	or	a, a
	jr	Z,00113$
	ld	a, -2 (ix)
	dec	a
	jr	Z,00114$
;src/main.c:866: if (spr[player].lives_speed < 9)
	ld	e, -7 (ix)
	ld	a, e
	rlc	a
	sbc	a, a
	ld	d, a
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ex	de,hl
	ld	hl, #_spr
	add	hl,de
	ex	de,hl
;src/main.c:849: switch (nObj[index])
	ld	a, -2 (ix)
	sub	a, #0x02
	jr	Z,00115$
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	Z,00118$
	jp	00119$
;src/main.c:851: case 0:	{	// coin
00113$:
;src/main.c:852: coinScore[player]++;
	ld	hl, #_coinScore+0
	add	hl, de
	ld	e, (hl)
	inc	e
	ld	(hl), e
;src/main.c:853: score[player] += 5;
	ld	hl, #_score+0
	add	hl, bc
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	hl
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;src/main.c:854: DeleteObjectInStore();
	call	_DeleteObjectInStore
;src/main.c:855: PrintObjectInStore();
	call	_PrintObjectInStore
;src/main.c:856: break;
	jr	00119$
;src/main.c:858: case 1: {	// coin x5
00114$:
;src/main.c:859: coinScore[player] += 5;
	ld	hl, #_coinScore
	add	hl, de
	ld	a, (hl)
	add	a, #0x05
	ld	(hl), a
;src/main.c:860: score[player] += 20;
	ld	hl, #_score
	add	hl, bc
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	hl
	ld	a, c
	add	a, #0x14
	ld	c, a
	ld	a, b
	adc	a, #0x00
	ld	b, a
	ld	(hl), c
	inc	hl
	ld	(hl), b
;src/main.c:861: DeleteObjectInStore();
	call	_DeleteObjectInStore
;src/main.c:862: PrintObjectInStore();
	call	_PrintObjectInStore
;src/main.c:863: break;
	jr	00119$
;src/main.c:865: case 2: {	// extra life
00115$:
;src/main.c:866: if (spr[player].lives_speed < 9)
	ld	hl, #0x000b
	add	hl, de
	ld	a, (hl)
	cp	a, #0x09
	jr	NC,00117$
;src/main.c:867: spr[player].lives_speed++;
	inc	a
	ld	(hl), a
00117$:
;src/main.c:868: score[player] += 30;
	ld	hl, #_score
	add	hl, bc
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	hl
	ld	a, c
	add	a, #0x1e
	ld	c, a
	ld	a, b
	adc	a, #0x00
	ld	b, a
	ld	(hl), c
	inc	hl
	ld	(hl), b
;src/main.c:869: break;
	jr	00119$
;src/main.c:871: case 3: {	// power up speed*2
00118$:
;src/main.c:872: spr[player].power_maxV = 255;
	ld	hl, #0x000e
	add	hl, de
	ld	(hl), #0xff
;src/main.c:873: score[player] += 25;
	ld	hl, #_score
	add	hl, bc
	push	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	pop	hl
	ld	a, c
	add	a, #0x19
	ld	c, a
	ld	a, b
	adc	a, #0x00
	ld	b, a
	ld	(hl), c
	inc	hl
	ld	(hl), b
;src/main.c:875: }
00119$:
;src/main.c:876: RefreshHighScore(player);
	ld	l, -7 (ix)
	call	_RefreshHighScore
;src/main.c:877: RefreshScoreboard();
	call	_RefreshScoreboard
;src/main.c:878: nObj[index] = -1; // object not assigned
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #0xff
00124$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:885: u8 ObjectCollision(u8 numObj) __z88dk_fastcall {	
;	---------------------------------
; Function ObjectCollision
; ---------------------------------
_ObjectCollision::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
	ld	c, l
;src/main.c:887: while(i<=5) {
	ld	de, #_objY+0
	ld	l,c
	ld	h,#0x00
	add	hl, de
	ld	a, (hl)
	ld	-1 (ix), a
	ld	de, #_objX+0
	ld	l,c
	ld	h,#0x00
	add	hl, de
	ld	a, (hl)
	ld	-2 (ix), a
	ld	-3 (ix), #0x02
00106$:
	ld	a, #0x05
	sub	a, -3 (ix)
	jr	C,00108$
;src/main.c:888: if ((spr[i].x + SPR_W >= objX[numObj] && spr[i].x <= objX[numObj] + OBJ_W) && 
	ld	c,-3 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	c, l
	ld	b, h
	ld	iy, #_spr
	add	iy, bc
	push	iy
	pop	hl
	inc	hl
	inc	hl
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0x0005
	add	hl, bc
	ld	e, -2 (ix)
	ld	d, #0x00
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jp	PO, 00135$
	xor	a, #0x80
00135$:
	jp	M, 00102$
	inc	de
	inc	de
	inc	de
	inc	de
	ld	a, e
	sub	a, c
	ld	a, d
	sbc	a, b
	jp	PO, 00136$
	xor	a, #0x80
00136$:
	jp	M, 00102$
;src/main.c:889: (spr[i].y + SPR_H >= objY[numObj] && spr[i].y <= objY[numObj] + OBJ_H)) {
	push	iy
	pop	hl
	inc	hl
	inc	hl
	inc	hl
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0x000c
	add	hl, bc
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jp	PO, 00137$
	xor	a, #0x80
00137$:
	jp	M, 00102$
	ld	hl, #0x0008
	add	hl, de
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	jp	PO, 00138$
	xor	a, #0x80
00138$:
	jp	M, 00102$
;src/main.c:890: return 1;
	ld	l, #0x01
	jr	00109$
00102$:
;src/main.c:892: i++;
	inc	-3 (ix)
	jp	00106$
00108$:
;src/main.c:894: return 0;
	ld	l, #0x00
00109$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:901: void ReprintObject() {
;	---------------------------------
; Function ReprintObject
; ---------------------------------
_ReprintObject::
;src/main.c:903: if (nObj[0] >= 0 && !ObjectCollision(0)) {  // does not print if hidden by enemies
	ld	hl, #_nObj + 0
	bit	7, (hl)
	jp	NZ, 00125$
	ld	l, #0x00
	call	_ObjectCollision
	ld	a, l
	or	a, a
	jp	NZ, 00125$
;src/main.c:904: switch(ctMainLoop) {
	ld	iy, #_ctMainLoop
	ld	a, 0 (iy)
	or	a, a
	or	a, 1 (iy)
	jp	Z,00102$
	ld	a, 0 (iy)
	sub	a, #0x08
	or	a, 1 (iy)
	jp	Z,00104$
	ld	a, 0 (iy)
	sub	a, #0x10
	or	a, 1 (iy)
	jp	Z,00105$
	ld	a, 0 (iy)
	sub	a, #0x18
	or	a, 1 (iy)
	jp	Z,00108$
	ld	a, 0 (iy)
	sub	a, #0x20
	or	a, 1 (iy)
	jp	Z,00113$
	ld	a, 0 (iy)
	sub	a, #0x28
	or	a, 1 (iy)
	jp	Z,00118$
	ld	a, 0 (iy)
	sub	a, #0x38
	or	a, 1 (iy)
	jp	Z,00108$
	ld	a, 0 (iy)
	sub	a, #0x40
	or	a, 1 (iy)
	jp	Z,00113$
	ld	a, 0 (iy)
	sub	a, #0x48
	or	a, 1 (iy)
	jp	Z,00118$
	ld	a, 0 (iy)
	sub	a, #0x58
	or	a, 1 (iy)
	jp	Z,00108$
	ld	a, 0 (iy)
	sub	a, #0x60
	or	a, 1 (iy)
	jp	Z,00113$
	ld	a, 0 (iy)
	sub	a, #0x68
	or	a, 1 (iy)
	jp	Z,00118$
	ld	a, 0 (iy)
	sub	a, #0x48
	jr	NZ,00323$
	ld	a, 1 (iy)
	dec	a
	jp	Z,00121$
00323$:
	ld	a, 0 (iy)
	sub	a, #0x50
	jr	NZ,00324$
	ld	a, 1 (iy)
	dec	a
	jr	Z,00104$
00324$:
	ld	a, 0 (iy)
	sub	a, #0x58
	jp	NZ,00122$
	ld	a, 1 (iy)
	dec	a
	jp	NZ,00122$
;src/main.c:907: case 344:	{ DeleteObject(0); PrintDust(0,0); break; }
00102$:
	ld	l, #0x00
	call	_DeleteObject
	ld	hl, #0x0000
	push	hl
	call	_PrintDust
	pop	af
	jp	00125$
;src/main.c:910: case 336:	{ DeleteObject(0); PrintDust(1,0); break; }
00104$:
	ld	l, #0x00
	call	_DeleteObject
	ld	hl, #0x0001
	push	hl
	call	_PrintDust
	pop	af
	jr	00125$
;src/main.c:913: case 16:	{ DeleteObject(0); PrintObject(nObj[0], objX[0], objY[0]); break; }
00105$:
	ld	l, #0x00
	call	_DeleteObject
	ld	hl, #_objY+0
	ld	d, (hl)
	ld	a, (#_objX + 0)
	ld	hl, #_nObj + 0
	ld	b, (hl)
	ld	e, a
	push	de
	push	bc
	inc	sp
	call	_PrintObject
	pop	af
	inc	sp
	jr	00125$
;src/main.c:918: case 88: { if (nObj[0] == 0) {DeleteObject(0); PrintCoin(0,0); break; }}
00108$:
	ld	a, (#_nObj + 0)
	or	a,a
	jr	NZ,00113$
	ld	l,a
	call	_DeleteObject
	ld	hl, #0x0000
	push	hl
	call	_PrintCoin
	pop	af
	jr	00125$
;src/main.c:921: case 96: { if (nObj[0] == 0) {DeleteObject(0); PrintCoin(1,0); break; }}
00113$:
	ld	a, (#_nObj + 0)
	or	a,a
	jr	NZ,00118$
	ld	l,a
	call	_DeleteObject
	ld	hl, #0x0001
	push	hl
	call	_PrintCoin
	pop	af
	jr	00125$
;src/main.c:924: case 104: { if (nObj[0] == 0) {DeleteObject(0); PrintCoin(2,0); break; }}
00118$:
	ld	a, (#_nObj + 0)
	or	a,a
	jr	NZ,00121$
	ld	l,a
	call	_DeleteObject
	ld	hl, #0x0002
	push	hl
	call	_PrintCoin
	pop	af
	jr	00125$
;src/main.c:927: case 328:	{ DeleteObject(0); }
00121$:
	ld	l, #0x00
	call	_DeleteObject
;src/main.c:929: default:	{ PrintObject(nObj[0], objX[0], objY[0]); }			
00122$:
	ld	hl, #_objY+0
	ld	d, (hl)
	ld	a, (#_objX + 0)
	ld	hl, #_nObj + 0
	ld	b, (hl)
	ld	e, a
	push	de
	push	bc
	inc	sp
	call	_PrintObject
	pop	af
	inc	sp
;src/main.c:930: }
00125$:
;src/main.c:933: if (nObj[1] >= 0 && !ObjectCollision(1)) {
	ld	hl, #(_nObj + 0x0001) + 0
	bit	7, (hl)
	ret	NZ
	ld	l, #0x01
	call	_ObjectCollision
	ld	a, l
	or	a, a
	ret	NZ
;src/main.c:934: switch(ctMainLoop) {
	ld	iy, #_ctMainLoop
	ld	a, 0 (iy)
	sub	a, #0x9a
	or	a, 1 (iy)
	jp	Z,00147$
	ld	a, 0 (iy)
	sub	a, #0xa0
	or	a, 1 (iy)
	jp	Z,00130$
	ld	a, 0 (iy)
	sub	a, #0xa8
	or	a, 1 (iy)
	jp	Z,00128$
	ld	a, 0 (iy)
	sub	a, #0xb0
	or	a, 1 (iy)
	jp	Z,00128$
	ld	a, 0 (iy)
	sub	a, #0xb8
	or	a, 1 (iy)
	jp	Z,00130$
	ld	a, 0 (iy)
	sub	a, #0xc0
	or	a, 1 (iy)
	jp	Z,00131$
;src/main.c:933: if (nObj[1] >= 0 && !ObjectCollision(1)) {
	ld	hl, #(_nObj + 0x0001) + 0
	ld	c, (hl)
;src/main.c:934: switch(ctMainLoop) {
	ld	a, 0 (iy)
	sub	a, #0xc8
	or	a, 1 (iy)
	jp	Z,00134$
	ld	a, 0 (iy)
	sub	a, #0xd0
	or	a, 1 (iy)
	jp	Z,00139$
	ld	a, 0 (iy)
	sub	a, #0xd8
	or	a, 1 (iy)
	jp	Z,00144$
	ld	a, 0 (iy)
	sub	a, #0xe8
	or	a, 1 (iy)
	jr	Z,00134$
	ld	a, 0 (iy)
	sub	a, #0xf0
	or	a, 1 (iy)
	jp	Z,00139$
	ld	a, 0 (iy)
	sub	a, #0xf8
	or	a, 1 (iy)
	jp	Z,00144$
	ld	a, 0 (iy)
	sub	a, #0x08
	jr	NZ,00339$
	ld	a, 1 (iy)
	dec	a
	jr	Z,00134$
00339$:
	ld	a, 0 (iy)
	sub	a, #0x10
	jr	NZ,00340$
	ld	a, 1 (iy)
	dec	a
	jr	Z,00139$
00340$:
	ld	a, 0 (iy)
	sub	a, #0x18
	jr	NZ,00148$
	ld	a, 1 (iy)
	dec	a
	jr	Z,00144$
	jr	00148$
;src/main.c:937: case 168:	{ DeleteObject(1); PrintDust(0,1); break; }
00128$:
	ld	l, #0x01
	call	_DeleteObject
	ld	hl, #0x0100
	push	hl
	call	_PrintDust
	pop	af
	ret
;src/main.c:940: case 160:	{ DeleteObject(1); PrintDust(1,1); break; }
00130$:
	ld	l, #0x01
	call	_DeleteObject
	ld	hl, #0x0101
	push	hl
	call	_PrintDust
	pop	af
	ret
;src/main.c:942: case 192:	{ DeleteObject(1); PrintObject(nObj[1], objX[1], objY[1]); break; }
00131$:
	ld	l, #0x01
	call	_DeleteObject
	ld	hl, #_objY+1
	ld	d, (hl)
	ld	a, (#(_objX + 0x0001) + 0)
	ld	hl, #(_nObj + 0x0001) + 0
	ld	b, (hl)
	ld	e, a
	push	de
	push	bc
	inc	sp
	call	_PrintObject
	pop	af
	inc	sp
	ret
;src/main.c:947: case 264: { if (nObj[1] == 0) {DeleteObject(1); PrintCoin(0,1); break; }}
00134$:
	ld	a, c
	or	a, a
	jr	NZ,00139$
	ld	l, #0x01
	call	_DeleteObject
	ld	hl, #0x0100
	push	hl
	call	_PrintCoin
	pop	af
	ret
;src/main.c:950: case 272: { if (nObj[1] == 0) {DeleteObject(1); PrintCoin(1,1); break; }}
00139$:
	ld	a, c
	or	a, a
	jr	NZ,00144$
	ld	l, #0x01
	call	_DeleteObject
	ld	hl, #0x0101
	push	hl
	call	_PrintCoin
	pop	af
	ret
;src/main.c:953: case 280: { if (nObj[1] == 0) {DeleteObject(1); PrintCoin(2,1); break; }}
00144$:
	ld	a, c
	or	a, a
	jr	NZ,00147$
	ld	l, #0x01
	call	_DeleteObject
	ld	hl, #0x0102
	push	hl
	call	_PrintCoin
	pop	af
	ret
;src/main.c:956: case 154:	{ DeleteObject(1); }
00147$:
	ld	l, #0x01
	call	_DeleteObject
;src/main.c:958: default:	{ PrintObject(nObj[1], objX[1], objY[1]); }			
00148$:
	ld	hl, #_objY+1
	ld	d, (hl)
	ld	a, (#(_objX + 0x0001) + 0)
	ld	hl, #(_nObj + 0x0001) + 0
	ld	b, (hl)
	ld	e, a
	push	de
	push	bc
	inc	sp
	call	_PrintObject
	pop	af
	inc	sp
;src/main.c:959: }
	ret
;src/main.c:964: void SetObject(u8 index) __z88dk_fastcall {
;	---------------------------------
; Function SetObject
; ---------------------------------
_SetObject::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	dec	sp
;src/main.c:967: if (nObj[index] >= 0) DeleteObject(index); 
	ld	-1 (ix), l
	ld	a, l
	add	a, #<(_nObj)
	ld	c, a
	ld	a, #0x00
	adc	a, #>(_nObj)
	ld	b, a
	ld	a, (bc)
	bit	7,a
	jr	NZ,00102$
	push	bc
	ld	l, -1 (ix)
	call	_DeleteObject
	pop	bc
00102$:
;src/main.c:969: nObj[index] = cpct_getRandom_lcg_u8(0) / 11;	// obj = 0 a 22
	push	bc
	ld	l, #0x00
	call	_cpct_getRandom_lcg_u8
	ld	d, l
	ld	a, #0x0b
	push	af
	inc	sp
	push	de
	inc	sp
	call	__divuchar
	pop	af
	ld	a, l
	pop	bc
	ld	(bc), a
;src/main.c:971: do {
00107$:
;src/main.c:972: objX[index] = 4 + (cpct_getRandom_lcg_u8(0)*10/36); 	// x = 4 a 74
	ld	a, #<(_objX)
	add	a, -1 (ix)
	ld	-5 (ix), a
	ld	a, #>(_objX)
	adc	a, #0x00
	ld	-4 (ix), a
	push	bc
	ld	l, #0x00
	call	_cpct_getRandom_lcg_u8
	pop	bc
	ld	e,l
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	push	bc
	ld	de, #0x0024
	push	de
	push	hl
	call	__divsint
	pop	af
	pop	af
	pop	bc
	ld	a, l
	add	a, #0x04
	pop	hl
	push	hl
	ld	(hl), a
;src/main.c:973: objY[index] = 40 + (cpct_getRandom_lcg_u8(0)*10/17);	// y = 40 a 190	
	ld	a, #<(_objY)
	add	a, -1 (ix)
	ld	-3 (ix), a
	ld	a, #>(_objY)
	adc	a, #0x00
	ld	-2 (ix), a
	push	bc
	ld	l, #0x00
	call	_cpct_getRandom_lcg_u8
	pop	bc
	ld	e,l
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	push	bc
	ld	de, #0x0011
	push	de
	push	hl
	call	__divsint
	pop	af
	pop	af
	pop	bc
	ld	a, l
	add	a, #0x28
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	(hl), a
;src/main.c:974: tile = *GetTileNum(objX[index]+2, objY[index]+8);	
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	a, (hl)
	add	a, #0x08
	ld	d, a
	pop	hl
	push	hl
	ld	a, (hl)
	add	a, #0x02
	push	bc
	ld	e, a
	push	de
	call	_GetTileNum
	pop	af
	pop	bc
	ld	e, (hl)
;src/main.c:977: while (tile > 34 || tile == TILESET_DOOR || // tile is a blocker
	ld	a, #0x22
	sub	a, e
	jp	C, 00107$
	ld	a, e
	sub	a, #0x0e
	jp	Z,00107$
;src/main.c:978: Abs(objX[0] - objX[1]) < 12 || // near the other object
	ld	hl, #_objX + 0
	ld	e, (hl)
	ld	d, #0x00
	ld	hl, #_objX + 1
	ld	l, (hl)
	ld	h, #0x00
	ld	a, e
	sub	a, l
	ld	l, a
	ld	a, d
	sbc	a, h
	ld	h, a
	push	bc
	call	_Abs
	pop	bc
	ld	de, #0x800c
	add	hl, hl
	ccf
	rr	h
	rr	l
	sbc	hl, de
	jp	C, 00107$
;src/main.c:979: SpriteCollision(objX[index], objY[index], &spr[0], 12) || // near player 1
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	d, (hl)
	pop	hl
	push	hl
	ld	e, (hl)
	push	bc
	ld	a, #0x0c
	push	af
	inc	sp
	ld	hl, #_spr
	push	hl
	push	de
	call	_SpriteCollision
	pop	af
	pop	af
	inc	sp
	pop	bc
	ld	a, l
	or	a, a
	jp	NZ, 00107$
;src/main.c:980: SpriteCollision(objX[index], objY[index], &spr[1], 12)); // near player 2
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	ld	d, (hl)
	pop	hl
	push	hl
	ld	e, (hl)
	push	bc
	ld	a, #0x0c
	push	af
	inc	sp
	ld	hl, #(_spr + 0x000f)
	push	hl
	push	de
	call	_SpriteCollision
	pop	af
	pop	af
	inc	sp
	pop	bc
	ld	a, l
	or	a, a
	jp	NZ, 00107$
;src/main.c:967: if (nObj[index] >= 0) DeleteObject(index); 
	ld	a, (bc)
;src/main.c:982: if (nObj[index] == 22) nObj[index] = 1; // slightly more chance of showing 5 coins
	ld	e,a
	sub	a, #0x16
	jr	NZ,00116$
	ld	a, #0x01
	ld	(bc), a
	jr	00118$
00116$:
;src/main.c:983: else if (nObj[index] == 21) nObj[index] = 3; // slightly more chance of powerUps showing up
	ld	a, e
	sub	a, #0x15
	jr	NZ,00113$
	ld	a, #0x03
	ld	(bc), a
	jr	00118$
00113$:
;src/main.c:984: else if (nObj[index] > 3) nObj[index] = 0; // only PowerUps and coins, others are purchased
	ld	a, #0x03
	sub	a, e
	jp	PO, 00165$
	xor	a, #0x80
00165$:
	jp	P, 00118$
	xor	a, a
	ld	(bc), a
00118$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:991: void AddObjectToScoreboard(u8 player) __z88dk_fastcall {
;	---------------------------------
; Function AddObjectToScoreboard
; ---------------------------------
_AddObjectToScoreboard::
	ld	c, l
;src/main.c:992: u8 x = spr[player].objNum_mov * 3 + 7;
	ld	de, #_spr+0
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, de
	ld	de, #0x000c
	add	hl, de
	ld	e, (hl)
	ld	a, e
	add	a, a
	add	a, e
	add	a, #0x07
	ld	b, a
;src/main.c:993: if (player == 1) x += 39;		
	dec	c
	jr	NZ,00102$
	ld	a, b
	add	a, #0x27
	ld	b, a
00102$:
;src/main.c:994: PrintObject(nPObj, x, 16);
	ld	a, #0x10
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, (_nPObj)
	push	af
	inc	sp
	call	_PrintObject
	pop	af
	inc	sp
	ret
;src/main.c:999: void PrintKey() {
;	---------------------------------
; Function PrintKey
; ---------------------------------
_PrintKey::
;src/main.c:1002: while (i<=4) {
	ld	c, #0x00
	ld	d, #0x3c
00101$:
	ld	a, #0x04
	sub	a, c
	ret	C
;src/main.c:1003: PrintObject(doorKey[i], x, 16);
	ld	hl, #_doorKey
	ld	b, #0x00
	add	hl, bc
	ld	b, (hl)
	push	bc
	push	de
	ld	a, #0x10
	push	af
	inc	sp
	ld	e, b
	push	de
	call	_PrintObject
	pop	af
	inc	sp
	pop	de
	pop	bc
;src/main.c:1004: i++;
	inc	c
;src/main.c:1005: x+=3;
	inc	d
	inc	d
	inc	d
	jr	00101$
;src/main.c:1011: u8 CompareKeys() {
;	---------------------------------
; Function CompareKeys
; ---------------------------------
_CompareKeys::
;src/main.c:1012: if (doorKey[0] == playerKey[0] && 
	ld	hl, #_doorKey + 0
	ld	c, (hl)
	ld	a, (#_playerKey + 0)
	sub	a, c
	jr	NZ,00102$
;src/main.c:1013: doorKey[1] == playerKey[1] &&
	ld	hl, #_doorKey + 1
	ld	c, (hl)
	ld	a, (#_playerKey + 1)
	sub	a, c
	jr	NZ,00102$
;src/main.c:1014: doorKey[2] == playerKey[2] && 
	ld	hl, #_doorKey + 2
	ld	c, (hl)
	ld	a, (#_playerKey + 2)
	sub	a, c
	jr	NZ,00102$
;src/main.c:1015: doorKey[3] == playerKey[3] &&
	ld	hl, #_doorKey + 3
	ld	c, (hl)
	ld	a, (#_playerKey + 3)
	sub	a, c
	jr	NZ,00102$
;src/main.c:1016: doorKey[4] == playerKey[4]) 
	ld	hl, #_doorKey + 4
	ld	c, (hl)
	ld	a, (#_playerKey + 4)
	sub	a, c
	jr	NZ,00102$
;src/main.c:1017: return 1;
	ld	l, #0x01
	ret
00102$:
;src/main.c:1019: return 0;
	ld	l, #0x00
	ret
;src/main.c:1024: void CheckActiveTile(u8 player) {	
;	---------------------------------
; Function CheckActiveTile
; ---------------------------------
_CheckActiveTile::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
;src/main.c:1025: u8 currentTile = *GetTileNum(spr[player].x+3, spr[player].y+8);	
	ld	c,4 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	bc,#_spr
	add	hl,bc
	ld	c,l
	ld	b,h
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	add	a, #0x08
	ld	d, a
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	a, (hl)
	add	a, #0x03
	push	bc
	ld	e, a
	push	de
	call	_GetTileNum
	pop	af
	pop	bc
	ld	a, (hl)
	ld	-5 (ix), a
;src/main.c:1026: u8 i = 0;
	ld	-6 (ix), #0x00
;src/main.c:1031: while (coinScore[player] > 0 && spr[player].objNum_mov < 5) {
	ld	hl, #0x000c
	add	hl,bc
	ld	-4 (ix), l
	ld	-3 (ix), h
;src/main.c:1029: if (currentTile >= TILESET_STORE && currentTile <= TILESET_STORE + 5) {
	ld	a, -5 (ix)
	sub	a, #0x27
	jp	C, 00140$
	ld	a, #0x2c
	sub	a, -5 (ix)
	jp	C, 00140$
;src/main.c:1031: while (coinScore[player] > 0 && spr[player].objNum_mov < 5) {
00112$:
	ld	a, #<(_coinScore)
	add	a, 4 (ix)
	ld	e, a
	ld	a, #>(_coinScore)
	adc	a, #0x00
	ld	d, a
	ld	a, (de)
	ld	b,a
	or	a, a
	jp	Z, 00143$
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	c, (hl)
	ld	a, c
	sub	a, #0x05
	jp	NC, 00143$
;src/main.c:1032: if (coinScore[player] < 13) // no money left
;src/main.c:1033: nPObj = coinScore[player] + 3; // assign the corresponding object to the available money
	ld	a,b
	cp	a,#0x0d
	jr	NC,00102$
	ld	hl, #_nPObj
	add	a, #0x03
	ld	(hl), a
	jr	00103$
00102$:
;src/main.c:1035: nPObj = 15; // assign the most expensive object
	ld	hl,#_nPObj + 0
	ld	(hl), #0x0f
00103$:
;src/main.c:1036: spr[player].objNum_mov++; // increases the number of objects the player carries
	inc	c
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), c
;src/main.c:1037: potScore[player] += coinScore[player]; // increase the potion score
	ld	iy, #_potScore
	ld	c,4 (ix)
	ld	b,#0x00
	add	iy, bc
	ld	c, 0 (iy)
	ld	a, (de)
	ld	l, a
	add	hl, bc
	ld	0 (iy), l
;src/main.c:1038: score[player] += coinScore[player] * 2; // increase the player score
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	iy, #_score
	add	iy, bc
	ld	c, 0 (iy)
	ld	b, 1 (iy)
	ld	a, (de)
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	0 (iy), l
	ld	1 (iy), h
;src/main.c:1039: RefreshHighScore(player);
	push	de
	ld	l, 4 (ix)
	call	_RefreshHighScore
	pop	de
;src/main.c:1040: coinScore[player] -= nPObj - 3; // decrease the coin score
	ld	a, (de)
	ld	c, a
	ld	a,(#_nPObj + 0)
	add	a, #0xfd
	ld	b, a
	ld	a, c
	sub	a, b
	ld	(de), a
;src/main.c:1041: if (!TwoPlayers) {
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jr	NZ,00110$
;src/main.c:1042: playerKey[spr[player].objNum_mov-1] = nPObj; // add object to key
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	c, (hl)
	dec	c
	ld	hl, #_playerKey
	ld	b, #0x00
	add	hl, bc
	ld	a,(#_nPObj + 0)
	ld	(hl), a
;src/main.c:1044: if (nMap == 0 && (nTip<3 || (nTip<4 && spr[0].objNum_mov >= 5)))
	ld	a,(#_nMap + 0)
	or	a, a
	jr	NZ,00110$
	ld	iy, #_nTip
	ld	a, 0 (iy)
	sub	a, #0x03
	jr	C,00104$
	ld	a, 0 (iy)
	sub	a, #0x04
	jr	NC,00110$
	ld	a, (#(_spr + 0x000c) + 0)
	sub	a, #0x05
	jr	C,00110$
00104$:
;src/main.c:1045: PrintTip();
	call	_PrintTip
00110$:
;src/main.c:1047: DeleteObjectInStore();
	call	_DeleteObjectInStore
;src/main.c:1048: AddObjectToScoreboard(player); 
	ld	l, 4 (ix)
	call	_AddObjectToScoreboard
;src/main.c:1049: RefreshScoreboard();
	call	_RefreshScoreboard
	jp	00112$
00140$:
;src/main.c:1054: else if (currentTile == TILESET_WELL && (potScore[player] > 0 || coinScore[player] > 0)) {	
	ld	a, -5 (ix)
	sub	a, #0x26
	jp	NZ,00135$
	ld	a, #<(_potScore)
	add	a, 4 (ix)
	ld	-2 (ix), a
	ld	a, #>(_potScore)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ,00134$
	ld	bc, #_coinScore+0
	ld	l,4 (ix)
	ld	h,#0x00
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jp	Z, 00135$
00134$:
;src/main.c:1057: if (player == 0)
	ld	a, 4 (ix)
	or	a, a
	jr	NZ,00116$
;src/main.c:1059: cpct_px2byteM0(BG_COLOR, BG_COLOR), 20, 8);
	ld	hl, #0x0101
	push	hl
	call	_cpct_px2byteM0
	ld	h, #0x00
;src/main.c:1058: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 7, 16), 
	ld	bc, #0x0814
	push	bc
	push	hl
	ld	hl, #0xc0a7
	push	hl
	call	_cpct_drawSolidBox
	jr	00117$
00116$:
;src/main.c:1062: cpct_px2byteM0(BG_COLOR, BG_COLOR), 20, 8);
	ld	hl, #0x0101
	push	hl
	call	_cpct_px2byteM0
	ld	h, #0x00
;src/main.c:1061: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 46, 16), 
	ld	bc, #0x0814
	push	bc
	push	hl
	ld	hl, #0xc0ce
	push	hl
	call	_cpct_drawSolidBox
00117$:
;src/main.c:1064: coinScore[player] = 0; 		// throwing money
	ld	bc, #_coinScore+0
	ld	l,4 (ix)
	ld	h,#0x00
	add	hl, bc
	ld	(hl), #0x00
;src/main.c:1065: spr[player].objNum_mov = 0;	// throwing objects
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl), #0x00
;src/main.c:1066: potScore[player] = 0;		// potion value to zero
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), #0x00
;src/main.c:1068: if (!TwoPlayers) { // search for valid objects to retrieve them (only 1 player game)			
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jr	NZ,00128$
;src/main.c:1069: while (i<5) {
	ld	bc, #_playerKey+0
00124$:
	ld	a, -6 (ix)
	sub	a, #0x05
	jr	NC,00126$
;src/main.c:1070: if (playerKey[i] == doorKey[i] ) {
	ld	l,-6 (ix)
	ld	h,#0x00
	add	hl, bc
	ld	e, (hl)
	ld	a, #<(_doorKey)
	add	a, -6 (ix)
	ld	l, a
	ld	a, #>(_doorKey)
	adc	a, #0x00
	ld	h, a
	ld	a, (hl)
	sub	a, e
	jr	NZ,00161$
;src/main.c:1071: potScore[0] += playerKey[i] - 3; // increases potion value
	ld	hl, #_potScore + 0
	ld	l, (hl)
	ld	a, e
	add	a, #0xfd
	add	a,l
	ld	(#_potScore),a
;src/main.c:1072: spr[0].objNum_mov++; // increases the number of objects		
	ld	a, (#(_spr + 0x000c) + 0)
	inc	a
	ld	(#(_spr + 0x000c)),a
;src/main.c:1074: PrintObject(playerKey[i++], spr[0].objNum_mov * 3 + 7, 16);					
	ld	e, a
	add	a, a
	add	a, e
	add	a, #0x07
	ld	e, a
	ld	l, -6 (ix)
	inc	-6 (ix)
	ld	h,#0x00
	add	hl, bc
	ld	d, (hl)
	push	bc
	ld	a, #0x10
	push	af
	inc	sp
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_PrintObject
	pop	af
	inc	sp
	pop	bc
	jr	00124$
;src/main.c:1077: while (i<5)	
00161$:
	ld	e, -6 (ix)
00118$:
	ld	a, e
	sub	a, #0x05
	jr	NC,00124$
;src/main.c:1078: playerKey[i++] = 0;					
	ld	d, e
	inc	e
	ld	-6 (ix), e
	ld	l,d
	ld	h,#0x00
	add	hl, bc
	ld	(hl), #0x00
	jr	00118$
00126$:
;src/main.c:1080: DeleteObjectInStore();
	call	_DeleteObjectInStore
00128$:
;src/main.c:1082: RefreshScoreboard();
	call	_RefreshScoreboard
	jr	00143$
00135$:
;src/main.c:1086: else if ((currentTile == TILESET_DOOR || currentTile == 30) && 
	ld	a, -5 (ix)
	sub	a, #0x0e
	jr	Z,00132$
	ld	a, -5 (ix)
	sub	a, #0x1e
	jr	NZ,00143$
00132$:
;src/main.c:1087: spr[0].objNum_mov == 5 && CompareKeys()) {
	ld	a, (#(_spr + 0x000c) + 0)
	sub	a, #0x05
	jr	NZ,00143$
	call	_CompareKeys
	ld	a, l
	or	a, a
	jr	Z,00143$
;src/main.c:1088: MakeDuel();	
	call	_MakeDuel
00143$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1106: void PrintSprite(TSpr *pSpr) __z88dk_fastcall {
;	---------------------------------
; Function PrintSprite
; ---------------------------------
_PrintSprite::
;src/main.c:1109: SPR_W, SPR_H, g_maskTable);
;src/main.c:1108: cpct_getScreenPtr(CPCT_VMEM_START, pSpr->x, pSpr->y), 
	ld	c,l
	ld	b,h
	inc	hl
	inc	hl
	inc	hl
	ld	d, (hl)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	a, (hl)
	push	bc
	ld	e, a
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
	pop	iy
	ld	l, 8 (iy)
	ld	h, 9 (iy)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #_g_maskTable
	push	hl
	ld	hl, #0x0c05
	push	hl
	push	de
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
	ret
;src/main.c:1114: void DeleteSprite(TSpr *pSpr) __z88dk_fastcall {	
;	---------------------------------
; Function DeleteSprite
; ---------------------------------
_DeleteSprite::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
	ld	c, l
	ld	b, h
;src/main.c:1116: 3 + (pSpr->px & 1), 3 + (pSpr->py & 3 ? 1 : 0),	
	push	bc
	pop	iy
	ld	e, 5 (iy)
	ld	a, e
	and	a, #0x03
	jr	Z,00103$
	ld	a, #0x01
	jr	00104$
00103$:
	ld	a, #0x00
00104$:
	add	a, #0x03
	ld	-1 (ix), a
	push	bc
	pop	iy
	ld	c, 4 (iy)
	ld	a, c
	and	a, #0x01
	ld	b, a
	inc	b
	inc	b
	inc	b
;src/main.c:1115: cpct_etm_drawTileBox2x4(pSpr->px / 2, (pSpr->py - ORIG_MAP_Y) / 4, 
	ld	d, #0x00
	ld	a, e
	add	a, #0xe0
	ld	-3 (ix), a
	ld	a, d
	adc	a, #0xff
	ld	-2 (ix), a
	pop	hl
	push	hl
	bit	7, -2 (ix)
	jr	Z,00105$
	ld	hl, #0xffe3
	add	hl, de
00105$:
	sra	h
	rr	l
	sra	h
	rr	l
	ld	e, l
	srl	c
	ld	hl, #0x0f71
	push	hl
	ld	hl, #0xc140
	push	hl
	ld	a, #0x28
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	b, e
	push	bc
	call	_cpct_etm_drawTileBox2x4
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1122: void AssignFrame(TSpr *pSpr, TFrm **anim) {
;	---------------------------------
; Function AssignFrame
; ---------------------------------
_AssignFrame::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:1123: u8 animPause = 2;
	ld	d, #0x02
;src/main.c:1124: if (pSpr->num > 3) animPause = 1; // slow enemies (4 and 5) have no pause in animation
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	c, (hl)
	ld	a, #0x03
	sub	a, c
	jr	NC,00102$
	ld	d, #0x01
00102$:
;src/main.c:1125: pSpr->frm = anim[pSpr->nFrm / animPause];	
	ld	a, l
	add	a, #0x08
	ld	c, a
	ld	a, h
	adc	a, #0x00
	ld	b, a
	push	hl
	pop	iy
	ld	a, 10 (iy)
	push	bc
	ld	e, a
	push	de
	call	__divuchar
	pop	af
	pop	bc
	ld	h, #0x00
	add	hl, hl
	ex	de,hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	pop	ix
	ret
;src/main.c:1130: void SelectFrame(TSpr *pSpr) __z88dk_fastcall {
;	---------------------------------
; Function SelectFrame
; ---------------------------------
_SelectFrame::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	-2 (ix), l
	ld	-1 (ix), h
;src/main.c:1132: if(pSpr->ident == SORCERER1) {
	pop	hl
	push	hl
	inc	hl
	ld	c, (hl)
;src/main.c:1133: switch(pSpr->status) {
	ld	a, -2 (ix)
	add	a, #0x06
	ld	e, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	d, a
;src/main.c:1132: if(pSpr->ident == SORCERER1) {
	ld	a, c
	or	a, a
	jr	NZ,00149$
;src/main.c:1133: switch(pSpr->status) {
	ld	a, (de)
	ld	c, a
	ld	a, #0x04
	sub	a, c
	jp	C, 00151$
	ld	b, #0x00
	ld	hl, #00245$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00245$:
	jp	00101$
	jp	00102$
	jp	00103$
	jp	00104$
	jp	00105$
;src/main.c:1134: case S_walkingUp: 		{AssignFrame(&spr[0], animUp_Sorcerer1); break;}
00101$:
	ld	hl, #_animUp_Sorcerer1
	push	hl
	ld	hl, #_spr
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jp	00151$
;src/main.c:1135: case S_walkingDown:		{AssignFrame(&spr[0], animDown_Sorcerer1); break;}
00102$:
	ld	hl, #_animDown_Sorcerer1
	push	hl
	ld	hl, #_spr
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jp	00151$
;src/main.c:1136: case S_walkingLeft:		{AssignFrame(&spr[0], animLeft_Sorcerer1); break;}
00103$:
	ld	hl, #_animLeft_Sorcerer1
	push	hl
	ld	hl, #_spr
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jp	00151$
;src/main.c:1137: case S_walkingRight:	{AssignFrame(&spr[0], animRight_Sorcerer1); break;}
00104$:
	ld	hl, #_animRight_Sorcerer1
	push	hl
	ld	hl, #_spr
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jp	00151$
;src/main.c:1138: case S_stopped:			{spr[0].frm = &frmSorcerer1[spr[0].dir*2];}		
00105$:
	ld	bc, #_frmSorcerer1+0
	ld	a, (#_spr + 7)
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	((_spr + 0x0008)), bc
;src/main.c:1139: }
	jp	00151$
00149$:
;src/main.c:1142: else if(pSpr->ident == SORCERER2) {
	ld	a, c
	dec	a
	jr	NZ,00146$
;src/main.c:1143: switch(pSpr->status) {
	ld	a, (de)
	ld	c, a
	ld	a, #0x04
	sub	a, c
	jp	C, 00151$
	ld	b, #0x00
	ld	hl, #00248$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00248$:
	jp	00107$
	jp	00108$
	jp	00109$
	jp	00110$
	jp	00111$
;src/main.c:1144: case S_walkingUp: 		{AssignFrame(&spr[1], animUp_Sorcerer2); break;}
00107$:
	ld	hl, #_animUp_Sorcerer2
	push	hl
	ld	hl, #(_spr + 0x000f)
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jp	00151$
;src/main.c:1145: case S_walkingDown:		{AssignFrame(&spr[1], animDown_Sorcerer2); break;}
00108$:
	ld	hl, #_animDown_Sorcerer2
	push	hl
	ld	hl, #(_spr + 0x000f)
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jp	00151$
;src/main.c:1146: case S_walkingLeft:		{AssignFrame(&spr[1], animLeft_Sorcerer2); break;}
00109$:
	ld	hl, #_animLeft_Sorcerer2
	push	hl
	ld	hl, #(_spr + 0x000f)
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jp	00151$
;src/main.c:1147: case S_walkingRight:	{AssignFrame(&spr[1], animRight_Sorcerer2); break;}
00110$:
	ld	hl, #_animRight_Sorcerer2
	push	hl
	ld	hl, #(_spr + 0x000f)
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jp	00151$
;src/main.c:1148: case S_stopped:			{spr[1].frm = &frmSorcerer2[spr[1].dir*2];}	
00111$:
	ld	bc, #_frmSorcerer2+0
	ld	a, (#_spr + 22)
	add	a, a
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	((_spr + 0x0017)), bc
;src/main.c:1149: }
	jp	00151$
00146$:
;src/main.c:1153: switch(pSpr->dir) {
	ld	a, -2 (ix)
	add	a, #0x07
	ld	e, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	d, a
;src/main.c:1152: else if(pSpr->ident == SENTINEL) {
	ld	a, c
	sub	a, #0x02
	jr	NZ,00143$
;src/main.c:1153: switch(pSpr->dir) {
	ld	a, (de)
	or	a, a
	jr	Z,00113$
	cp	a, #0x01
	jr	Z,00114$
	cp	a, #0x02
	jr	Z,00115$
	sub	a, #0x03
	jr	Z,00116$
	jp	00151$
;src/main.c:1154: case D_up:				{AssignFrame(pSpr, animUp_Sentinel); break;}
00113$:
	ld	hl, #_animUp_Sentinel
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jp	00151$
;src/main.c:1155: case D_down:			{AssignFrame(pSpr, animDown_Sentinel); break;}
00114$:
	ld	hl, #_animDown_Sentinel
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jp	00151$
;src/main.c:1156: case D_left:			{AssignFrame(pSpr, animLeft_Sentinel); break;}
00115$:
	ld	hl, #_animLeft_Sentinel
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jp	00151$
;src/main.c:1157: case D_right:			{AssignFrame(pSpr, animRight_Sentinel);}
00116$:
	ld	hl, #_animRight_Sentinel
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
;src/main.c:1158: }
	jp	00151$
00143$:
;src/main.c:1161: else if(pSpr->ident == KNIGHT) {
	ld	a, c
	sub	a, #0x03
	jr	NZ,00140$
;src/main.c:1162: switch(pSpr->dir) {
	ld	a, (de)
	or	a, a
	jr	Z,00118$
	cp	a, #0x01
	jr	Z,00119$
	cp	a, #0x02
	jr	Z,00120$
	sub	a, #0x03
	jr	Z,00121$
	jp	00151$
;src/main.c:1163: case D_up:				{AssignFrame(pSpr, animUp_Knight); break;}
00118$:
	ld	hl, #_animUp_Knight
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jp	00151$
;src/main.c:1164: case D_down:			{AssignFrame(pSpr, animDown_Knight); break;}
00119$:
	ld	hl, #_animDown_Knight
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jp	00151$
;src/main.c:1165: case D_left:			{AssignFrame(pSpr, animLeft_Knight); break;}
00120$:
	ld	hl, #_animLeft_Knight
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jp	00151$
;src/main.c:1166: case D_right:			{AssignFrame(pSpr, animRight_Knight);}
00121$:
	ld	hl, #_animRight_Knight
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
;src/main.c:1167: }
	jp	00151$
00140$:
;src/main.c:1170: else if(pSpr->ident == GHOST) {
	ld	a, c
	sub	a, #0x04
	jr	NZ,00137$
;src/main.c:1171: switch(pSpr->dir) {
	ld	a, (de)
	or	a, a
	jr	Z,00123$
	cp	a, #0x01
	jr	Z,00124$
	cp	a, #0x02
	jr	Z,00125$
	sub	a, #0x03
	jr	Z,00126$
	jp	00151$
;src/main.c:1172: case D_up:				{AssignFrame(pSpr, animUp_Ghost); break;}
00123$:
	ld	hl, #_animUp_Ghost
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jp	00151$
;src/main.c:1173: case D_down:			{AssignFrame(pSpr, animDown_Ghost); break;}
00124$:
	ld	hl, #_animDown_Ghost
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jr	00151$
;src/main.c:1174: case D_left:			{AssignFrame(pSpr, animLeft_Ghost); break;}
00125$:
	ld	hl, #_animLeft_Ghost
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jr	00151$
;src/main.c:1175: case D_right:			{AssignFrame(pSpr, animRight_Ghost);}
00126$:
	ld	hl, #_animRight_Ghost
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
;src/main.c:1176: }
	jr	00151$
00137$:
;src/main.c:1179: else if(pSpr->ident == WITCH) {
	ld	a, c
	sub	a, #0x06
	jr	NZ,00134$
;src/main.c:1180: switch(pSpr->dir) {
	ld	a, (de)
	cp	a, #0x02
	jr	Z,00128$
	sub	a, #0x03
	jr	Z,00129$
	jr	00151$
;src/main.c:1181: case D_left:			{AssignFrame(pSpr, animLeft_Witch); break;}
00128$:
	ld	hl, #_animLeft_Witch
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
	jr	00151$
;src/main.c:1182: case D_right:			{AssignFrame(pSpr, animRight_Witch);}
00129$:
	ld	hl, #_animRight_Witch
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
;src/main.c:1183: }
	jr	00151$
00134$:
;src/main.c:1186: else if(pSpr->ident == BAT)	AssignFrame(pSpr, anim_Bat);
	ld	a, c
	sub	a, #0x05
	jr	NZ,00151$
	ld	hl, #_anim_Bat
	ld	c, l
	ld	b, h
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_AssignFrame
	pop	af
	pop	af
00151$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1191: void PrintExplosion(TSpr *pSpr, u8 nFrame)
;	---------------------------------
; Function PrintExplosion
; ---------------------------------
_PrintExplosion::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:1195: SPR_W, SPR_H, g_maskTable);
;src/main.c:1194: cpct_getScreenPtr(CPCT_VMEM_START, pSpr->x, pSpr->y), 
	ld	c,4 (ix)
	ld	b,5 (ix)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	d, (hl)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	e, (hl)
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	c, l
	ld	b, h
;src/main.c:1193: cpct_drawSpriteMaskedAlignedTable(g_explosion[nFrame], 
	ld	e,6 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	ld	de, #_g_explosion
	add	hl, de
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0c05
	push	de
	push	bc
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
	pop	ix
	ret
;src/main.c:1200: void ExplodeSprite(u8 player, u8 deleteSpr)
;	---------------------------------
; Function ExplodeSprite
; ---------------------------------
_ExplodeSprite::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
;src/main.c:1204: while (ct++ < 2) {	
	ld	de, #_spr+0
	ld	c,4 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl,de
	ld	c, l
	ld	b, h
	ld	-2 (ix), c
	ld	-1 (ix), b
	ld	-4 (ix), c
	ld	-3 (ix), b
	push	de
	ld	e,5 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	pop	de
	add	hl,de
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	-7 (ix), #0x00
00103$:
	ld	a, -7 (ix)
	inc	-7 (ix)
	sub	a, #0x02
	jr	NC,00105$
;src/main.c:1205: PrintExplosion(&spr[player], 0); Pause(40);
	ld	e, c
	ld	d, b
	push	bc
	xor	a, a
	push	af
	inc	sp
	push	de
	call	_PrintExplosion
	pop	af
	inc	sp
	ld	hl, #0x0028
	call	_Pause
	pop	bc
;src/main.c:1206: PrintExplosion(&spr[player], 1); Pause(40);
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	push	de
	call	_PrintExplosion
	pop	af
	inc	sp
	ld	hl, #0x0028
	call	_Pause
	pop	bc
;src/main.c:1207: if (deleteSpr > FALSE) {
	ld	a, 5 (ix)
	or	a, a
	jr	Z,00103$
;src/main.c:1208: DeleteSprite(&spr[player]); // delete player
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	bc
	call	_DeleteSprite
	pop	bc
;src/main.c:1209: PrintSprite(&spr[deleteSpr]); // reprint enemy, which may have been partially erased
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	bc
	call	_PrintSprite
	pop	bc
	jr	00103$
00105$:
;src/main.c:1212: PrintExplosion(&spr[player], 0); Pause(40);
	ld	e, c
	ld	d, b
	push	bc
	xor	a, a
	push	af
	inc	sp
	push	de
	call	_PrintExplosion
	pop	af
	inc	sp
	ld	hl, #0x0028
	call	_Pause
	pop	bc
;src/main.c:1213: if (deleteSpr > FALSE) {
	ld	a, 5 (ix)
	or	a, a
	jr	Z,00108$
;src/main.c:1214: DeleteSprite(&spr[player]);
	ld	l, c
	ld	h, b
	call	_DeleteSprite
;src/main.c:1215: PrintSprite(&spr[deleteSpr]);
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	call	_PrintSprite
00108$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1221: u8 SpriteCollision(u8 x, u8 y, TSpr *pSpr, u8 marginX) {
;	---------------------------------
; Function SpriteCollision
; ---------------------------------
_SpriteCollision::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
;src/main.c:1222: u8 marginY = marginX+marginX;	
	ld	a, 8 (ix)
	add	a, a
	ld	-7 (ix), a
;src/main.c:1223: if (x+OBJ_W > pSpr->x-marginX && x-marginX < pSpr->x+SPR_W) // check the X coordinate with the sprite		
	ld	c, 4 (ix)
	ld	b, #0x00
	ld	hl, #0x0004
	add	hl,bc
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	e,6 (ix)
	ld	d,7 (ix)
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	ld	a, 8 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	a, l
	sub	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, h
	sbc	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	sub	a, -6 (ix)
	ld	a, -1 (ix)
	sbc	a, -5 (ix)
	jp	PO, 00125$
	xor	a, #0x80
00125$:
	jp	P, 00105$
	ld	a, c
	sub	a, -4 (ix)
	ld	c, a
	ld	a, b
	sbc	a, -3 (ix)
	ld	b, a
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00126$
	xor	a, #0x80
00126$:
	jp	P, 00105$
;src/main.c:1224: if (y+OBJ_H > pSpr->y-marginY && y-marginY < pSpr->y+SPR_H) // check the Y coordinate with the sprite
	ld	c, 5 (ix)
	ld	b, #0x00
	ld	hl, #0x0008
	add	hl,bc
	ld	-2 (ix), l
	ld	-1 (ix), h
	ex	de,hl
	inc	hl
	inc	hl
	inc	hl
	ld	e, (hl)
	ld	d, #0x00
	ld	l, -7 (ix)
	ld	h, #0x00
	ld	a, e
	sub	a, l
	ld	-4 (ix), a
	ld	a, d
	sbc	a, h
	ld	-3 (ix), a
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	ld	a, -3 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00127$
	xor	a, #0x80
00127$:
	jp	P, 00105$
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
	ld	hl, #0x000c
	add	hl, de
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00128$
	xor	a, #0x80
00128$:
	jp	P, 00105$
;src/main.c:1225: return TRUE;	
	ld	l, #0x01
	jr	00107$
00105$:
;src/main.c:1226: return FALSE;
	ld	l, #0x00
00107$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1242: void MoveUp(TSpr *pSpr) __z88dk_fastcall { 
;	---------------------------------
; Function MoveUp
; ---------------------------------
_MoveUp::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/main.c:1244: if (pSpr->y > ORIG_MAP_Y && OnBackground(pSpr->x-1, pSpr->y-2)) {
	ld	-2 (ix), l
	ld	-1 (ix), h
	inc	hl
	inc	hl
	inc	hl
	ld	c,l
	ld	b,h
	ld	a, (bc)
	ld	e, a
	ld	a, #0x20
	sub	a, e
	jr	NC,00107$
	dec	e
	dec	e
	ld	a, -2 (ix)
	add	a, #0x02
	ld	-4 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	pop	hl
	push	hl
	ld	d, (hl)
	dec	d
	push	bc
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_OnBackground
	pop	af
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00107$
;src/main.c:1245: pSpr->y -= 2;
	ld	a, (bc)
	add	a, #0xfe
	ld	(bc), a
;src/main.c:1246: if (pSpr->power_maxV > 0 && OnBackground(pSpr->x-1, pSpr->y-2))
	pop	de
	pop	hl
	push	hl
	push	de
	ld	de, #0x000e
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z,00102$
	ld	a, (bc)
	ld	e, a
	dec	e
	dec	e
	pop	hl
	push	hl
	ld	d, (hl)
	dec	d
	push	bc
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_OnBackground
	pop	af
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00102$
;src/main.c:1247: pSpr->y -= 2; // powerUp speed*2
	ld	a, (bc)
	add	a, #0xfe
	ld	(bc), a
00102$:
;src/main.c:1249: pSpr->dir = D_up;
	ld	a, -2 (ix)
	add	a, #0x07
	ld	c, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	b, a
	xor	a, a
	ld	(bc), a
;src/main.c:1250: pSpr->status = S_walkingUp;
	ld	a, -2 (ix)
	add	a, #0x06
	ld	c, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	b, a
	xor	a, a
	ld	(bc), a
00107$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1255: void MoveDown(TSpr *pSpr) __z88dk_fastcall {
;	---------------------------------
; Function MoveDown
; ---------------------------------
_MoveDown::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/main.c:1257: if (pSpr->y + SPR_H < GLOBAL_MAX_Y && OnBackground(pSpr->x-1, pSpr->y+4)) {
	ld	-2 (ix), l
	ld	-1 (ix), h
	inc	hl
	inc	hl
	inc	hl
	ld	c,l
	ld	b,h
	ld	a, (bc)
	ld	e, a
	ld	l, e
	ld	h, #0x00
	push	de
	ld	de, #0x000c
	add	hl, de
	pop	de
	ld	a, l
	sub	a, #0xc8
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00107$
	inc	e
	inc	e
	inc	e
	inc	e
	ld	a, -2 (ix)
	add	a, #0x02
	ld	-4 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	pop	hl
	push	hl
	ld	d, (hl)
	dec	d
	push	bc
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_OnBackground
	pop	af
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00107$
;src/main.c:1258: pSpr->y += 2;
	ld	a, (bc)
	add	a, #0x02
	ld	(bc), a
;src/main.c:1259: if (pSpr->power_maxV > 0 && OnBackground(pSpr->x-1, pSpr->y+4))
	pop	de
	pop	hl
	push	hl
	push	de
	ld	de, #0x000e
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z,00102$
	ld	a, (bc)
	ld	e, a
	inc	e
	inc	e
	inc	e
	inc	e
	pop	hl
	push	hl
	ld	d, (hl)
	dec	d
	push	bc
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_OnBackground
	pop	af
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00102$
;src/main.c:1260: pSpr->y += 2; // powerUp speed*2
	ld	a, (bc)
	add	a, #0x02
	ld	(bc), a
00102$:
;src/main.c:1262: pSpr->dir = D_down;
	ld	a, -2 (ix)
	add	a, #0x07
	ld	l, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), #0x01
;src/main.c:1263: pSpr->status = S_walkingDown;
	ld	a, -2 (ix)
	add	a, #0x06
	ld	l, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), #0x01
00107$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1268: void MoveLeft(TSpr *pSpr) __z88dk_fastcall {
;	---------------------------------
; Function MoveLeft
; ---------------------------------
_MoveLeft::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/main.c:1270: if (OnBackground(pSpr->x-3, pSpr->y+1)) {
	ld	-2 (ix), l
	ld	-1 (ix), h
	inc	hl
	inc	hl
	inc	hl
	ld	c,l
	ld	b,h
	ld	a, (bc)
	ld	d, a
	inc	d
	ld	a, -2 (ix)
	add	a, #0x02
	ld	-4 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	pop	hl
	push	hl
	ld	a, (hl)
	add	a, #0xfd
	push	bc
	ld	e, a
	push	de
	call	_OnBackground
	pop	af
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00106$
;src/main.c:1271: pSpr->x--;
	pop	hl
	push	hl
	ld	e, (hl)
	dec	e
	pop	hl
	push	hl
	ld	(hl), e
;src/main.c:1272: if (pSpr->power_maxV > 0 && OnBackground(pSpr->x-3, pSpr->y+1))
	pop	de
	pop	hl
	push	hl
	push	de
	ld	de, #0x000e
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z,00102$
	ld	a, (bc)
	ld	c, a
	inc	c
	pop	hl
	push	hl
	ld	a, (hl)
	add	a, #0xfd
	ld	b, a
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_OnBackground
	pop	af
	ld	a, l
	or	a, a
	jr	Z,00102$
;src/main.c:1273: pSpr->x--; // powerUp speed*2
	pop	hl
	push	hl
	ld	c, (hl)
	dec	c
	pop	hl
	push	hl
	ld	(hl), c
00102$:
;src/main.c:1275: pSpr->dir = D_left;
	ld	a, -2 (ix)
	add	a, #0x07
	ld	l, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), #0x02
;src/main.c:1276: pSpr->status = S_walkingLeft;
	ld	a, -2 (ix)
	add	a, #0x06
	ld	l, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), #0x02
00106$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1281: void MoveRight(TSpr *pSpr) __z88dk_fastcall { 
;	---------------------------------
; Function MoveRight
; ---------------------------------
_MoveRight::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
;src/main.c:1283: if (OnBackground(pSpr->x+1, pSpr->y+1)) {
	ld	-2 (ix), l
	ld	-1 (ix), h
	inc	hl
	inc	hl
	inc	hl
	ld	c,l
	ld	b,h
	ld	a, (bc)
	ld	d, a
	inc	d
	ld	a, -2 (ix)
	add	a, #0x02
	ld	-4 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	pop	hl
	push	hl
	ld	a, (hl)
	inc	a
	push	bc
	ld	e, a
	push	de
	call	_OnBackground
	pop	af
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00106$
;src/main.c:1284: pSpr->x++;
	pop	hl
	push	hl
	ld	e, (hl)
	inc	e
	pop	hl
	push	hl
	ld	(hl), e
;src/main.c:1285: if (pSpr->power_maxV > 0 && OnBackground(pSpr->x+1, pSpr->y+1)) 
	pop	de
	pop	hl
	push	hl
	push	de
	ld	de, #0x000e
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	Z,00102$
	ld	a, (bc)
	ld	c, a
	inc	c
	pop	hl
	push	hl
	ld	b, (hl)
	inc	b
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_OnBackground
	pop	af
	ld	a, l
	or	a, a
	jr	Z,00102$
;src/main.c:1286: pSpr->x++; // powerUp speed*2
	pop	hl
	push	hl
	ld	c, (hl)
	inc	c
	pop	hl
	push	hl
	ld	(hl), c
00102$:
;src/main.c:1288: pSpr->dir = D_right;
	ld	a, -2 (ix)
	add	a, #0x07
	ld	l, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), #0x03
;src/main.c:1289: pSpr->status = S_walkingRight;
	ld	a, -2 (ix)
	add	a, #0x06
	ld	l, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), #0x03
00106$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1295: void WalkIn(TSpr *pSpr, u8 dir) {
;	---------------------------------
; Function WalkIn
; ---------------------------------
_WalkIn::
;src/main.c:1296: pSpr->nFrm = 0;
	pop	de
	pop	bc
	push	bc
	push	de
	ld	hl, #0x000a
	add	hl, bc
	ld	(hl), #0x00
;src/main.c:1297: pSpr->dir = dir;
	ld	hl, #0x0007
	add	hl, bc
	ld	iy, #4
	add	iy, sp
	ld	a, 0 (iy)
	ld	(hl), a
;src/main.c:1298: pSpr->status = dir;
	ld	hl, #0x0006
	add	hl, bc
	ld	a, 0 (iy)
	ld	(hl), a
;src/main.c:1299: pSpr->print_minV = TRUE; // the sprite must be printed, it will move
	ld	hl, #0x000d
	add	hl, bc
	ld	(hl), #0x01
	ret
;src/main.c:1304: void Stop(TSpr *pSpr) __z88dk_fastcall {
;	---------------------------------
; Function Stop
; ---------------------------------
_Stop::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/main.c:1305: cpct_scanKeyboard_f(); // check the pressed keys
	push	hl
	call	_cpct_scanKeyboard_f
	pop	bc
;src/main.c:1306: if(cpct_isKeyPressed(ctlUp[pSpr->ident]))			WalkIn(pSpr, D_up);
	ld	de, #_ctlUp+0
	ld	hl, #0x0001
	add	hl,bc
	ex	(sp), hl
	pop	hl
	push	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	push	bc
	ld	l, e
	call	_cpct_isKeyPressed
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00119$
	xor	a, a
	push	af
	inc	sp
	push	bc
	call	_WalkIn
	pop	af
	inc	sp
	jp	00121$
00119$:
;src/main.c:1307: else if(cpct_isKeyPressed(ctlDown[pSpr->ident]))	WalkIn(pSpr, D_down);
	pop	hl
	push	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	ld	de, #_ctlDown
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	bc
	call	_cpct_isKeyPressed
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00116$
	ld	a, #0x01
	push	af
	inc	sp
	push	bc
	call	_WalkIn
	pop	af
	inc	sp
	jp	00121$
00116$:
;src/main.c:1308: else if(cpct_isKeyPressed(ctlLeft[pSpr->ident]))	WalkIn(pSpr, D_left);
	pop	hl
	push	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	ld	de, #_ctlLeft
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	bc
	call	_cpct_isKeyPressed
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00113$
	ld	a, #0x02
	push	af
	inc	sp
	push	bc
	call	_WalkIn
	pop	af
	inc	sp
	jr	00121$
00113$:
;src/main.c:1309: else if(cpct_isKeyPressed(ctlRight[pSpr->ident]))	WalkIn(pSpr, D_right);	
	pop	hl
	push	hl
	ld	l, (hl)
	ld	h, #0x00
	add	hl, hl
	ld	de, #_ctlRight
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	bc
	call	_cpct_isKeyPressed
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00110$
	ld	a, #0x03
	push	af
	inc	sp
	push	bc
	call	_WalkIn
	pop	af
	inc	sp
	jr	00121$
00110$:
;src/main.c:1311: else if(cpct_isKeyPressed(ctlAbort)) {
	ld	hl, (_ctlAbort)
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00107$
;src/main.c:1312: spr[0].lives_speed = 0;
	ld	hl, #(_spr + 0x000b)
	ld	(hl), #0x00
;src/main.c:1313: spr[1].lives_speed = 0;
	ld	bc, #_spr + 26
	xor	a, a
	ld	(bc), a
;src/main.c:1314: GameOver(2);
	ld	a, #0x02
	push	af
	inc	sp
	call	_GameOver
	inc	sp
	jr	00121$
00107$:
;src/main.c:1317: else if(cpct_isKeyPressed(ctlPause)) {
	ld	hl, (_ctlPause)
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00121$
;src/main.c:1318: Wait4Key(ctlPause);
	ld	hl, (_ctlPause)
	push	hl
	call	_Wait4Key
	pop	af
;src/main.c:1319: while (!cpct_isAnyKeyPressed());
00101$:
	call	_cpct_isAnyKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00101$
;src/main.c:1320: Wait4Key(ctlPause);
	ld	hl, (_ctlPause)
	push	hl
	call	_Wait4Key
	pop	af
00121$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1328: void WalkAnim(TSpr *pSpr, u8 dir) {
;	---------------------------------
; Function WalkAnim
; ---------------------------------
_WalkAnim::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:1329: u8 animPause = 2;
	ld	c, #0x02
;src/main.c:1330: if (pSpr->num > 3) animPause = 1; // slow enemies (4 and 5) have no pause in animation
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	a, (de)
	ld	b, a
	ld	a, #0x03
	sub	a, b
	jr	NC,00102$
	ld	c, #0x01
00102$:
;src/main.c:1331: pSpr->dir = dir;
	ld	hl, #0x0007
	add	hl, de
	ld	a, 6 (ix)
	ld	(hl), a
;src/main.c:1332: if(++pSpr->nFrm == animPause*2) pSpr->nFrm = 0;
	ld	iy, #0x000a
	add	iy, de
	inc	0 (iy)
	ld	e, 0 (iy)
	ld	b, #0x00
	sla	c
	rl	b
	ld	d, #0x00
	ld	a, c
	sub	a, e
	jr	NZ,00105$
	ld	a, b
	sub	a, d
	jr	NZ,00105$
	ld	0 (iy), #0x00
00105$:
	pop	ix
	ret
;src/main.c:1337: void Walk(TSpr *pSpr) __z88dk_fastcall {
;	---------------------------------
; Function Walk
; ---------------------------------
_Walk::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	ld	-2 (ix), l
	ld	-1 (ix), h
;src/main.c:1338: cpct_scanKeyboard_f(); // check the pressed keys
	call	_cpct_scanKeyboard_f
;src/main.c:1340: if(cpct_isKeyPressed(ctlRight[pSpr->ident])) {	
	ld	de, #_ctlRight+0
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	inc	bc
	ld	a, (bc)
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	push	bc
	ld	l, e
	call	_cpct_isKeyPressed
	ld	e, l
	pop	bc
	ld	a, (bc)
	ld	l, a
;src/main.c:1341: if (cpct_isKeyPressed(ctlUp[pSpr->ident])) 			MoveUp(pSpr);  // diagonal derecha-arriba
	ld	h, #0x00
	add	hl, hl
	ex	(sp), hl
;src/main.c:1340: if(cpct_isKeyPressed(ctlRight[pSpr->ident])) {	
	ld	a, e
	or	a, a
	jr	Z,00121$
;src/main.c:1341: if (cpct_isKeyPressed(ctlUp[pSpr->ident])) 			MoveUp(pSpr);  // diagonal derecha-arriba
	ld	de, #_ctlUp+0
	pop	hl
	push	hl
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	push	bc
	ld	l, e
	call	_cpct_isKeyPressed
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00104$
	pop	bc
	pop	hl
	push	hl
	push	bc
	call	_MoveUp
	jr	00105$
00104$:
;src/main.c:1342: else if(cpct_isKeyPressed(ctlDown[pSpr->ident]))	MoveDown(pSpr); // diagonal derecha-abajo
	ld	de, #_ctlDown+0
	ld	a, (bc)
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00105$
	pop	bc
	pop	hl
	push	hl
	push	bc
	call	_MoveDown
00105$:
;src/main.c:1343: MoveRight(pSpr);
	pop	bc
	pop	hl
	push	hl
	push	bc
	call	_MoveRight
;src/main.c:1344: WalkAnim(pSpr, D_right);
	ld	a, #0x03
	push	af
	inc	sp
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_WalkAnim
	pop	af
	inc	sp
	jp	00123$
00121$:
;src/main.c:1347: else if(cpct_isKeyPressed(ctlLeft[pSpr->ident])) {	
	ld	de, #_ctlLeft+0
	pop	hl
	push	hl
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	push	bc
	ld	l, e
	call	_cpct_isKeyPressed
	ld	e, l
	pop	bc
;src/main.c:1340: if(cpct_isKeyPressed(ctlRight[pSpr->ident])) {	
	ld	a, (bc)
	ld	l, a
;src/main.c:1341: if (cpct_isKeyPressed(ctlUp[pSpr->ident])) 			MoveUp(pSpr);  // diagonal derecha-arriba
	ld	h, #0x00
	add	hl, hl
	ex	(sp), hl
;src/main.c:1347: else if(cpct_isKeyPressed(ctlLeft[pSpr->ident])) {	
	ld	a, e
	or	a, a
	jr	Z,00118$
;src/main.c:1348: if (cpct_isKeyPressed(ctlUp[pSpr->ident])) 			MoveUp(pSpr); // diagonal izda-arriba
	ld	de, #_ctlUp+0
	pop	hl
	push	hl
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	push	bc
	ld	l, e
	call	_cpct_isKeyPressed
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00109$
	pop	bc
	pop	hl
	push	hl
	push	bc
	call	_MoveUp
	jr	00110$
00109$:
;src/main.c:1349: else if(cpct_isKeyPressed(ctlDown[pSpr->ident]))	MoveDown(pSpr); // diagonal izda-abajo
	ld	a, (bc)
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	ld	de, #_ctlDown
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00110$
	pop	bc
	pop	hl
	push	hl
	push	bc
	call	_MoveDown
00110$:
;src/main.c:1350: MoveLeft(pSpr); 
	pop	bc
	pop	hl
	push	hl
	push	bc
	call	_MoveLeft
;src/main.c:1351: WalkAnim(pSpr, D_left);
	ld	a, #0x02
	push	af
	inc	sp
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_WalkAnim
	pop	af
	inc	sp
	jr	00123$
00118$:
;src/main.c:1354: else if(cpct_isKeyPressed(ctlUp[pSpr->ident])) {
	ld	de, #_ctlUp+0
	pop	hl
	push	hl
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	h, (hl)
	push	bc
	ld	l, e
	call	_cpct_isKeyPressed
	pop	bc
	ld	a, l
	or	a, a
	jr	Z,00115$
;src/main.c:1355: MoveUp(pSpr); 
	pop	bc
	pop	hl
	push	hl
	push	bc
	call	_MoveUp
;src/main.c:1356: WalkAnim(pSpr, D_up);
	xor	a, a
	push	af
	inc	sp
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_WalkAnim
	pop	af
	inc	sp
	jr	00123$
00115$:
;src/main.c:1359: else if(cpct_isKeyPressed(ctlDown[pSpr->ident])) {
	ld	a, (bc)
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	ld	de, #_ctlDown
	add	hl, de
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00112$
;src/main.c:1360: MoveDown(pSpr); 
	pop	bc
	pop	hl
	push	hl
	push	bc
	call	_MoveDown
;src/main.c:1361: WalkAnim(pSpr, D_down);
	ld	a, #0x01
	push	af
	inc	sp
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	_WalkAnim
	pop	af
	inc	sp
	jr	00123$
00112$:
;src/main.c:1364: pSpr->status = S_stopped;
	ld	a, -2 (ix)
	add	a, #0x06
	ld	l, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), #0x04
00123$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1369: void RunStatus(TSpr *pSpr) __z88dk_fastcall {
;	---------------------------------
; Function RunStatus
; ---------------------------------
_RunStatus::
	ld	c, l
	ld	b, h
;src/main.c:1370: if (pSpr->status == S_stopped)
	push	bc
	pop	iy
	ld	a, 6 (iy)
	sub	a, #0x04
	jr	NZ,00102$
;src/main.c:1371: Stop(pSpr);
	ld	l, c
	ld	h, b
	jp  _Stop
00102$:
;src/main.c:1373: Walk(pSpr);	
	ld	l, c
	ld	h, b
	jp  _Walk
;src/main.c:1378: void PlayerLoop(TSpr *pSpr) __z88dk_fastcall {
;	---------------------------------
; Function PlayerLoop
; ---------------------------------
_PlayerLoop::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	c, l
	ld	b, h
;src/main.c:1379: RunStatus(pSpr); // calls the appropriate function based on the status of the main sprites
	push	bc
	ld	l, c
	ld	h, b
	call	_RunStatus
	pop	bc
;src/main.c:1380: if (pSpr->print_minV) { // does the sprite have to be reprinted?
	ld	hl, #0x000d
	add	hl,bc
	ex	(sp), hl
	pop	hl
	push	hl
	ld	a, (hl)
	or	a, a
	jr	Z,00106$
;src/main.c:1381: SelectFrame(pSpr); // we assign the next frame of the animation to the sprite
	push	bc
	ld	l, c
	ld	h, b
	call	_SelectFrame
	pop	bc
;src/main.c:1382: DeleteSprite(pSpr); // delete the sprite
	push	bc
	ld	l, c
	ld	h, b
	call	_DeleteSprite
	pop	bc
;src/main.c:1383: pSpr->px = pSpr->x; // save the current X coordinate
	ld	hl, #0x0004
	add	hl,bc
	ex	de,hl
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	(de), a
;src/main.c:1384: pSpr->py = pSpr->y; // save the current Y coordinate
	ld	hl, #0x0005
	add	hl,bc
	ex	de,hl
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	(de), a
;src/main.c:1385: PrintSprite(pSpr); // paint the sprite in the new XY position
	push	bc
	ld	l, c
	ld	h, b
	call	_PrintSprite
	pop	bc
;src/main.c:1386: ctInactivity[pSpr->num] = 0; // on the move
	ld	de, #_ctInactivity+0
	ld	a, (bc)
	ld	l, a
	ld	h,#0x00
	add	hl, de
	ld	(hl), #0x00
;src/main.c:1387: if (pSpr->status == S_stopped) 
	push	bc
	pop	iy
	ld	a, 6 (iy)
	sub	a, #0x04
	jr	NZ,00108$
;src/main.c:1388: pSpr->print_minV = FALSE; // if it is stopped it is no longer necessary to continue printing the sprite
	pop	hl
	push	hl
	ld	(hl), #0x00
	jr	00108$
00106$:
;src/main.c:1391: else if (ctMainLoop % 5 == 0)
	push	bc
	ld	hl, #0x0005
	push	hl
	ld	hl, (_ctMainLoop)
	push	hl
	call	__modsint
	pop	af
	pop	af
	pop	bc
	ld	a, h
	or	a,l
	jr	NZ,00108$
;src/main.c:1392: PrintSprite(pSpr);
	ld	l, c
	ld	h, b
	call	_PrintSprite
00108$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1409: void ExplodePlayerInDuel(u8 player) __z88dk_fastcall {
;	---------------------------------
; Function ExplodePlayerInDuel
; ---------------------------------
_ExplodePlayerInDuel::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	-1 (ix), l
;src/main.c:1410: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, spr[player].x, 122), cpct_px2byteM0(4, 4), SPR_W, SPR_H);
	ld	hl, #0x0404
	push	hl
	call	_cpct_px2byteM0
	ld	c, l
	ld	b, #0x00
	ld	e,-1 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	ld	de, #_spr
	add	hl, de
	inc	hl
	inc	hl
	ld	a, (hl)
	add	a, #0xb0
	ld	e, a
	ld	a, #0x00
	adc	a, #0xd4
	ld	d, a
	push	de
	pop	iy
	push	hl
	ld	de, #0x0c05
	push	de
	push	bc
	push	iy
	call	_cpct_drawSolidBox
	xor	a, a
	push	af
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	call	_ExplodeSprite
	pop	af
	ld	bc, #0x0404
	push	bc
	call	_cpct_px2byteM0
	ld	c, l
	pop	hl
	ld	b, #0x00
	ld	e, (hl)
	ld	hl, #0xd4b0
	ld	d, #0x00
	add	hl, de
	ld	de, #0x0c05
	push	de
	push	bc
	push	hl
	call	_cpct_drawSolidBox
	inc	sp
	pop	ix
	ret
;src/main.c:1417: void MakeDuel() {
;	---------------------------------
; Function MakeDuel
; ---------------------------------
_MakeDuel::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/main.c:1420: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 18, 80), cpct_px2byteM0(4, 4), 45, 60);
	ld	hl, #0x0404
	push	hl
	call	_cpct_px2byteM0
	ld	h, #0x00
	ld	bc, #0x3c2d
	push	bc
	push	hl
	ld	hl, #0xc332
	push	hl
	call	_cpct_drawSolidBox
;src/main.c:1421: PrintFrame(18,80,60,134);
	ld	hl, #0x863c
	push	hl
	ld	hl, #0x5012
	push	hl
	call	_PrintFrame
	pop	af
	pop	af
;src/main.c:1423: spr[0].x = 23; spr[0].y = 122;
	ld	hl, #(_spr + 0x0002)
	ld	(hl), #0x17
	ld	hl, #(_spr + 0x0003)
	ld	(hl), #0x7a
;src/main.c:1425: cpct_getScreenPtr(CPCT_VMEM_START, spr[0].x, spr[0].y), SPR_W, SPR_H, g_maskTable);
	ld	hl, #(_spr + 0x0003) + 0
	ld	d, (hl)
	ld	hl, #(_spr + 0x0002) + 0
	ld	e, (hl)
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	ld	c, l
	ld	b, h
;src/main.c:1424: cpct_drawSpriteMaskedAlignedTable(g_sorcerer1_06,
	ld	hl, #_g_maskTable
	push	hl
	ld	hl, #0x0c05
	push	hl
	push	bc
	ld	hl, #_g_sorcerer1_06
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:1427: spr[1].x = 53; spr[1].y = 122;
	ld	hl, #(_spr + 0x0011)
	ld	(hl), #0x35
	ld	hl, #(_spr + 0x0012)
	ld	(hl), #0x7a
;src/main.c:1430: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, spr[1].y), SPR_W, SPR_H, g_maskTable);
	ld	a,(#(_spr + 0x0012) + 0)
	ld	-2 (ix), a
	ld	a,(#(_spr + 0x0011) + 0)
	ld	-1 (ix), a
;src/main.c:1428: if (TwoPlayers) {
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jr	Z,00102$
;src/main.c:1430: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, spr[1].y), SPR_W, SPR_H, g_maskTable);
	ld	h, -2 (ix)
	ld	l, -1 (ix)
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/main.c:1429: cpct_drawSpriteMaskedAlignedTable(g_sorcerer2_04, 
	ld	bc, #_g_sorcerer2_04+0
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0c05
	push	de
	push	hl
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
	jr	00103$
00102$:
;src/main.c:1435: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, spr[1].y), SPR_W, SPR_H, g_maskTable);
	ld	h, -2 (ix)
	ld	l, -1 (ix)
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/main.c:1434: cpct_drawSpriteMaskedAlignedTable(g_door_0, 
	ld	bc, #_g_door_0+0
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0c05
	push	de
	push	hl
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
00103$:
;src/main.c:1437: Pause(400);
	ld	hl, #0x0190
	call	_Pause
;src/main.c:1441: cpct_getScreenPtr(CPCT_VMEM_START, spr[0].x, spr[0].y), SPR_W, SPR_H, g_maskTable);
	ld	hl, #(_spr + 0x0003) + 0
	ld	d, (hl)
	ld	hl, #(_spr + 0x0002) + 0
	ld	e, (hl)
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/main.c:1440: cpct_drawSpriteMaskedAlignedTable(g_sorcerer1_08, 
	ld	bc, #_g_sorcerer1_08+0
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0c05
	push	de
	push	hl
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:1442: spr[0].x += OBJ_W;
	ld	a, (#(_spr + 0x0002) + 0)
	add	a, #0x04
	ld	(#(_spr + 0x0002)),a
;src/main.c:1443: if (TwoPlayers) {
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jr	Z,00148$
;src/main.c:1445: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, spr[1].y), SPR_W, SPR_H, g_maskTable);
	ld	hl, #(_spr + 0x0012) + 0
	ld	d, (hl)
	ld	hl, #(_spr + 0x0011) + 0
	ld	e, (hl)
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/main.c:1444: cpct_drawSpriteMaskedAlignedTable(g_sorcerer2_08, 
	ld	bc, #_g_sorcerer2_08+0
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0c05
	push	de
	push	hl
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:1446: spr[1].x -= OBJ_W;
	ld	a, (#(_spr + 0x0011) + 0)
	add	a, #0xfc
	ld	(#(_spr + 0x0011)),a
;src/main.c:1450: while (spr[0].x < 50)
00148$:
00110$:
;src/main.c:1425: cpct_getScreenPtr(CPCT_VMEM_START, spr[0].x, spr[0].y), SPR_W, SPR_H, g_maskTable);
	ld	hl, #(_spr + 0x0002) + 0
	ld	c, (hl)
;src/main.c:1450: while (spr[0].x < 50)
	ld	a, c
	sub	a, #0x32
	jp	NC, 00112$
;src/main.c:1453: spr[0].x ++;
	ld	b, c
	inc	b
	ld	hl, #(_spr + 0x0002)
	ld	(hl), b
;src/main.c:1455: cpct_getScreenPtr(CPCT_VMEM_START, spr[0].x, 125), SHT_W, SHT_H, g_maskTable);
	ld	a, #0x7d
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/main.c:1454: cpct_drawSpriteMaskedAlignedTable(g_magic_0, 
	ld	bc, #_g_maskTable
	push	bc
	ld	bc, #0x0804
	push	bc
	push	hl
	ld	hl, #_g_magic_0
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:1456: if (TwoPlayers) {
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jr	Z,00107$
;src/main.c:1457: spr[1].x --;
	ld	hl, #(_spr + 0x0011) + 0
	ld	b, (hl)
	dec	b
	ld	hl, #(_spr + 0x0011)
	ld	(hl), b
;src/main.c:1459: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, 125), SHT_W, SHT_H, g_maskTable);
	ld	a, #0x7d
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/main.c:1458: cpct_drawSpriteMaskedAlignedTable(g_magic_1, 
	ld	bc, #_g_maskTable
	push	bc
	ld	bc, #0x0804
	push	bc
	push	hl
	ld	hl, #_g_magic_1
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
00107$:
;src/main.c:1461: Pause(12);
	ld	hl, #0x000c
	call	_Pause
;src/main.c:1464: cpct_px2byteM0(4, 4), OBJ_W, OBJ_H);
	ld	hl, #0x0404
	push	hl
	call	_cpct_px2byteM0
	ld	c, l
	ld	b, #0x00
;src/main.c:1463: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, spr[0].x, 125), 
	ld	hl, #(_spr + 0x0002) + 0
	ld	e, (hl)
	ld	hl, #0xecb0
	ld	d, #0x00
	add	hl, de
	ld	de, #0x0804
	push	de
	push	bc
	push	hl
	call	_cpct_drawSolidBox
;src/main.c:1465: if (TwoPlayers)
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jp	Z, 00110$
;src/main.c:1467: cpct_px2byteM0(4, 4), OBJ_W, OBJ_H);
	ld	hl, #0x0404
	push	hl
	call	_cpct_px2byteM0
	ld	c, l
	ld	b, #0x00
;src/main.c:1466: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, spr[1].x, 125), 
	ld	hl, #(_spr + 0x0011) + 0
	ld	e, (hl)
	ld	hl, #0xecb0
	ld	d, #0x00
	add	hl, de
	ld	de, #0x0804
	push	de
	push	bc
	push	hl
	call	_cpct_drawSolidBox
	jp	00110$
00112$:
;src/main.c:1471: spr[0].x = 23;
	ld	hl, #(_spr + 0x0002)
	ld	(hl), #0x17
;src/main.c:1473: cpct_getScreenPtr(CPCT_VMEM_START, spr[0].x, spr[0].y), SPR_W, SPR_H, g_maskTable);
	ld	hl, #(_spr + 0x0003) + 0
	ld	b, (hl)
	ld	hl, #(_spr + 0x0002) + 0
	ld	c, (hl)
	push	bc
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/main.c:1472: cpct_drawSpriteMaskedAlignedTable(g_sorcerer1_06, 
	ld	bc, #_g_maskTable
	push	bc
	ld	bc, #0x0c05
	push	bc
	push	hl
	ld	hl, #_g_sorcerer1_06
	push	hl
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:1474: spr[1].x = 53;
	ld	hl, #(_spr + 0x0011)
	ld	(hl), #0x35
;src/main.c:1476: if (TwoPlayers) {
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jr	Z,00114$
;src/main.c:1478: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, spr[1].y), SPR_W, SPR_H, g_maskTable);
	ld	hl, #(_spr + 0x0012) + 0
	ld	b, (hl)
	ld	hl, #(_spr + 0x0011) + 0
	ld	c, (hl)
	push	bc
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/main.c:1477: cpct_drawSpriteMaskedAlignedTable(g_sorcerer2_04, 
	ld	bc, #_g_sorcerer2_04+0
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0c05
	push	de
	push	hl
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
00114$:
;src/main.c:1482: if (potScore[0] > potScore[1]) {
	ld	hl, #_potScore+0
	ld	c, (hl)
	inc	hl
	ld	e, (hl)
	ld	a, e
	sub	a, c
	jp	NC, 00126$
;src/main.c:1483: loser = 1;
	ld	-3 (ix), #0x01
;src/main.c:1484: ExplodePlayerInDuel(loser);
	ld	l, #0x01
	call	_ExplodePlayerInDuel
;src/main.c:1430: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, spr[1].y), SPR_W, SPR_H, g_maskTable);
	ld	hl, #(_spr + 0x0012) + 0
	ld	c, (hl)
	ld	hl, #(_spr + 0x0011) + 0
	ld	e, (hl)
;src/main.c:1485: if (TwoPlayers) {
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jr	Z,00118$
;src/main.c:1488: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, spr[1].y), SPR_W, SPR_H, g_maskTable);
	ld	d, c
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/main.c:1487: cpct_drawSpriteMaskedAlignedTable(g_sorcerer2_09, 
	ld	bc, #_g_sorcerer2_09+0
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0c05
	push	de
	push	hl
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:1489: PrintText("PLAYER1", 30, 90, 0);
	ld	hl, #0x005a
	push	hl
	ld	a, #0x1e
	push	af
	inc	sp
	ld	hl, #___str_29
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
;src/main.c:1492: if (spr[0].lives_speed < 9) spr[0].lives_speed++;
	ld	bc, #_spr + 11
	ld	a, (bc)
	cp	a, #0x09
	jp	NC, 00127$
	inc	a
	ld	(bc), a
	jp	00127$
00118$:
;src/main.c:1497: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, spr[1].y), SPR_W, SPR_H, g_maskTable);
	ld	d, c
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/main.c:1496: cpct_drawSpriteMaskedAlignedTable(g_door_1, 
	ld	bc, #_g_door_1+0
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0c05
	push	de
	push	hl
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:1498: PrintText("LEVEL", 33, 90, 0);
	ld	hl, #0x005a
	push	hl
	ld	a, #0x21
	push	af
	inc	sp
	ld	hl, #___str_30
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
	jr	00127$
00126$:
;src/main.c:1502: else if (potScore[0] < potScore[1]) {
	ld	a, c
	sub	a, e
	jr	NC,00123$
;src/main.c:1503: loser = 0;
	ld	-3 (ix), #0x00
;src/main.c:1504: ExplodePlayerInDuel(loser);
	ld	l, #0x00
	call	_ExplodePlayerInDuel
;src/main.c:1507: cpct_getScreenPtr(CPCT_VMEM_START, spr[0].x, spr[0].y), SPR_W, SPR_H, g_maskTable);
	ld	hl, #(_spr + 0x0003) + 0
	ld	d, (hl)
	ld	hl, #(_spr + 0x0002) + 0
	ld	e, (hl)
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/main.c:1506: cpct_drawSpriteMaskedAlignedTable(g_sorcerer1_09, 
	ld	bc, #_g_sorcerer1_09+0
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0c05
	push	de
	push	hl
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:1508: PrintText("PLAYER2", 30, 90, 0);
	ld	hl, #0x005a
	push	hl
	ld	a, #0x1e
	push	af
	inc	sp
	ld	hl, #___str_31
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
;src/main.c:1511: if (spr[1].lives_speed < 9) spr[1].lives_speed++;
	ld	bc, #_spr + 26
	ld	a, (bc)
	cp	a, #0x09
	jr	NC,00127$
	inc	a
	ld	(bc), a
	jr	00127$
00123$:
;src/main.c:1515: PrintText("NOBODY", 32, 90, 0);
	ld	bc, #___str_32
	ld	hl, #0x005a
	push	hl
	ld	a, #0x20
	push	af
	inc	sp
	push	bc
	call	_PrintText
	pop	af
	pop	af
	inc	sp
;src/main.c:1516: loser = 2;
	ld	-3 (ix), #0x02
00127$:
;src/main.c:1518: if (TwoPlayers)
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jr	Z,00129$
;src/main.c:1519: PrintText("WINS>", 33, 101, 0);
	ld	hl, #0x0065
	push	hl
	ld	a, #0x21
	push	af
	inc	sp
	ld	hl, #___str_33
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
	jr	00130$
00129$:
;src/main.c:1521: PrintText("COMPLETED", 27, 101, 0);	
	ld	hl, #0x0065
	push	hl
	ld	a, #0x1b
	push	af
	inc	sp
	ld	hl, #___str_34
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
00130$:
;src/main.c:1523: Pause(1000);
	ld	hl, #0x03e8
	call	_Pause
;src/main.c:1525: if (loser < 2) // if there is no tie
	ld	a, -3 (ix)
	sub	a, #0x02
	ld	a, #0x00
	rla
	ld	-1 (ix), a
	or	a, a
	jr	Z,00132$
;src/main.c:1526: nMap++; // go to the next screen on the map
	ld	hl, #_nMap+0
	inc	(hl)
00132$:
;src/main.c:1528: if (nMap == 12) { // screens are over. End of the game
	ld	a,(#_nMap + 0)
	sub	a, #0x0c
	jr	NZ,00137$
;src/main.c:1529: if (loser == 0)		
	ld	a, -3 (ix)
	or	a, a
	jr	NZ,00134$
;src/main.c:1530: PrintEndGame(1); // player 2 wins
	ld	l, #0x01
	call	_PrintEndGame
	jr	00137$
00134$:
;src/main.c:1532: PrintEndGame(0); // player 1 wins
	ld	l, #0x00
	call	_PrintEndGame
00137$:
;src/main.c:1536: ResetObjData(0);
	ld	l, #0x00
	call	_ResetObjData
;src/main.c:1537: ResetObjData(1);
	ld	l, #0x01
	call	_ResetObjData
;src/main.c:1538: InitScoreboard();
	call	_InitScoreboard
;src/main.c:1540: if (loser < 2 && TwoPlayers)
	ld	a, -1 (ix)
	or	a, a
	jr	Z,00139$
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jr	Z,00139$
;src/main.c:1541: GameOver(loser); // the player who loses a duel loses a life
	ld	a, -3 (ix)
	push	af
	inc	sp
	call	_GameOver
	inc	sp
	jr	00142$
00139$:
;src/main.c:1543: ResetData();
	call	_ResetData
00142$:
	ld	sp, ix
	pop	ix
	ret
___str_29:
	.ascii "PLAYER1"
	.db 0x00
___str_30:
	.ascii "LEVEL"
	.db 0x00
___str_31:
	.ascii "PLAYER2"
	.db 0x00
___str_32:
	.ascii "NOBODY"
	.db 0x00
___str_33:
	.ascii "WINS>"
	.db 0x00
___str_34:
	.ascii "COMPLETED"
	.db 0x00
;src/main.c:1548: void CheckDuel() {
;	---------------------------------
; Function CheckDuel
; ---------------------------------
_CheckDuel::
;src/main.c:1549: if ((spr[0].objNum_mov == 5 || spr[1].objNum_mov == 5) && 
	ld	a, (#_spr + 12)
	sub	a, #0x05
	jr	Z,00105$
	ld	a, (#_spr + 27)
	sub	a, #0x05
	ret	NZ
00105$:
;src/main.c:1550: SpriteCollision(spr[0].x, spr[0].y, &spr[1], 0)) {				
	ld	hl, #_spr + 3
	ld	d, (hl)
	ld	hl, #_spr + 2
	ld	b, (hl)
	xor	a, a
	push	af
	inc	sp
	ld	hl, #(_spr + 0x000f)
	push	hl
	ld	e, b
	push	de
	call	_SpriteCollision
	pop	af
	pop	af
	inc	sp
	ld	a, l
	or	a, a
	ret	Z
;src/main.c:1552: for(u8 i=0;i<6;i++)
	ld	c, #0x00
00107$:
	ld	a, c
	sub	a, #0x06
	jr	NC,00101$
;src/main.c:1553: DeleteSprite(&spr[i]);
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	de, #_spr
	add	hl, de
	push	bc
	call	_DeleteSprite
	pop	bc
;src/main.c:1552: for(u8 i=0;i<6;i++)
	inc	c
	jr	00107$
00101$:
;src/main.c:1554: DeleteObject(0);
	ld	l, #0x00
	call	_DeleteObject
;src/main.c:1555: DeleteObject(1);
	ld	l, #0x01
	call	_DeleteObject
;src/main.c:1557: MakeDuel();
	jp  _MakeDuel
;src/main.c:1575: void MakeShot(u8 x, u8 y, u8 dir) {	
;	---------------------------------
; Function MakeShot
; ---------------------------------
_MakeShot::
;src/main.c:1576: if (sht.active == FALSE) { // if there is no active shot...
	ld	bc, #_sht+0
	ld	hl, #0x0004
	add	hl, bc
	ld	a, (hl)
	or	a, a
	ret	NZ
;src/main.c:1577: sht.active = TRUE; // activate it
	ld	(hl), #0x01
;src/main.c:1578: sht.dir = dir; // the direction of the shot is that of the sprite that shoots
	ld	hl, #(_sht + 0x0003)
	ld	iy, #4
	add	iy, sp
	ld	a, 0 (iy)
	ld	(hl), a
;src/main.c:1579: sht.y = y + 5; // adjusts to the height of the gun (hand)
	ld	e, c
	ld	d, b
	inc	de
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	add	a, #0x05
	ld	(de), a
;src/main.c:1581: if (sht.dir == D_right) sht.x = x + SPR_W;
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	sub	a, #0x03
	jr	NZ,00102$
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	add	a, #0x05
	ld	(bc), a
	ret
00102$:
;src/main.c:1582: else sht.x = x - SHT_W;
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	add	a, #0xfc
	ld	(bc), a
	ret
;src/main.c:1588: void DeleteShot() {
;	---------------------------------
; Function DeleteShot
; ---------------------------------
_DeleteShot::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;src/main.c:1590: 2 + (sht.px & 1), 2 + (sht.y & 3 ? 1 : 0), 
	ld	hl, #_sht + 1
	ld	c, (hl)
	ld	a, c
	and	a, #0x03
	jr	Z,00103$
	ld	d, #0x01
	jr	00104$
00103$:
	ld	d, #0x00
00104$:
	inc	d
	inc	d
	ld	hl, #_sht + 2
	ld	e, (hl)
	ld	a, e
	and	a, #0x01
	add	a, #0x02
	ld	-1 (ix), a
;src/main.c:1589: cpct_etm_drawTileBox2x4(sht.px / 2, (sht.y - ORIG_MAP_Y) / 4, 
	ld	b, #0x00
	ld	a, c
	add	a, #0xe0
	ld	-3 (ix), a
	ld	a, b
	adc	a, #0xff
	ld	-2 (ix), a
	pop	hl
	push	hl
	bit	7, -2 (ix)
	jr	Z,00105$
	ld	hl, #0xffe3
	add	hl, bc
00105$:
	sra	h
	rr	l
	sra	h
	rr	l
	ld	c, l
	srl	e
	ld	hl, #0x0f71
	push	hl
	ld	hl, #0xc140
	push	hl
	ld	a, #0x28
	push	af
	inc	sp
	push	de
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	ld	d, c
	push	de
	call	_cpct_etm_drawTileBox2x4
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1595: void PrintShot(u8* magic) __z88dk_fastcall {
;	---------------------------------
; Function PrintShot
; ---------------------------------
_PrintShot::
;src/main.c:1596: DeleteShot(); // delete the previous shot
	push	hl
	call	_DeleteShot
	pop	bc
;src/main.c:1597: if (!sht.active) return; // outside the margins. no need to print
	ld	a, (#_sht + 4)
	or	a, a
	ret	Z
;src/main.c:1599: SHT_W, SHT_H, g_maskTable);
;src/main.c:1598: cpct_drawSpriteMaskedAlignedTable(magic, cpct_getScreenPtr(CPCT_VMEM_START, sht.x, sht.y), 
	ld	hl, #_sht + 1
	ld	d, (hl)
	ld	a, (#_sht + 0)
	push	bc
	ld	e, a
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0804
	push	de
	push	hl
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
	ret
;src/main.c:1604: void MoveShot() {
;	---------------------------------
; Function MoveShot
; ---------------------------------
_MoveShot::
;src/main.c:1605: sht.px = sht.x; // save the current X coordinate
	ld	bc, #_sht+0
	ld	a, (bc)
	ld	(#(_sht + 0x0002)),a
;src/main.c:1607: if (sht.dir == D_right)	sht.x++; else sht.x--;
	ld	hl, #_sht + 3
	ld	d, (hl)
;src/main.c:1605: sht.px = sht.x; // save the current X coordinate
	ld	a, (bc)
	ld	e, a
;src/main.c:1607: if (sht.dir == D_right)	sht.x++; else sht.x--;
	ld	a, d
	sub	a, #0x03
	jr	NZ,00102$
	inc	e
	ld	a, e
	ld	(bc), a
	jr	00103$
00102$:
	dec	e
	ld	a, e
	ld	(bc), a
00103$:
;src/main.c:1605: sht.px = sht.x; // save the current X coordinate
	ld	a, (bc)
	ld	e, a
;src/main.c:1609: if (sht.x + SHT_W >= GLOBAL_MAX_X || sht.x <= 0) {
	ld	l, e
	ld	h, #0x00
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, l
	sub	a, #0x50
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00104$
	ld	a, e
	or	a, a
	ret	NZ
00104$:
;src/main.c:1610: sht.active = FALSE;
	ld	hl, #(_sht + 0x0004)
	ld	(hl), #0x00
;src/main.c:1611: DeleteShot();
	jp  _DeleteShot
;src/main.c:1628: void PrintWizard(u8 shooting) __z88dk_fastcall {
;	---------------------------------
; Function PrintWizard
; ---------------------------------
_PrintWizard::
	ld	c, l
;src/main.c:1630: u8 x = 0;
	ld	e, #0x00
;src/main.c:1632: if (spr[6].dir == D_left) { // on the right bank facing left
	ld	a, (#_spr + 97)
;src/main.c:1633: if (shooting) wizard = g_wizard_1;
	sub	a,#0x02
	jr	NZ,00108$
	or	a,c
	jr	Z,00102$
	ld	bc, #_g_wizard_1+0
	jr	00103$
00102$:
;src/main.c:1634: else wizard = g_wizard_0;
	ld	bc, #_g_wizard_0
00103$:
;src/main.c:1635: x = 75;
	ld	e, #0x4b
	jr	00109$
00108$:
;src/main.c:1638: if (shooting) wizard = g_wizard_3; 
	ld	a, c
	or	a, a
	jr	Z,00105$
	ld	bc, #_g_wizard_3
	jr	00109$
00105$:
;src/main.c:1639: else wizard = g_wizard_2;
	ld	bc, #_g_wizard_2
00109$:
;src/main.c:1643: SPR_W, SPR_H, g_maskTable); 							
;src/main.c:1642: cpct_drawSpriteMaskedAlignedTable(wizard, cpct_getScreenPtr(CPCT_VMEM_START, x, spr[6].y), 
	ld	hl, #_spr + 93
	ld	d, (hl)
	push	bc
	push	de
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
	pop	bc
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0c05
	push	de
	push	hl
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
	ret
;src/main.c:1648: void WizardAnim() {
;	---------------------------------
; Function WizardAnim
; ---------------------------------
_WizardAnim::
;src/main.c:1649: if (ctWizardAnim > 0) {
	ld	iy, #_ctWizardAnim
	ld	a, 0 (iy)
	or	a, a
	ret	Z
;src/main.c:1650: switch(ctWizardAnim++) {			
	ld	c, 0 (iy)
	inc	0 (iy)
	ld	a, c
	dec	a
	jr	Z,00102$
	ld	a,c
	cp	a,#0x02
	jr	Z,00104$
	cp	a,#0x03
	jr	Z,00106$
	cp	a,#0x04
	jr	Z,00107$
	cp	a,#0x05
	jr	Z,00108$
	cp	a,#0x06
	ret	Z
	cp	a,#0x07
	ret	Z
	cp	a,#0x08
	ret	Z
	cp	a,#0x09
	ret	Z
	cp	a,#0x0a
	ret	Z
	cp	a,#0x0b
	ret	Z
	cp	a,#0x0c
	jr	Z,00115$
	cp	a,#0x1d
	jr	Z,00102$
	cp	a,#0x1e
	jr	Z,00104$
	cp	a,#0x1f
	jr	Z,00106$
	sub	a, #0x20
	jr	Z,00116$
	jr	00117$
;src/main.c:1653: case 29:	{ PrintExplosion(&spr[6], 0); break; }
00102$:
	xor	a, a
	push	af
	inc	sp
	ld	hl, #(_spr + 0x005a)
	push	hl
	call	_PrintExplosion
	pop	af
	inc	sp
	ret
;src/main.c:1655: case 30:	{ PrintExplosion(&spr[6], 1); break; }
00104$:
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #(_spr + 0x005a)
	push	hl
	call	_PrintExplosion
	pop	af
	inc	sp
	ret
;src/main.c:1657: case 31:	{ DeleteSprite(&spr[6]); PrintExplosion(&spr[6], 0); break; }						
00106$:
	ld	hl, #(_spr + 0x005a)
	call	_DeleteSprite
	xor	a, a
	push	af
	inc	sp
	ld	hl, #(_spr + 0x005a)
	push	hl
	call	_PrintExplosion
	pop	af
	inc	sp
	ret
;src/main.c:1659: case 4:		{ DeleteSprite(&spr[6]); PrintWizard(TRUE); break; }		
00107$:
	ld	hl, #(_spr + 0x005a)
	call	_DeleteSprite
	ld	l, #0x01
	jp  _PrintWizard
;src/main.c:1661: case 5:		{ MakeShot(spr[6].x, spr[6].y-3, spr[6].dir); break; }			
00108$:
	ld	hl, #_spr + 97
	ld	d, (hl)
	ld	a, (#_spr + 93)
	add	a, #0xfd
	ld	c, a
	ld	hl, #_spr + 92
	ld	b, (hl)
	ld	e, c
	push	de
	push	bc
	inc	sp
	call	_MakeShot
	pop	af
	inc	sp
	ret
;src/main.c:1670: case 12:    { DeleteSprite(&spr[6]); PrintWizard(FALSE); break;}
00115$:
	ld	hl, #(_spr + 0x005a)
	call	_DeleteSprite
	ld	l, #0x00
	jp  _PrintWizard
;src/main.c:1672: case 32:    { DeleteSprite(&spr[6]); ctWizardAnim = 0; return; }
00116$:
	ld	hl, #(_spr + 0x005a)
	call	_DeleteSprite
	ld	hl,#_ctWizardAnim + 0
	ld	(hl), #0x00
	ret
;src/main.c:1674: default:	{ PrintWizard(FALSE); break;	}			
00117$:
	ld	l, #0x00
;src/main.c:1675: }		
	jp  _PrintWizard
;src/main.c:1681: void MakeWizardAnim(u8 player) __z88dk_fastcall {
;	---------------------------------
; Function MakeWizardAnim
; ---------------------------------
_MakeWizardAnim::
	ld	c, l
;src/main.c:1682: if (ctInactivity[player]++ == 80 && !sht.active) {	
	ld	de, #_ctInactivity+0
	ld	l,c
	ld	h,#0x00
	add	hl, de
	ld	b, (hl)
	ld	e, b
	inc	e
	ld	(hl), e
	ld	a, b
	sub	a, #0x50
	ret	NZ
	ld	a, (#(_sht + 0x0004) + 0)
	or	a, a
	ret	NZ
;src/main.c:1683: spr[6].y = spr[6].py = spr[player].y;
	ld	de, #_spr+0
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl,de
	ld	c,l
	ld	b,h
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	(#(_spr + 0x005f)),a
	ld	(#(_spr + 0x005d)),a
;src/main.c:1685: if (spr[player].x < 40) {
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	c, (hl)
;src/main.c:1686: spr[6].x = spr[6].px = 74;		
	ld	hl, #0x005e
	add	hl, de
;src/main.c:1687: spr[6].dir = D_left;
;src/main.c:1685: if (spr[player].x < 40) {
	ld	a, c
	sub	a, #0x28
	jr	NC,00102$
;src/main.c:1686: spr[6].x = spr[6].px = 74;		
	ld	(hl), #0x4a
	ld	hl, #(_spr + 0x005c)
	ld	(hl), #0x4a
;src/main.c:1687: spr[6].dir = D_left;
	ld	hl, #(_spr + 0x0061)
	ld	(hl), #0x02
	jr	00103$
00102$:
;src/main.c:1690: spr[6].x = spr[6].px = 1;
	ld	(hl), #0x01
	ld	hl, #(_spr + 0x005c)
	ld	(hl), #0x01
;src/main.c:1691: spr[6].dir = D_right;
	ld	hl, #(_spr + 0x0061)
	ld	(hl), #0x03
00103$:
;src/main.c:1693: ctWizardAnim++; // makes the wizard shooting animation start
	ld	hl, #_ctWizardAnim+0
	inc	(hl)
	ret
;src/main.c:1711: void MoveEnemy(TSpr *pSpr) {
;	---------------------------------
; Function MoveEnemy
; ---------------------------------
_MoveEnemy::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-16
	add	hl, sp
	ld	sp, hl
;src/main.c:1712: u8 z = 255;	// multipurpose variable
	ld	-16 (ix), #0xff
;src/main.c:1713: switch(pSpr->objNum_mov) {
	ld	a, 4 (ix)
	ld	-15 (ix), a
	ld	a, 5 (ix)
	ld	-14 (ix), a
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	de, #0x000c
	add	hl, de
	ld	a, (hl)
	ld	-13 (ix), a
;src/main.c:1716: if (pSpr->dir == D_right) {
	ld	a, -15 (ix)
	add	a, #0x07
	ld	-10 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
;src/main.c:1718: if (pSpr->x < pSpr->power_maxV) 
	ld	a, -15 (ix)
	add	a, #0x02
	ld	-12 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-11 (ix), a
	ld	a, -15 (ix)
	add	a, #0x0e
	ld	-8 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
;src/main.c:1719: pSpr->x = pSpr->x + pSpr->lives_speed;
	ld	a, -15 (ix)
	add	a, #0x0b
	ld	-4 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
;src/main.c:1725: if (pSpr->x > pSpr->print_minV)  
	ld	a, -15 (ix)
	add	a, #0x0d
	ld	-6 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
;src/main.c:1732: if (pSpr->y > (spr[0].y - SHT_H) && pSpr->y < (spr[0].y + SHT_H)) z = 0; // P1
	ld	a, -15 (ix)
	add	a, #0x03
	ld	-2 (ix), a
	ld	a, -14 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
;src/main.c:1713: switch(pSpr->objNum_mov) {
	ld	a, -13 (ix)
	or	a, a
	jr	Z,00101$
	ld	a, -13 (ix)
	dec	a
	jp	Z,00125$
	ld	a, -13 (ix)
	sub	a, #0x02
	jp	Z,00135$
	ld	a, -13 (ix)
	sub	a, #0x03
	jp	Z,00152$
	jp	00168$
;src/main.c:1715: case M_linear_X:
00101$:
;src/main.c:1716: if (pSpr->dir == D_right) {
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a, (hl)
;src/main.c:1735: if (spr[z].x > pSpr->x) pSpr->dir = D_right; 
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	c, (hl)
;src/main.c:1716: if (pSpr->dir == D_right) {
	sub	a, #0x03
	jr	NZ,00109$
;src/main.c:1718: if (pSpr->x < pSpr->power_maxV) 
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	b, (hl)
	ld	a, c
	sub	a, b
	jr	NC,00103$
;src/main.c:1719: pSpr->x = pSpr->x + pSpr->lives_speed;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	b, (hl)
	ld	a, c
	add	a, b
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl), a
	jr	00110$
00103$:
;src/main.c:1721: pSpr->dir = D_left;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), #0x02
	jr	00110$
00109$:
;src/main.c:1725: if (pSpr->x > pSpr->print_minV)  
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	a, (hl)
	sub	a, c
	jr	NC,00106$
;src/main.c:1726: pSpr->x = pSpr->x - pSpr->lives_speed;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	b, (hl)
	ld	a, c
	sub	a, b
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl), a
	jr	00110$
00106$:
;src/main.c:1728: pSpr->dir = D_right; 
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), #0x03
00110$:
;src/main.c:1731: if (pSpr->ident == WITCH) {
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	inc	hl
	ld	a, (hl)
	sub	a, #0x06
	jp	NZ,00168$
;src/main.c:1732: if (pSpr->y > (spr[0].y - SHT_H) && pSpr->y < (spr[0].y + SHT_H)) z = 0; // P1
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	e, (hl)
	ld	hl, #_spr + 3
	ld	c, (hl)
	ld	b, #0x00
	ld	a, c
	add	a, #0xf8
	ld	l, a
	ld	a, b
	adc	a, #0xff
	ld	h, a
	ld	d, #0x00
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jp	PO, 00302$
	xor	a, #0x80
00302$:
	jp	P, 00115$
	ld	hl, #0x0008
	add	hl, bc
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	PO, 00303$
	xor	a, #0x80
00303$:
	jp	P, 00115$
	ld	-16 (ix), #0x00
	jr	00116$
00115$:
;src/main.c:1733: else if (pSpr->y > (spr[1].y - SHT_H) && pSpr->y < (spr[1].y + SHT_H)) z = 1; // P2
	ld	hl, #_spr + 18
	ld	c, (hl)
	ld	b, #0x00
	ld	a, c
	add	a, #0xf8
	ld	l, a
	ld	a, b
	adc	a, #0xff
	ld	h, a
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jp	PO, 00304$
	xor	a, #0x80
00304$:
	jp	P, 00116$
	ld	hl, #0x0008
	add	hl, bc
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	PO, 00305$
	xor	a, #0x80
00305$:
	jp	P, 00116$
	ld	-16 (ix), #0x01
00116$:
;src/main.c:1734: if (z < 255) {
	ld	a, -16 (ix)
	sub	a, #0xff
	jp	NC, 00168$
;src/main.c:1735: if (spr[z].x > pSpr->x) pSpr->dir = D_right; 
	ld	c,-16 (ix)
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	de, #_spr
	add	hl, de
	inc	hl
	inc	hl
	ld	c, (hl)
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	a, (hl)
	sub	a, c
	jr	NC,00119$
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), #0x03
	jr	00120$
00119$:
;src/main.c:1736: else pSpr->dir = D_left;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), #0x02
00120$:
;src/main.c:1737: MakeShot(pSpr->x, pSpr->y, pSpr->dir);
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a, (hl)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	d, (hl)
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	b, (hl)
	push	af
	inc	sp
	ld	e, b
	push	de
	call	_MakeShot
	pop	af
	inc	sp
;src/main.c:1740: break;
	jp	00168$
;src/main.c:1743: case M_linear_Y:
00125$:
;src/main.c:1744: if (pSpr->dir == D_down) {
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	b, (hl)
;src/main.c:1732: if (pSpr->y > (spr[0].y - SHT_H) && pSpr->y < (spr[0].y + SHT_H)) z = 0; // P1
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	c, (hl)
;src/main.c:1744: if (pSpr->dir == D_down) {
	djnz	00133$
;src/main.c:1746: if (pSpr->y < pSpr->power_maxV)
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	b, (hl)
	ld	a, c
	sub	a, b
	jr	NC,00127$
;src/main.c:1747: pSpr->y = pSpr->y + (pSpr->lives_speed*2);
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	b, (hl)
	sla	b
	ld	a, c
	add	a, b
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), a
	jp	00168$
00127$:
;src/main.c:1749: pSpr->dir = D_up;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), #0x00
	jp	00168$
00133$:
;src/main.c:1753: if (pSpr->y > pSpr->print_minV) 
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	a, (hl)
	sub	a, c
	jr	NC,00130$
;src/main.c:1754: pSpr->y = pSpr->y - (pSpr->lives_speed*2);
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	b, (hl)
	sla	b
	ld	a, c
	sub	a, b
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), a
	jp	00168$
00130$:
;src/main.c:1756: pSpr->dir = D_down; 
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), #0x01
;src/main.c:1758: break;
	jp	00168$
;src/main.c:1761: case M_linear_XY:		
00135$:
;src/main.c:1763: if (pSpr->dir == D_up && OnBackground(pSpr->x, pSpr->y - (pSpr->lives_speed*2)-8))
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ,00149$
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	c, (hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	b, (hl)
	sla	b
	ld	a, c
	sub	a, b
	add	a, #0xf8
	ld	d, a
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	e, (hl)
	push	de
	call	_OnBackground
	pop	af
	ld	a, l
	or	a, a
	jr	Z,00149$
;src/main.c:1764: pSpr->y = pSpr->y - (pSpr->lives_speed*2);			
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	c, (hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	b, (hl)
	sla	b
	ld	a, c
	sub	a, b
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), a
	jp	00168$
00149$:
;src/main.c:1766: else if (pSpr->dir == D_down && OnBackground(pSpr->x, pSpr->y + (pSpr->lives_speed*2)+2))
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	c, (hl)
	dec	c
	jr	NZ,00145$
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	c, (hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	l, (hl)
	sla	l
	add	hl, bc
	ld	d, l
	inc	d
	inc	d
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	e, (hl)
	push	de
	call	_OnBackground
	pop	af
	ld	a, l
	or	a, a
	jr	Z,00145$
;src/main.c:1767: pSpr->y = pSpr->y + (pSpr->lives_speed*2);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	c, (hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	b, (hl)
	sla	b
	ld	a, c
	add	a, b
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), a
	jp	00168$
00145$:
;src/main.c:1769: else if (pSpr->dir == D_left && OnBackground((pSpr->x - pSpr->lives_speed)-3, pSpr->y))
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ,00141$
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	d, (hl)
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	c, (hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	e, (hl)
	ld	a, c
	sub	a, e
	add	a, #0xfd
	ld	e,a
	push	de
	call	_OnBackground
	pop	af
	ld	a, l
	or	a, a
	jr	Z,00141$
;src/main.c:1770: pSpr->x = pSpr->x - pSpr->lives_speed;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	c, (hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	b, (hl)
	ld	a, c
	sub	a, b
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl), a
	jp	00168$
00141$:
;src/main.c:1772: else if (pSpr->dir == D_right && OnBackground((pSpr->x + pSpr->lives_speed)+1, pSpr->y))
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a, (hl)
	sub	a, #0x03
	jr	NZ,00137$
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	d, (hl)
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	c, (hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	l, (hl)
	add	hl, bc
	ld	b, l
	inc	b
	ld	e, b
	push	de
	call	_OnBackground
	pop	af
	ld	a, l
	or	a, a
	jr	Z,00137$
;src/main.c:1773: pSpr->x = pSpr->x + pSpr->lives_speed;
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	c, (hl)
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	b, (hl)
	ld	a, c
	add	a, b
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl), a
	jp	00168$
00137$:
;src/main.c:1775: else pSpr->dir = cpct_getRandom_lcg_u8(0) / 65; // 0-1-2-3			
	ld	l, #0x00
	call	_cpct_getRandom_lcg_u8
	ld	b, l
	ld	a, #0x41
	push	af
	inc	sp
	push	bc
	inc	sp
	call	__divuchar
	pop	af
	ld	c, l
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), c
;src/main.c:1776: break;
	jp	00168$
;src/main.c:1779: case M_chaser:
00152$:
;src/main.c:1780: if (ctMainLoop % pSpr->lives_speed == 0) {
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, (_ctMainLoop)
	push	hl
	call	__modsint
	pop	af
	pop	af
	ld	a, h
;src/main.c:1781: z = 0;
	or	a,l
	jp	NZ,00168$
	ld	c,a
;src/main.c:1783: if (TwoPlayers)
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jp	Z, 00154$
;src/main.c:1784: z = Abs(pSpr->x - spr[1].x)*2 + Abs(pSpr->y - spr[1].y) <
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #_spr + 17
	ld	e, (hl)
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	l, a
	ld	a, b
	sbc	a, d
	ld	h, a
	call	_Abs
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	e, (hl)
	ld	d, #0x00
	ld	hl, #_spr + 18
	ld	l, (hl)
	ld	h, #0x00
	ld	a, e
	sub	a, l
	ld	l, a
	ld	a, d
	sbc	a, h
	ld	h, a
	push	bc
	call	_Abs
	pop	bc
	add	hl,bc
	ld	-6 (ix), l
	ld	-5 (ix), h
;src/main.c:1785: Abs(pSpr->x - spr[0].x)*2 + Abs(pSpr->y - spr[0].y);
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #_spr + 2
	ld	e, (hl)
	ld	d, #0x00
	ld	a, c
	sub	a, e
	ld	l, a
	ld	a, b
	sbc	a, d
	ld	h, a
	call	_Abs
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	e, (hl)
	ld	d, #0x00
	ld	hl, #_spr + 3
	ld	l, (hl)
	ld	h, #0x00
	ld	a, e
	sub	a, l
	ld	l, a
	ld	a, d
	sbc	a, h
	ld	h, a
	push	bc
	call	_Abs
	pop	bc
	add	hl, bc
	ld	a, -6 (ix)
	sub	a, l
	ld	a, -5 (ix)
	sbc	a, h
	jp	PO, 00314$
	xor	a, #0x80
00314$:
	rlca
	and	a,#0x01
	ld	c, a
00154$:
;src/main.c:1787: if (pSpr->x < spr[z].x) {
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	b, (hl)
	ld	de, #_spr+0
	push	de
	ld	e,c
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	pop	de
	add	hl,de
	ld	e,l
	ld	d,h
	inc	hl
	inc	hl
	ld	c, (hl)
	ld	a, b
	sub	a, c
	jr	NC,00158$
;src/main.c:1788: pSpr->x++;
	inc	b
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl), b
;src/main.c:1789: pSpr->dir = D_right;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), #0x03
	jr	00159$
00158$:
;src/main.c:1792: else if (pSpr->x > spr[z].x) {
	ld	a, c
	sub	a, b
	jr	NC,00159$
;src/main.c:1793: pSpr->x--;
	dec	b
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	(hl), b
;src/main.c:1794: pSpr->dir = D_left;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl), #0x02
00159$:
;src/main.c:1797: if (pSpr->y < spr[z].y) {
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	c, (hl)
	ex	de,hl
	inc	hl
	inc	hl
	inc	hl
	ld	b, (hl)
	ld	a, c
	sub	a, b
	jr	NC,00163$
;src/main.c:1798: pSpr->y+=2;
	inc	c
	inc	c
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), c
	jr	00168$
00163$:
;src/main.c:1801: else if (pSpr->y > spr[z].y) {
	ld	a, b
	sub	a, c
	jr	NC,00168$
;src/main.c:1802: pSpr->y-=2;
	dec	c
	dec	c
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl), c
;src/main.c:1806: }
00168$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:1811: void SetEnemyParams(u8 i, u8 ident, u8 mov, u8 dir, u8 speed, u8 x, u8 y, u8 minV, u8 maxV) {
;	---------------------------------
; Function SetEnemyParams
; ---------------------------------
_SetEnemyParams::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:1812: spr[i].num = i;
	ld	bc, #_spr+0
	ld	e,4 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	a, 4 (ix)
	ld	(bc), a
;src/main.c:1813: spr[i].ident = ident; 
	ld	e, c
	ld	d, b
	inc	de
	ld	a, 5 (ix)
	ld	(de), a
;src/main.c:1814: spr[i].objNum_mov = mov;	 
	ld	hl, #0x000c
	add	hl, bc
	ld	a, 6 (ix)
	ld	(hl), a
;src/main.c:1815: spr[i].dir = dir; 
	ld	hl, #0x0007
	add	hl, bc
	ld	a, 7 (ix)
	ld	(hl), a
;src/main.c:1816: spr[i].lives_speed = speed;
	ld	hl, #0x000b
	add	hl, bc
	ld	a, 8 (ix)
	ld	(hl), a
;src/main.c:1817: spr[i].x = spr[i].px = x;
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	hl, #0x0004
	add	hl, bc
	ld	a, 9 (ix)
	ld	(hl), a
	ld	a, 9 (ix)
	ld	(de), a
;src/main.c:1818: spr[i].y = spr[i].py = y;
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
	ld	hl, #0x0005
	add	hl, bc
	ld	a, 10 (ix)
	ld	(hl), a
	ld	a, 10 (ix)
	ld	(de), a
;src/main.c:1819: spr[i].print_minV = minV;
	ld	hl, #0x000d
	add	hl, bc
	ld	a, 11 (ix)
	ld	(hl), a
;src/main.c:1820: spr[i].power_maxV = maxV;
	ld	hl, #0x000e
	add	hl, bc
	ld	a, 12 (ix)
	ld	(hl), a
	pop	ix
	ret
;src/main.c:1830: void SetEnemies() {
;	---------------------------------
; Function SetEnemies
; ---------------------------------
_SetEnemies::
;src/main.c:1831: switch (nMap) {
	ld	a, #0x0b
	ld	iy, #_nMap
	sub	a, 0 (iy)
	jp	C, 00113$
	ld	c, 0 (iy)
	ld	b, #0x00
	ld	hl, #00126$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00126$:
	jp	00101$
	jp	00102$
	jp	00103$
	jp	00104$
	jp	00105$
	jp	00106$
	jp	00107$
	jp	00108$
	jp	00109$
	jp	00110$
	jp	00111$
	jp	00112$
;src/main.c:1833: case 0: {			 
00101$:
;src/main.c:1835: SetEnemyParams(2, SENTINEL,	M_linear_X, 	D_left,     1, 73, 158,   2,  73);						
	ld	hl, #0x4902
	push	hl
	ld	hl, #0x9e49
	push	hl
	ld	hl, #0x0102
	push	hl
	ld	h, #0x00
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1836: SetEnemyParams(3, SENTINEL,	M_linear_X, 	D_right,    1,  3, 110,   2,  73);
	ld	hl, #0x4902
	push	hl
	ld	hl, #0x6e03
	push	hl
	ld	h, #0x01
	push	hl
	ld	hl, #0x0002
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1837: SetEnemyParams(4, SENTINEL,	M_linear_X, 	D_left,     1, 73,  62,  40,  73);
	ld	hl, #0x4928
	push	hl
	ld	hl, #0x3e49
	push	hl
	ld	hl, #0x0102
	push	hl
	ld	h, #0x00
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1838: SetEnemyParams(5, SENTINEL,	M_linear_X, 	D_right,    1,  2,  62,   2,  35);
	ld	hl, #0x2302
	push	hl
	ld	h, #0x3e
	push	hl
	ld	hl, #0x0103
	push	hl
	ld	hl, #0x0002
	push	hl
	ld	a, #0x05
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1840: spr[0].x = spr[0].px = 6; 
	ld	hl, #(_spr + 0x0004)
	ld	(hl), #0x06
	ld	hl, #(_spr + 0x0002)
	ld	(hl), #0x06
;src/main.c:1841: spr[0].y = spr[0].py = 178;			
	ld	hl, #(_spr + 0x0005)
	ld	(hl), #0xb2
	ld	hl, #(_spr + 0x0003)
	ld	(hl), #0xb2
;src/main.c:1843: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk0_end);
	ld	hl, #(_mappk0 + 0x0279)
	push	hl
	ld	hl, #0x1600
	push	hl
	call	_cpct_zx7b_decrunch_s
;src/main.c:1845: lName = "1;1@@GARDENS";
	ld	hl, #___str_35+0
	ld	(_lName), hl
;src/main.c:1847: doorKey[0] = 4;	// toad snot
	ld	hl, #_doorKey
	ld	(hl), #0x04
;src/main.c:1848: doorKey[1] = 5;	// diamond dust
	ld	hl, #(_doorKey + 0x0001)
	ld	(hl), #0x05
;src/main.c:1849: doorKey[2] = 4;	// toad snot
	ld	hl, #(_doorKey + 0x0002)
	ld	(hl), #0x04
;src/main.c:1850: doorKey[3] = 5;	// diamond dust
	ld	hl, #(_doorKey + 0x0003)
	ld	(hl), #0x05
;src/main.c:1851: doorKey[4] = 4; // toad snot
	ld	hl, #(_doorKey + 0x0004)
	ld	(hl), #0x04
;src/main.c:1853: storeX = 51;
	ld	hl,#_storeX + 0
	ld	(hl), #0x33
;src/main.c:1854: storeY = 11;
	ld	hl,#_storeY + 0
	ld	(hl), #0x0b
;src/main.c:1855: break;
	jp	00113$
;src/main.c:1858: case 1: {
00102$:
;src/main.c:1860: SetEnemyParams(2, NOBODY,	M_linear_X, 	D_left,     1,  0,   0,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	l, #0x00
	push	hl
	ld	hl, #0x0102
	push	hl
	ld	hl, #0x0009
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1861: SetEnemyParams(3, SENTINEL,	M_linear_X, 	D_right,    1,  2, 114,   2,  73);						
	ld	hl, #0x4902
	push	hl
	ld	h, #0x72
	push	hl
	ld	hl, #0x0103
	push	hl
	ld	hl, #0x0002
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1862: SetEnemyParams(4, KNIGHT, 	M_linear_XY,    D_right,    1, 10,  62,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x3e0a
	push	hl
	ld	hl, #0x0103
	push	hl
	ld	h, #0x02
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1863: SetEnemyParams(5, KNIGHT,	M_linear_XY,	D_down,     1,  2,  38,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x2602
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	hl, #0x0203
	push	hl
	ld	a, #0x05
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1865: spr[0].x = spr[0].px = 58; 
	ld	hl, #(_spr + 0x0004)
	ld	(hl), #0x3a
	ld	hl, #(_spr + 0x0002)
	ld	(hl), #0x3a
;src/main.c:1866: spr[0].y = spr[0].py = 178;	
	ld	hl, #(_spr + 0x0005)
	ld	(hl), #0xb2
	ld	hl, #(_spr + 0x0003)
	ld	(hl), #0xb2
;src/main.c:1868: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk1_end);
	ld	hl, #(_mappk1 + 0x02a0)
	push	hl
	ld	hl, #0x1600
	push	hl
	call	_cpct_zx7b_decrunch_s
;src/main.c:1870: lName = "1;2@@GARDENS";
	ld	hl, #___str_36+0
	ld	(_lName), hl
;src/main.c:1872: doorKey[0] = 4;	// toad snot
	ld	hl, #_doorKey
	ld	(hl), #0x04
;src/main.c:1873: doorKey[1] = 6;	// newt eye
	ld	hl, #(_doorKey + 0x0001)
	ld	(hl), #0x06
;src/main.c:1874: doorKey[2] = 5; // diamond dust
	ld	hl, #(_doorKey + 0x0002)
	ld	(hl), #0x05
;src/main.c:1875: doorKey[3] = 6; // newt eye
	ld	hl, #(_doorKey + 0x0003)
	ld	(hl), #0x06
;src/main.c:1876: doorKey[4] = 4; // toad snot
	ld	hl, #(_doorKey + 0x0004)
	ld	(hl), #0x04
;src/main.c:1878: storeX = 51;
	ld	hl,#_storeX + 0
	ld	(hl), #0x33
;src/main.c:1879: storeY = 55;
	ld	hl,#_storeY + 0
	ld	(hl), #0x37
;src/main.c:1880: break;
	jp	00113$
;src/main.c:1883: case 2: {			 
00103$:
;src/main.c:1885: SetEnemyParams(2, GHOST,	M_linear_XY, 	D_right,    1,  3, 120,   0,   0);						
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x7803
	push	hl
	ld	h, #0x01
	push	hl
	ld	hl, #0x0204
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1886: SetEnemyParams(3, GHOST,	M_linear_XY, 	D_left,     1, 73,  99,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x6349
	push	hl
	ld	hl, #0x0102
	push	hl
	ld	hl, #0x0204
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1887: SetEnemyParams(4, BAT,	 	M_linear_X,    	D_right,    1, 22,  58,  22,  60);																		
	ld	hl, #0x3c16
	push	hl
	ld	h, #0x3a
	push	hl
	ld	hl, #0x0103
	push	hl
	ld	hl, #0x0005
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1888: SetEnemyParams(5, WITCH,	M_linear_X,		D_left,     1,  3,  78,   2,  73);
	ld	hl, #0x4902
	push	hl
	ld	hl, #0x4e03
	push	hl
	ld	hl, #0x0102
	push	hl
	ld	hl, #0x0006
	push	hl
	ld	a, #0x05
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1890: spr[0].x = spr[0].px = 58; 
	ld	hl, #(_spr + 0x0004)
	ld	(hl), #0x3a
	ld	hl, #(_spr + 0x0002)
	ld	(hl), #0x3a
;src/main.c:1891: spr[0].y = spr[0].py = 178;			
	ld	hl, #(_spr + 0x0005)
	ld	(hl), #0xb2
	ld	hl, #(_spr + 0x0003)
	ld	(hl), #0xb2
;src/main.c:1893: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk2_end);
	ld	hl, #(_mappk2 - 0x0001)
	push	hl
	ld	hl, #0x1600
	push	hl
	call	_cpct_zx7b_decrunch_s
;src/main.c:1895: lName = "2;1@CEMETERY";
	ld	hl, #___str_37+0
	ld	(_lName), hl
;src/main.c:1897: doorKey[0] = 4;	// toad snot
	ld	hl, #_doorKey
	ld	(hl), #0x04
;src/main.c:1898: doorKey[1] = 5;	// diamond dust
	ld	hl, #(_doorKey + 0x0001)
	ld	(hl), #0x05
;src/main.c:1899: doorKey[2] = 6; // newt eye
	ld	hl, #(_doorKey + 0x0002)
	ld	(hl), #0x06
;src/main.c:1900: doorKey[3] = 7;	// mammoth poop
	ld	hl, #(_doorKey + 0x0003)
	ld	(hl), #0x07
;src/main.c:1901: doorKey[4] = 8; // kraken ink
	ld	hl, #(_doorKey + 0x0004)
	ld	(hl), #0x08
;src/main.c:1903: storeX = 3;
	ld	hl,#_storeX + 0
	ld	(hl), #0x03
;src/main.c:1904: storeY = 11;
	ld	hl,#_storeY + 0
	ld	(hl), #0x0b
;src/main.c:1905: break;
	jp	00113$
;src/main.c:1908: case 3: {			 
00104$:
;src/main.c:1910: SetEnemyParams(2, GHOST,	M_linear_XY, 	D_left,     1,  2, 180,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0xb402
	push	hl
	ld	h, #0x01
	push	hl
	ld	hl, #0x0204
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1911: SetEnemyParams(3, GHOST,	M_linear_XY, 	D_right,    1,  2, 136,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x8802
	push	hl
	ld	hl, #0x0103
	push	hl
	ld	hl, #0x0204
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1912: SetEnemyParams(4, GHOST,	M_linear_XY, 	D_left,     1, 70,  40,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x2846
	push	hl
	ld	hl, #0x0102
	push	hl
	ld	hl, #0x0204
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1913: SetEnemyParams(5, GHOST,	M_linear_XY,	D_left,     1,  2,  40,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x2802
	push	hl
	ld	h, #0x01
	push	hl
	ld	hl, #0x0204
	push	hl
	ld	a, #0x05
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1915: spr[0].x = spr[0].px = 36; 
	ld	hl, #(_spr + 0x0004)
	ld	(hl), #0x24
	ld	hl, #(_spr + 0x0002)
	ld	(hl), #0x24
;src/main.c:1916: spr[0].y = spr[0].py = 178;			
	ld	hl, #(_spr + 0x0005)
	ld	(hl), #0xb2
	ld	hl, #(_spr + 0x0003)
	ld	(hl), #0xb2
;src/main.c:1918: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk3_end);
	ld	hl, #(_mappk3 - 0x0001)
	push	hl
	ld	hl, #0x1600
	push	hl
	call	_cpct_zx7b_decrunch_s
;src/main.c:1920: lName = "2;2@CEMETERY";
	ld	hl, #___str_38+0
	ld	(_lName), hl
;src/main.c:1922: doorKey[0] = 5;	// diamond dust
	ld	hl, #_doorKey
	ld	(hl), #0x05
;src/main.c:1923: doorKey[1] = 7; // mammooth poop
	ld	hl, #(_doorKey + 0x0001)
	ld	(hl), #0x07
;src/main.c:1924: doorKey[2] = 6; // newt eye
	ld	hl, #(_doorKey + 0x0002)
	ld	(hl), #0x06
;src/main.c:1925: doorKey[3] = 7; // mammooth poop
	ld	hl, #(_doorKey + 0x0003)
	ld	(hl), #0x07
;src/main.c:1926: doorKey[4] = 5; // diamond dust
	ld	hl, #(_doorKey + 0x0004)
	ld	(hl), #0x05
;src/main.c:1928: storeX = 41;
	ld	hl,#_storeX + 0
	ld	(hl), #0x29
;src/main.c:1929: storeY = 71;
	ld	hl,#_storeY + 0
	ld	(hl), #0x47
;src/main.c:1930: break;
	jp	00113$
;src/main.c:1933: case 4: {			 
00105$:
;src/main.c:1935: SetEnemyParams(2, BAT,		M_linear_X, 	D_left,     1, 73, 134,  16,  73);							
	ld	hl, #0x4910
	push	hl
	ld	hl, #0x8649
	push	hl
	ld	hl, #0x0102
	push	hl
	ld	hl, #0x0005
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1936: SetEnemyParams(3, BAT,		M_linear_X, 	D_right,    1,  3,  94,   2,  73);		
	ld	hl, #0x4902
	push	hl
	ld	hl, #0x5e03
	push	hl
	ld	h, #0x01
	push	hl
	ld	hl, #0x0005
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1937: SetEnemyParams(4, KNIGHT,	M_linear_XY, 	D_down,    	1, 17,  50,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x3211
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	hl, #0x0203
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1938: SetEnemyParams(5, KNIGHT,	M_linear_XY, 	D_up,     	1, 57, 156,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x9c39
	push	hl
	ld	hl, #0x0100
	push	hl
	ld	hl, #0x0203
	push	hl
	ld	a, #0x05
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1940: spr[0].x = spr[0].px = 6; 
	ld	hl, #(_spr + 0x0004)
	ld	(hl), #0x06
	ld	hl, #(_spr + 0x0002)
	ld	(hl), #0x06
;src/main.c:1941: spr[0].y = spr[0].py = 175;			
	ld	hl, #(_spr + 0x0005)
	ld	(hl), #0xaf
	ld	hl, #(_spr + 0x0003)
	ld	(hl), #0xaf
;src/main.c:1943: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk4_end);
	ld	hl, #(_mappk4 - 0x0001)
	push	hl
	ld	hl, #0x1600
	push	hl
	call	_cpct_zx7b_decrunch_s
;src/main.c:1945: lName = "3;1@@CELLARS";	
	ld	hl, #___str_39+0
	ld	(_lName), hl
;src/main.c:1947: doorKey[0] = 4; // toad snot
	ld	hl, #_doorKey
	ld	(hl), #0x04
;src/main.c:1948: doorKey[1] = 9; // mermaid tear
	ld	hl, #(_doorKey + 0x0001)
	ld	(hl), #0x09
;src/main.c:1949: doorKey[2] = 10;// martian mushroom
	ld	hl, #(_doorKey + 0x0002)
	ld	(hl), #0x0a
;src/main.c:1950: doorKey[3] = 9; // mermaid tear
	ld	hl, #(_doorKey + 0x0003)
	ld	(hl), #0x09
;src/main.c:1951: doorKey[4] = 4; // toad snot
	ld	hl, #(_doorKey + 0x0004)
	ld	(hl), #0x04
;src/main.c:1953: storeX = 5;
	ld	hl,#_storeX + 0
	ld	(hl), #0x05
;src/main.c:1954: storeY = 103;		
	ld	hl,#_storeY + 0
	ld	(hl), #0x67
;src/main.c:1955: break;
	jp	00113$
;src/main.c:1958: case 5: {			 
00106$:
;src/main.c:1960: SetEnemyParams(2, SENTINEL,	M_linear_X, 	D_left,     1,  3, 142,   2,  73);
	ld	hl, #0x4902
	push	hl
	ld	hl, #0x8e03
	push	hl
	ld	hl, #0x0102
	push	hl
	ld	h, #0x00
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1961: SetEnemyParams(3, SENTINEL,	M_linear_X, 	D_right,    1, 73, 102,   2,  73);						
	ld	hl, #0x4902
	push	hl
	ld	hl, #0x6649
	push	hl
	ld	hl, #0x0103
	push	hl
	ld	hl, #0x0002
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1962: SetEnemyParams(4, KNIGHT,	M_linear_Y, 	D_down,     1, 38,  50,  50, 178);
	ld	hl, #0xb232
	push	hl
	ld	hl, #0x3226
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	l, #0x03
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1963: SetEnemyParams(5, WITCH,	M_linear_X,		D_left,     1,  3,  62,   2,  73);
	ld	hl, #0x4902
	push	hl
	ld	hl, #0x3e03
	push	hl
	ld	hl, #0x0102
	push	hl
	ld	hl, #0x0006
	push	hl
	ld	a, #0x05
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1965: spr[0].x = spr[0].px = 34; 
	ld	hl, #(_spr + 0x0004)
	ld	(hl), #0x22
	ld	hl, #(_spr + 0x0002)
	ld	(hl), #0x22
;src/main.c:1966: spr[0].y = spr[0].py = 176;			
	ld	hl, #(_spr + 0x0005)
	ld	(hl), #0xb0
	ld	hl, #(_spr + 0x0003)
	ld	(hl), #0xb0
;src/main.c:1968: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk5_end);
	ld	hl, #(_mappk5 - 0x0001)
	push	hl
	ld	hl, #0x1600
	push	hl
	call	_cpct_zx7b_decrunch_s
;src/main.c:1970: lName = "3;2@@CELLARS";
	ld	hl, #___str_40+0
	ld	(_lName), hl
;src/main.c:1972: doorKey[0] = 7; // mammooth poop
	ld	hl, #_doorKey
	ld	(hl), #0x07
;src/main.c:1973: doorKey[1] = 8; // kraken ink
	ld	hl, #(_doorKey + 0x0001)
	ld	(hl), #0x08
;src/main.c:1974: doorKey[2] = 9; // mermaid tear
	ld	hl, #(_doorKey + 0x0002)
	ld	(hl), #0x09
;src/main.c:1975: doorKey[3] = 6; // newt eye
	ld	hl, #(_doorKey + 0x0003)
	ld	(hl), #0x06
;src/main.c:1976: doorKey[4] = 5; // diamond dust
	ld	hl, #(_doorKey + 0x0004)
	ld	(hl), #0x05
;src/main.c:1978: storeX = 3;
	ld	hl,#_storeX + 0
	ld	(hl), #0x03
;src/main.c:1979: storeY = 143;
	ld	hl,#_storeY + 0
	ld	(hl), #0x8f
;src/main.c:1980: break;
	jp	00113$
;src/main.c:1983: case 6: {			 
00107$:
;src/main.c:1985: SetEnemyParams(2, KNIGHT,	M_linear_XY, 	D_up,     	1,  2, 174,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0xae02
	push	hl
	ld	hl, #0x0100
	push	hl
	ld	hl, #0x0203
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1986: SetEnemyParams(3, KNIGHT,	M_linear_XY, 	D_left,    	1, 60, 116,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x743c
	push	hl
	ld	hl, #0x0102
	push	hl
	ld	hl, #0x0203
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1987: SetEnemyParams(4, SENTINEL,	M_linear_XY, 	D_left,     1, 73,  96,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x6049
	push	hl
	ld	hl, #0x0102
	push	hl
	ld	h, #0x02
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1988: SetEnemyParams(5, WITCH,	M_linear_X,		D_left,     1,  3,  60,   2,  73);
	ld	hl, #0x4902
	push	hl
	ld	hl, #0x3c03
	push	hl
	ld	hl, #0x0102
	push	hl
	ld	hl, #0x0006
	push	hl
	ld	a, #0x05
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:1990: spr[0].x = spr[0].px = 67; 
	ld	hl, #(_spr + 0x0004)
	ld	(hl), #0x43
	ld	hl, #(_spr + 0x0002)
	ld	(hl), #0x43
;src/main.c:1991: spr[0].y = spr[0].py = 176;			
	ld	hl, #(_spr + 0x0005)
	ld	(hl), #0xb0
	ld	hl, #(_spr + 0x0003)
	ld	(hl), #0xb0
;src/main.c:1993: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk6_end);
	ld	hl, #(_mappk6 - 0x0001)
	push	hl
	ld	hl, #0x1600
	push	hl
	call	_cpct_zx7b_decrunch_s
;src/main.c:1995: lName = "4;1@@@CASTLE";	
	ld	hl, #___str_41+0
	ld	(_lName), hl
;src/main.c:1997: doorKey[0] = 10; // martian mushroom
	ld	hl, #_doorKey
	ld	(hl), #0x0a
;src/main.c:1998: doorKey[1] = 6; // newt eye
	ld	hl, #(_doorKey + 0x0001)
	ld	(hl), #0x06
;src/main.c:1999: doorKey[2] = 11; // dragon blood
	ld	hl, #(_doorKey + 0x0002)
	ld	(hl), #0x0b
;src/main.c:2000: doorKey[3] = 6; // newt eye
	ld	hl, #(_doorKey + 0x0003)
	ld	(hl), #0x06
;src/main.c:2001: doorKey[4] = 10; // martian mushroom
	ld	hl, #(_doorKey + 0x0004)
	ld	(hl), #0x0a
;src/main.c:2003: storeX = 3;
	ld	hl,#_storeX + 0
	ld	(hl), #0x03
;src/main.c:2004: storeY = 11;		
	ld	hl,#_storeY + 0
	ld	(hl), #0x0b
;src/main.c:2005: break;
	jp	00113$
;src/main.c:2008: case 7: {			 
00108$:
;src/main.c:2010: SetEnemyParams(2, NOBODY,	M_linear_XY, 	D_left,     1,  0,   0,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	l, #0x00
	push	hl
	ld	hl, #0x0102
	push	hl
	ld	hl, #0x0209
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2011: SetEnemyParams(3, GHOST,	M_linear_XY, 	D_up,       1,  3, 176,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0xb003
	push	hl
	ld	hl, #0x0100
	push	hl
	ld	hl, #0x0204
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2012: SetEnemyParams(4, KNIGHT,	M_linear_XY, 	D_right,    1,  3,  44,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x2c03
	push	hl
	ld	h, #0x01
	push	hl
	ld	h, #0x02
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2013: SetEnemyParams(5, KNIGHT,	M_linear_XY, 	D_down,     1, 73,  44,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x2c49
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	hl, #0x0203
	push	hl
	ld	a, #0x05
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2015: spr[0].x = spr[0].px = 36; 
	ld	hl, #(_spr + 0x0004)
	ld	(hl), #0x24
	ld	hl, #(_spr + 0x0002)
	ld	(hl), #0x24
;src/main.c:2016: spr[0].y = spr[0].py = 176;			
	ld	hl, #(_spr + 0x0005)
	ld	(hl), #0xb0
	ld	hl, #(_spr + 0x0003)
	ld	(hl), #0xb0
;src/main.c:2018: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk7_end);
	ld	hl, #(_mappk7 - 0x0001)
	push	hl
	ld	hl, #0x1600
	push	hl
	call	_cpct_zx7b_decrunch_s
;src/main.c:2020: lName = "4;2@@@CASTLE";
	ld	hl, #___str_42+0
	ld	(_lName), hl
;src/main.c:2022: doorKey[0] = 5; // diamond dust
	ld	hl, #_doorKey
	ld	(hl), #0x05
;src/main.c:2023: doorKey[1] = 11; // dragon blood
	ld	hl, #(_doorKey + 0x0001)
	ld	(hl), #0x0b
;src/main.c:2024: doorKey[2] = 7; // mammooth poop
	ld	hl, #(_doorKey + 0x0002)
	ld	(hl), #0x07
;src/main.c:2025: doorKey[3] = 11; // dragon blood
	ld	hl, #(_doorKey + 0x0003)
	ld	(hl), #0x0b
;src/main.c:2026: doorKey[4] = 5; // diamond dust
	ld	hl, #(_doorKey + 0x0004)
	ld	(hl), #0x05
;src/main.c:2028: storeX = 33;
	ld	hl,#_storeX + 0
	ld	(hl), #0x21
;src/main.c:2029: storeY = 95;
	ld	hl,#_storeY + 0
	ld	(hl), #0x5f
;src/main.c:2030: break;
	jp	00113$
;src/main.c:2033: case 8: {			 
00109$:
;src/main.c:2035: SetEnemyParams(2, NOBODY,	M_linear_X, 	D_left,     1,  0,   0,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	l, #0x00
	push	hl
	ld	hl, #0x0102
	push	hl
	ld	hl, #0x0009
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2036: SetEnemyParams(3, GHOST,	M_chaser,		D_right,    7,  2, 114,   0,   0);						
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x7202
	push	hl
	ld	hl, #0x0703
	push	hl
	ld	hl, #0x0304
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2037: SetEnemyParams(4, KNIGHT, 	M_linear_XY,    D_right,    1, 10,  68,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x440a
	push	hl
	ld	hl, #0x0103
	push	hl
	ld	h, #0x02
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2038: SetEnemyParams(5, KNIGHT,	M_linear_XY,	D_down,     1,  2,  38,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x2602
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	hl, #0x0203
	push	hl
	ld	a, #0x05
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2040: spr[0].x = spr[0].px = 34; 
	ld	hl, #(_spr + 0x0004)
	ld	(hl), #0x22
	ld	hl, #(_spr + 0x0002)
	ld	(hl), #0x22
;src/main.c:2041: spr[0].y = spr[0].py = 176;			
	ld	hl, #(_spr + 0x0005)
	ld	(hl), #0xb0
	ld	hl, #(_spr + 0x0003)
	ld	(hl), #0xb0
;src/main.c:2043: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk8_end);
	ld	hl, #(_mappk8 - 0x0001)
	push	hl
	ld	hl, #0x1600
	push	hl
	call	_cpct_zx7b_decrunch_s
;src/main.c:2045: lName = "5;1@@@TOWER";	
	ld	hl, #___str_43+0
	ld	(_lName), hl
;src/main.c:2047: doorKey[0] = 8; // kraken ink
	ld	hl, #_doorKey
	ld	(hl), #0x08
;src/main.c:2048: doorKey[1] = 9; // mermaid tear
	ld	hl, #(_doorKey + 0x0001)
	ld	(hl), #0x09
;src/main.c:2049: doorKey[2] = 10; // martian mushroom
	ld	hl, #(_doorKey + 0x0002)
	ld	(hl), #0x0a
;src/main.c:2050: doorKey[3] = 11; // dragon blood
	ld	hl, #(_doorKey + 0x0003)
	ld	(hl), #0x0b
;src/main.c:2051: doorKey[4] = 12; // dodo egg
	ld	hl, #(_doorKey + 0x0004)
	ld	(hl), #0x0c
;src/main.c:2053: storeX = 25;
	ld	hl,#_storeX + 0
	ld	(hl), #0x19
;src/main.c:2054: storeY = 95;		
	ld	hl,#_storeY + 0
	ld	(hl), #0x5f
;src/main.c:2055: break;
	jp	00113$
;src/main.c:2058: case 9: {			 
00110$:
;src/main.c:2060: SetEnemyParams(2, BAT,		M_linear_X, 	D_left,     1, 73, 111,  41,  73);
	ld	hl, #0x4929
	push	hl
	ld	hl, #0x6f49
	push	hl
	ld	hl, #0x0102
	push	hl
	ld	hl, #0x0005
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2061: SetEnemyParams(3, BAT,		M_linear_X,		D_right,    1,  2, 111,   2,  34);				
	ld	hl, #0x2202
	push	hl
	ld	h, #0x6f
	push	hl
	ld	hl, #0x0103
	push	hl
	ld	hl, #0x0005
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2062: SetEnemyParams(4, SENTINEL, M_linear_Y,    	D_down,     1, 27,  44,  44, 175);
	ld	hl, #0xaf2c
	push	hl
	ld	hl, #0x2c1b
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	l, #0x02
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2063: SetEnemyParams(5, SENTINEL,	M_linear_Y,		D_up,       1, 49, 160,  44, 175);
	ld	hl, #0xaf2c
	push	hl
	ld	hl, #0xa031
	push	hl
	ld	hl, #0x0100
	push	hl
	ld	l, #0x02
	push	hl
	ld	a, #0x05
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2065: spr[0].x = spr[0].px = 34; 
	ld	hl, #(_spr + 0x0004)
	ld	(hl), #0x22
	ld	hl, #(_spr + 0x0002)
	ld	(hl), #0x22
;src/main.c:2066: spr[0].y = spr[0].py = 176;			
	ld	hl, #(_spr + 0x0005)
	ld	(hl), #0xb0
	ld	hl, #(_spr + 0x0003)
	ld	(hl), #0xb0
;src/main.c:2068: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk9_end);
	ld	hl, #(_mappk9 - 0x0001)
	push	hl
	ld	hl, #0x1600
	push	hl
	call	_cpct_zx7b_decrunch_s
;src/main.c:2070: lName = "5;2@@@TOWER";	
	ld	hl, #___str_44+0
	ld	(_lName), hl
;src/main.c:2072: doorKey[0] = 10; // martian mushroom
	ld	hl, #_doorKey
	ld	(hl), #0x0a
;src/main.c:2073: doorKey[1] = 5; // diamond dust
	ld	hl, #(_doorKey + 0x0001)
	ld	(hl), #0x05
;src/main.c:2074: doorKey[2] = 12; // dodo egg
	ld	hl, #(_doorKey + 0x0002)
	ld	(hl), #0x0c
;src/main.c:2075: doorKey[3] = 4; // toad snot
	ld	hl, #(_doorKey + 0x0003)
	ld	(hl), #0x04
;src/main.c:2076: doorKey[4] = 13; // unicorn blood
	ld	hl, #(_doorKey + 0x0004)
	ld	(hl), #0x0d
;src/main.c:2078: storeX = 41;
	ld	hl,#_storeX + 0
	ld	(hl), #0x29
;src/main.c:2079: storeY = 43;		
	ld	hl,#_storeY + 0
	ld	(hl), #0x2b
;src/main.c:2080: break;
	jp	00113$
;src/main.c:2083: case 10: {			 
00111$:
;src/main.c:2085: SetEnemyParams(2, SENTINEL,	M_linear_X, 	D_left,     1,  2, 156,   2,  73);
	ld	hl, #0x4902
	push	hl
	ld	h, #0x9c
	push	hl
	ld	h, #0x01
	push	hl
	ld	h, #0x00
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2086: SetEnemyParams(3, GHOST,	M_chaser, 		D_right,    4,  2, 114,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x7202
	push	hl
	ld	hl, #0x0403
	push	hl
	ld	hl, #0x0304
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2087: SetEnemyParams(4, KNIGHT,	M_linear_Y, 	D_right,    1, 17,  40,  40, 145);
	ld	hl, #0x9128
	push	hl
	ld	hl, #0x2811
	push	hl
	ld	hl, #0x0103
	push	hl
	ld	l, #0x03
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2088: SetEnemyParams(5, KNIGHT,	M_linear_Y, 	D_left,     1, 59,  40,  40, 145);
	ld	hl, #0x9128
	push	hl
	ld	hl, #0x283b
	push	hl
	ld	hl, #0x0102
	push	hl
	ld	l, #0x03
	push	hl
	ld	a, #0x05
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2090: spr[0].x = spr[0].px = 54; 
	ld	hl, #(_spr + 0x0004)
	ld	(hl), #0x36
	ld	hl, #(_spr + 0x0002)
	ld	(hl), #0x36
;src/main.c:2091: spr[0].y = spr[0].py = 176;			
	ld	hl, #(_spr + 0x0005)
	ld	(hl), #0xb0
	ld	hl, #(_spr + 0x0003)
	ld	(hl), #0xb0
;src/main.c:2093: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk10_end);
	ld	hl, #(_mappk10 + 0x01ad)
	push	hl
	ld	hl, #0x1600
	push	hl
	call	_cpct_zx7b_decrunch_s
;src/main.c:2095: lName = "6;1@@LIBRARY";
	ld	hl, #___str_45+0
	ld	(_lName), hl
;src/main.c:2097: doorKey[0] = 11; // dragon blood
	ld	hl, #_doorKey
	ld	(hl), #0x0b
;src/main.c:2098: doorKey[1] = 8; // kraken ink
	ld	hl, #(_doorKey + 0x0001)
	ld	(hl), #0x08
;src/main.c:2099: doorKey[2] = 9; // dodo egg
	ld	hl, #(_doorKey + 0x0002)
	ld	(hl), #0x09
;src/main.c:2100: doorKey[3] = 10; // martian mushroom
	ld	hl, #(_doorKey + 0x0003)
	ld	(hl), #0x0a
;src/main.c:2101: doorKey[4] = 15; // mordor lava
	ld	hl, #(_doorKey + 0x0004)
	ld	(hl), #0x0f
;src/main.c:2103: storeX = 3;
	ld	hl,#_storeX + 0
	ld	(hl), #0x03
;src/main.c:2104: storeY = 143;
	ld	hl,#_storeY + 0
	ld	(hl), #0x8f
;src/main.c:2105: break;
	jp	00113$
;src/main.c:2108: case 11: {			 
00112$:
;src/main.c:2110: SetEnemyParams(2, GHOST,	M_linear_X, 	D_left,     1,  2, 132,   2,  72);
	ld	hl, #0x4802
	push	hl
	ld	h, #0x84
	push	hl
	ld	h, #0x01
	push	hl
	ld	hl, #0x0004
	push	hl
	ld	a, #0x02
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2111: SetEnemyParams(3, GHOST,	M_chaser, 		D_right,    5,  2, 114,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x7202
	push	hl
	ld	hl, #0x0503
	push	hl
	ld	hl, #0x0304
	push	hl
	ld	a, #0x03
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2112: SetEnemyParams(4, KNIGHT,	M_linear_XY, 	D_down,     1, 21,  38,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x2615
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	hl, #0x0203
	push	hl
	ld	a, #0x04
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2113: SetEnemyParams(5, KNIGHT,	M_linear_XY, 	D_down,     1, 55,  38,   0,   0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #0x2637
	push	hl
	ld	hl, #0x0101
	push	hl
	ld	hl, #0x0203
	push	hl
	ld	a, #0x05
	push	af
	inc	sp
	call	_SetEnemyParams
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
;src/main.c:2115: spr[0].x = spr[0].px = 34; 
	ld	hl, #(_spr + 0x0004)
	ld	(hl), #0x22
	ld	hl, #(_spr + 0x0002)
	ld	(hl), #0x22
;src/main.c:2116: spr[0].y = spr[0].py = 176;			
	ld	hl, #(_spr + 0x0005)
	ld	(hl), #0xb0
	ld	hl, #(_spr + 0x0003)
	ld	(hl), #0xb0
;src/main.c:2118: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk11_end);
	ld	hl, #(_mappk11 + 0x020b)
	push	hl
	ld	hl, #0x1600
	push	hl
	call	_cpct_zx7b_decrunch_s
;src/main.c:2120: lName = "6;2@@LIBRARY";
	ld	hl, #___str_46+0
	ld	(_lName), hl
;src/main.c:2122: doorKey[0] = 13; // unicorn blood
	ld	hl, #_doorKey
	ld	(hl), #0x0d
;src/main.c:2123: doorKey[1] = 15; // mordor lava
	ld	hl, #(_doorKey + 0x0001)
	ld	(hl), #0x0f
;src/main.c:2124: doorKey[2] = 14; // troll fat
	ld	hl, #(_doorKey + 0x0002)
	ld	(hl), #0x0e
;src/main.c:2125: doorKey[3] = 15; // mordor lava
	ld	hl, #(_doorKey + 0x0003)
	ld	(hl), #0x0f
;src/main.c:2126: doorKey[4] = 13; // unicorn blood
	ld	hl, #(_doorKey + 0x0004)
	ld	(hl), #0x0d
;src/main.c:2128: storeX = 73;
	ld	hl,#_storeX + 0
	ld	(hl), #0x49
;src/main.c:2129: storeY = 11;
	ld	hl,#_storeY + 0
	ld	(hl), #0x0b
;src/main.c:2132: }
00113$:
;src/main.c:2134: if (TwoPlayers) {
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	ret	Z
;src/main.c:2135: spr[1].x = spr[1].px = spr[0].x + 6; 
	ld	bc, #_spr + 17
	ld	de, #_spr + 19
	ld	a, (#_spr + 2)
	add	a, #0x06
	ld	(de), a
	ld	(bc), a
;src/main.c:2136: spr[1].y = spr[1].py = spr[0].y;
	ld	bc, #_spr + 18
	ld	de, #_spr + 20
	ld	a, (#_spr + 3)
	ld	(de), a
	ld	(bc), a
	ret
___str_35:
	.ascii "1;1@@GARDENS"
	.db 0x00
___str_36:
	.ascii "1;2@@GARDENS"
	.db 0x00
___str_37:
	.ascii "2;1@CEMETERY"
	.db 0x00
___str_38:
	.ascii "2;2@CEMETERY"
	.db 0x00
___str_39:
	.ascii "3;1@@CELLARS"
	.db 0x00
___str_40:
	.ascii "3;2@@CELLARS"
	.db 0x00
___str_41:
	.ascii "4;1@@@CASTLE"
	.db 0x00
___str_42:
	.ascii "4;2@@@CASTLE"
	.db 0x00
___str_43:
	.ascii "5;1@@@TOWER"
	.db 0x00
___str_44:
	.ascii "5;2@@@TOWER"
	.db 0x00
___str_45:
	.ascii "6;1@@LIBRARY"
	.db 0x00
___str_46:
	.ascii "6;2@@LIBRARY"
	.db 0x00
;src/main.c:2142: void CheckEnemyCollision(u8 player, TSpr *pSpr) 
;	---------------------------------
; Function CheckEnemyCollision
; ---------------------------------
_CheckEnemyCollision::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;src/main.c:2144: if ((spr[player].x + SPR_W) > pSpr->x && spr[player].x < (pSpr->x + SPR_W) &&
	ld	bc, #_spr+0
	ld	e,4 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl,bc
	ld	e,l
	ld	d,h
	inc	hl
	inc	hl
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0x0005
	add	hl,bc
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, 5 (ix)
	ld	-2 (ix), a
	ld	a, 6 (ix)
	ld	-1 (ix), a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
;src/main.c:2145: (spr[player].y + SPR_H) > pSpr->y && spr[player].y < (pSpr->y + SPR_H)) {
	inc	de
	inc	de
	inc	de
	inc	sp
	inc	sp
	push	de
;src/main.c:2144: if ((spr[player].x + SPR_W) > pSpr->x && spr[player].x < (pSpr->x + SPR_W) &&
	ld	a, l
	sub	a, -6 (ix)
	ld	a, h
	sbc	a, -5 (ix)
	jp	PO, 00153$
	xor	a, #0x80
00153$:
	jp	P, 00110$
	ld	de, #0x0005
	add	hl, de
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00154$
	xor	a, #0x80
00154$:
	jp	P, 00110$
;src/main.c:2145: (spr[player].y + SPR_H) > pSpr->y && spr[player].y < (pSpr->y + SPR_H)) {
	pop	hl
	push	hl
	ld	e, (hl)
	ld	d, #0x00
	ld	hl, #0x000c
	add	hl,de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	inc	hl
	inc	hl
	ld	l, (hl)
	ld	h, #0x00
	ld	a, l
	sub	a, -4 (ix)
	ld	a, h
	sbc	a, -3 (ix)
	jp	PO, 00155$
	xor	a, #0x80
00155$:
	jp	P, 00110$
	push	de
	ld	de, #0x000c
	add	hl, de
	pop	de
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	PO, 00156$
	xor	a, #0x80
00156$:
	jp	P, 00110$
;src/main.c:2147: ExplodeSprite(player, pSpr->num);			
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	b, (hl)
	push	bc
	inc	sp
	ld	a, 4 (ix)
	push	af
	inc	sp
	call	_ExplodeSprite
	pop	af
;src/main.c:2148: GameOver(player);
	ld	a, 4 (ix)
	push	af
	inc	sp
	call	_GameOver
	inc	sp
	jr	00115$
00110$:
;src/main.c:2151: else if (sht.active) {
	ld	a, (#_sht + 4)
	or	a, a
	jr	Z,00115$
;src/main.c:2152: if ((sht.x + SHT_W) > (spr[player].x) && sht.x < (spr[player].x + SPR_W))
	ld	hl, #_sht + 0
	ld	e, (hl)
	ld	d, #0x00
	ld	hl, #0x0004
	add	hl, de
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00157$
	xor	a, #0x80
00157$:
	jp	P, 00115$
	ld	a, e
	sub	a, -6 (ix)
	ld	a, d
	sbc	a, -5 (ix)
	jp	PO, 00158$
	xor	a, #0x80
00158$:
	jp	P, 00115$
;src/main.c:2153: if ((sht.y + SHT_H) > (spr[player].y) && (sht.y) < (spr[player].y + SPR_H))	{
	ld	hl, #_sht + 1
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0x0008
	add	hl,bc
	ex	de,hl
	pop	hl
	push	hl
	ld	l, (hl)
	ld	h, #0x00
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jp	PO, 00159$
	xor	a, #0x80
00159$:
	jp	P, 00115$
	ld	de, #0x000c
	add	hl, de
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00160$
	xor	a, #0x80
00160$:
	jp	P, 00115$
;src/main.c:2155: DeleteShot();
	call	_DeleteShot
;src/main.c:2156: ExplodeSprite(player, pSpr->num);			
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	b, (hl)
	push	bc
	inc	sp
	ld	a, 4 (ix)
	push	af
	inc	sp
	call	_ExplodeSprite
	pop	af
;src/main.c:2157: GameOver(player);
	ld	a, 4 (ix)
	push	af
	inc	sp
	call	_GameOver
	inc	sp
00115$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:2164: void EnemyLoop(TSpr *pSpr) __z88dk_fastcall {
;	---------------------------------
; Function EnemyLoop
; ---------------------------------
_EnemyLoop::
;src/main.c:2165: if (pSpr->ident == NOBODY) 
	ld	c,l
	ld	b,h
	inc	hl
	ld	a, (hl)
	sub	a, #0x09
	ret	Z
;src/main.c:2166: return; 
	jr	00102$
00102$:
;src/main.c:2168: MoveEnemy(pSpr);
	push	bc
	push	bc
	call	_MoveEnemy
	pop	af
	pop	bc
;src/main.c:2170: SelectFrame(pSpr); 
	push	bc
	ld	l, c
	ld	h, b
	call	_SelectFrame
	pop	bc
;src/main.c:2171: WalkAnim(pSpr, pSpr->dir);
	push	bc
	pop	iy
	ld	d, 7 (iy)
	push	bc
	push	de
	inc	sp
	push	bc
	call	_WalkAnim
	pop	af
	inc	sp
	pop	bc
;src/main.c:2173: DeleteSprite(pSpr);
	push	bc
	ld	l, c
	ld	h, b
	call	_DeleteSprite
	pop	bc
;src/main.c:2174: pSpr->px = pSpr->x; // save the current X coordinate
	ld	hl, #0x0004
	add	hl,bc
	ex	de,hl
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	(de), a
;src/main.c:2175: pSpr->py = pSpr->y; // save the current Y coordinate
	ld	hl, #0x0005
	add	hl,bc
	ex	de,hl
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	(de), a
;src/main.c:2176: PrintSprite(pSpr);
	push	bc
	ld	l, c
	ld	h, b
	call	_PrintSprite
	pop	bc
;src/main.c:2178: CheckEnemyCollision(0, pSpr);
	push	bc
	push	bc
	xor	a, a
	push	af
	inc	sp
	call	_CheckEnemyCollision
	pop	af
	inc	sp
	pop	bc
;src/main.c:2179: if (TwoPlayers)
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	ret	Z
;src/main.c:2180: CheckEnemyCollision(1, pSpr);
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	call	_CheckEnemyCollision
	pop	af
	inc	sp
	ret
;src/main.c:2196: void PrintStartMenu() {
;	---------------------------------
; Function PrintStartMenu
; ---------------------------------
_PrintStartMenu::
;src/main.c:2197: ClearScreen();
	call	_ClearScreen
;src/main.c:2200: cpct_drawSprite(g_logo_0, cpctm_screenPtr(CPCT_VMEM_START, 0, 0), G_LOGO_0_W, G_LOGO_0_H);
	ld	hl, #0x2328
	push	hl
	ld	hl, #0xc000
	push	hl
	ld	hl, #_g_logo_0
	push	hl
	call	_cpct_drawSprite
;src/main.c:2201: cpct_drawSprite(g_logo_1, cpctm_screenPtr(CPCT_VMEM_START, G_LOGO_0_W, 0), G_LOGO_0_W, G_LOGO_0_H);
	ld	hl, #0x2328
	push	hl
	ld	h, #0xc0
	push	hl
	ld	hl, #_g_logo_1
	push	hl
	call	_cpct_drawSprite
;src/main.c:2203: PrintText("1@@1@PLAYER@GAME", 10, 50, 0);
	ld	hl, #0x0032
	push	hl
	ld	a, #0x0a
	push	af
	inc	sp
	ld	hl, #___str_47
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2204: PrintText("2@@2@PLAYER@GAME", 10, 60, 0);
	inc	sp
	ld	hl,#0x003c
	ex	(sp),hl
	ld	a, #0x0a
	push	af
	inc	sp
	ld	hl, #___str_48
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2205: PrintText("3@@REDEFINE@CONTROLS", 10, 70, 0);
	inc	sp
	ld	hl,#0x0046
	ex	(sp),hl
	ld	a, #0x0a
	push	af
	inc	sp
	ld	hl, #___str_49
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
;src/main.c:2206: if (turboMode)
	ld	a,(#_turboMode + 0)
	or	a, a
	jr	Z,00102$
;src/main.c:2207: PrintText("4@@TURBO@MODE:@ON", 10, 80, 0);
	ld	hl, #0x0050
	push	hl
	ld	a, #0x0a
	push	af
	inc	sp
	ld	hl, #___str_50
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
	jr	00103$
00102$:
;src/main.c:2209: PrintText("4@@TURBO@MODE:@OFF", 10, 80, 0);
	ld	hl, #0x0050
	push	hl
	ld	a, #0x0a
	push	af
	inc	sp
	ld	hl, #___str_51
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
00103$:
;src/main.c:2213: cpct_getScreenPtr(CPCT_VMEM_START, 6, 187), SPR_W, SPR_H, g_maskTable);
	ld	hl, #0xbb06
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/main.c:2212: cpct_drawSpriteMaskedAlignedTable(g_sorcerer1_06, 
	ld	bc, #_g_sorcerer1_06+0
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0c05
	push	de
	push	hl
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:2215: cpct_getScreenPtr(CPCT_VMEM_START, 68, 187), SPR_W, SPR_H, g_maskTable);
	ld	hl, #0xbb44
	push	hl
	ld	hl, #0xc000
	push	hl
	call	_cpct_getScreenPtr
;src/main.c:2214: cpct_drawSpriteMaskedAlignedTable(g_sorcerer2_04, 
	ld	bc, #_g_sorcerer2_04+0
	ld	de, #_g_maskTable
	push	de
	ld	de, #0x0c05
	push	de
	push	hl
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
;src/main.c:2217: PrintText("CODE@=@GFX", 25, 110, 0);
	ld	hl, #0x006e
	push	hl
	ld	a, #0x19
	push	af
	inc	sp
	ld	hl, #___str_52
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2218: PrintText("SALVAKANTERO", 22, 120, 0);
	inc	sp
	ld	hl,#0x0078
	ex	(sp),hl
	ld	a, #0x16
	push	af
	inc	sp
	ld	hl, #___str_53
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2219: PrintText("MUSIC@=@FX", 25, 135, 0);
	inc	sp
	ld	hl,#0x0087
	ex	(sp),hl
	ld	a, #0x19
	push	af
	inc	sp
	ld	hl, #___str_54
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2220: PrintText("MCKLAIN", 30, 145, 0);
	inc	sp
	ld	hl,#0x0091
	ex	(sp),hl
	ld	a, #0x1e
	push	af
	inc	sp
	ld	hl, #___str_55
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2221: PrintText("BETA@TESTING", 22, 160, 0);
	inc	sp
	ld	hl,#0x00a0
	ex	(sp),hl
	ld	a, #0x16
	push	af
	inc	sp
	ld	hl, #___str_56
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2222: PrintText("BLACKMORES", 25, 170, 0);
	inc	sp
	ld	hl,#0x00aa
	ex	(sp),hl
	ld	a, #0x19
	push	af
	inc	sp
	ld	hl, #___str_57
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2224: PrintText("PLAY@ON@RETRO@2020", 13, 190, 0);
	inc	sp
	ld	hl,#0x00be
	ex	(sp),hl
	ld	a, #0x0d
	push	af
	inc	sp
	ld	hl, #___str_58
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
	ret
___str_47:
	.ascii "1@@1@PLAYER@GAME"
	.db 0x00
___str_48:
	.ascii "2@@2@PLAYER@GAME"
	.db 0x00
___str_49:
	.ascii "3@@REDEFINE@CONTROLS"
	.db 0x00
___str_50:
	.ascii "4@@TURBO@MODE:@ON"
	.db 0x00
___str_51:
	.ascii "4@@TURBO@MODE:@OFF"
	.db 0x00
___str_52:
	.ascii "CODE@=@GFX"
	.db 0x00
___str_53:
	.ascii "SALVAKANTERO"
	.db 0x00
___str_54:
	.ascii "MUSIC@=@FX"
	.db 0x00
___str_55:
	.ascii "MCKLAIN"
	.db 0x00
___str_56:
	.ascii "BETA@TESTING"
	.db 0x00
___str_57:
	.ascii "BLACKMORES"
	.db 0x00
___str_58:
	.ascii "PLAY@ON@RETRO@2020"
	.db 0x00
;src/main.c:2229: void PrintObjInfo() {
;	---------------------------------
; Function PrintObjInfo
; ---------------------------------
_PrintObjInfo::
;src/main.c:2232: ClearScreen();
	call	_ClearScreen
;src/main.c:2233: PrintText("INGREDIENT@VALUES", 13, 0, 0);
	ld	hl, #0x0000
	push	hl
	ld	a, #0x0d
	push	af
	inc	sp
	ld	hl, #___str_59
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2235: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 3, 12), cpct_px2byteM0(4, 4), 37, 188);
	inc	sp
	ld	hl,#0x0404
	ex	(sp),hl
	call	_cpct_px2byteM0
	ld	h, #0x00
	ld	bc, #0xbc25
	push	bc
	push	hl
	ld	hl, #0xe053
	push	hl
	call	_cpct_drawSolidBox
;src/main.c:2236: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 40, 12), cpct_px2byteM0(4, 4), 35, 188);	
	ld	hl, #0x0404
	push	hl
	call	_cpct_px2byteM0
	ld	h, #0x00
	ld	bc, #0xbc23
	push	bc
	push	hl
	ld	hl, #0xe078
	push	hl
	call	_cpct_drawSolidBox
;src/main.c:2237: PrintFrame(3,12,72,194);
	ld	hl, #0xc248
	push	hl
	ld	hl, #0x0c03
	push	hl
	call	_PrintFrame
	pop	af
	pop	af
;src/main.c:2239: for (obj=4; obj<16; obj++) {
	ld	bc,#0x1904
00102$:
;src/main.c:2240: PrintObject(obj, 7, yPos);
	push	bc
	push	bc
	inc	sp
	ld	b, #0x07
	push	bc
	call	_PrintObject
	pop	af
	inc	sp
	pop	bc
;src/main.c:2241: PrintNumber(obj-3, 2, 62, yPos, 0); PrintText("<", 68, yPos, 0);
	ld	e, c
	ld	d, #0x00
	ld	a, e
	add	a, #0xfd
	ld	e, a
	ld	a, d
	adc	a, #0xff
	ld	d, a
	push	bc
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl, #0x3e02
	push	hl
	push	de
	call	_PrintNumber
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	pop	bc
	push	bc
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, #0x44
	push	af
	inc	sp
	ld	hl, #___str_60
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/main.c:2242: yPos += 14;
	ld	a, b
	add	a, #0x0e
	ld	b, a
;src/main.c:2239: for (obj=4; obj<16; obj++) {
	inc	c
	ld	a, c
	sub	a, #0x10
	jr	C,00102$
;src/main.c:2245: PrintText("TOAD@SNOT", 14, 25, 0);
	ld	hl, #0x0019
	push	hl
	ld	a, #0x0e
	push	af
	inc	sp
	ld	hl, #___str_61
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2246: PrintText("DIAMOND@DUST", 14, 39, 0);
	inc	sp
	ld	hl,#0x0027
	ex	(sp),hl
	ld	a, #0x0e
	push	af
	inc	sp
	ld	hl, #___str_62
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2247: PrintText("NEWT@EYE", 14, 53, 0);
	inc	sp
	ld	hl,#0x0035
	ex	(sp),hl
	ld	a, #0x0e
	push	af
	inc	sp
	ld	hl, #___str_63
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2248: PrintText("MAMMOTH@POOP", 14, 67, 0);
	inc	sp
	ld	hl,#0x0043
	ex	(sp),hl
	ld	a, #0x0e
	push	af
	inc	sp
	ld	hl, #___str_64
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2249: PrintText("KRAKEN@INK", 14, 81, 0); 
	inc	sp
	ld	hl,#0x0051
	ex	(sp),hl
	ld	a, #0x0e
	push	af
	inc	sp
	ld	hl, #___str_65
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2250: PrintText("MERMAID@TEAR", 14, 95, 0);
	inc	sp
	ld	hl,#0x005f
	ex	(sp),hl
	ld	a, #0x0e
	push	af
	inc	sp
	ld	hl, #___str_66
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2251: PrintText("MARTIAN@MUSHROOM", 14, 109, 0);
	inc	sp
	ld	hl,#0x006d
	ex	(sp),hl
	ld	a, #0x0e
	push	af
	inc	sp
	ld	hl, #___str_67
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2252: PrintText("DRAGON@BLOOD", 14, 123, 0);
	inc	sp
	ld	hl,#0x007b
	ex	(sp),hl
	ld	a, #0x0e
	push	af
	inc	sp
	ld	hl, #___str_68
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2253: PrintText("DODO@EGG", 14, 137, 0); 
	inc	sp
	ld	hl,#0x0089
	ex	(sp),hl
	ld	a, #0x0e
	push	af
	inc	sp
	ld	hl, #___str_69
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2254: PrintText("UNICORN@BLOOD", 14, 151, 0);
	inc	sp
	ld	hl,#0x0097
	ex	(sp),hl
	ld	a, #0x0e
	push	af
	inc	sp
	ld	hl, #___str_70
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2255: PrintText("TROLL@FAT", 14, 165, 0); 
	inc	sp
	ld	hl,#0x00a5
	ex	(sp),hl
	ld	a, #0x0e
	push	af
	inc	sp
	ld	hl, #___str_71
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2256: PrintText("MORDOR@LAVA", 14, 179, 0);
	inc	sp
	ld	hl,#0x00b3
	ex	(sp),hl
	ld	a, #0x0e
	push	af
	inc	sp
	ld	hl, #___str_72
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
	ret
___str_59:
	.ascii "INGREDIENT@VALUES"
	.db 0x00
___str_60:
	.ascii "<"
	.db 0x00
___str_61:
	.ascii "TOAD@SNOT"
	.db 0x00
___str_62:
	.ascii "DIAMOND@DUST"
	.db 0x00
___str_63:
	.ascii "NEWT@EYE"
	.db 0x00
___str_64:
	.ascii "MAMMOTH@POOP"
	.db 0x00
___str_65:
	.ascii "KRAKEN@INK"
	.db 0x00
___str_66:
	.ascii "MERMAID@TEAR"
	.db 0x00
___str_67:
	.ascii "MARTIAN@MUSHROOM"
	.db 0x00
___str_68:
	.ascii "DRAGON@BLOOD"
	.db 0x00
___str_69:
	.ascii "DODO@EGG"
	.db 0x00
___str_70:
	.ascii "UNICORN@BLOOD"
	.db 0x00
___str_71:
	.ascii "TROLL@FAT"
	.db 0x00
___str_72:
	.ascii "MORDOR@LAVA"
	.db 0x00
;src/main.c:2282: void StartMenu() {
;	---------------------------------
; Function StartMenu
; ---------------------------------
_StartMenu::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/main.c:2283: u8 randSeed = 254;
	ld	-2 (ix), #0xfe
;src/main.c:2284: u8 page = 0;
	ld	-1 (ix), #0x00
;src/main.c:2286: while(1) {
00122$:
;src/main.c:2289: if (++randSeed == 255) {					
	inc	-2 (ix)
	ld	a, -2 (ix)
	inc	a
	jr	NZ,00109$
;src/main.c:2290: if (page == 0) 		PrintStartMenu();	// page 1; menu
	ld	a, -1 (ix)
	or	a, a
	jr	NZ,00104$
	call	_PrintStartMenu
	jr	00105$
00104$:
;src/main.c:2291: else if(page == 4)	PrintObjInfo();		// page 2; ingredients info
	ld	a, -1 (ix)
	sub	a, #0x04
	jr	NZ,00105$
	call	_PrintObjInfo
00105$:
;src/main.c:2293: randSeed = 0;
	ld	-2 (ix), #0x00
;src/main.c:2294: if (++page == 8) //12
	inc	-1 (ix)
	ld	a, -1 (ix)
	sub	a, #0x08
	jr	NZ,00109$
;src/main.c:2295: page = 0;		
	ld	-1 (ix), #0x00
00109$:
;src/main.c:2298: cpct_scanKeyboard_f();
	call	_cpct_scanKeyboard_f
;src/main.c:2299: if(cpct_isKeyPressed(Key_1)) { // 1 player
	ld	hl, #0x0108
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00119$
;src/main.c:2300: TwoPlayers = FALSE;	
	ld	hl,#_TwoPlayers + 0
	ld	(hl), #0x00
;src/main.c:2301: break;
	jp	00123$
00119$:
;src/main.c:2303: else if(cpct_isKeyPressed(Key_2)) {	// 2 players
	ld	hl, #0x0208
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00116$
;src/main.c:2304: TwoPlayers = TRUE;
	ld	hl,#_TwoPlayers + 0
	ld	(hl), #0x01
;src/main.c:2305: break;
	jp	00123$
00116$:
;src/main.c:2307: else if(cpct_isKeyPressed(Key_3)){ // redefine keys
	ld	hl, #0x0207
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jp	Z, 00113$
;src/main.c:2308: Wait4Key(Key_3);
	ld	hl, #0x0207
	push	hl
	call	_Wait4Key
	pop	af
;src/main.c:2309: randSeed = 0; page = 1;
	ld	-2 (ix), #0x00
	ld	-1 (ix), #0x01
;src/main.c:2310: PrintStartMenu();
	call	_PrintStartMenu
;src/main.c:2312: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 22, 110), cpct_px2byteM0(1, 1), 45, 70);
	ld	hl, #0x0101
	push	hl
	call	_cpct_px2byteM0
	ld	h, #0x00
	ld	bc, #0x462d
	push	bc
	push	hl
	ld	hl, #0xf426
	push	hl
	call	_cpct_drawSolidBox
;src/main.c:2315: ctlUp[0] = 		RedefineKey("@P1@UP");
	ld	hl, #___str_73
	push	hl
	call	_RedefineKey
	pop	af
	ld	c, l
	ld	b, h
	ld	(_ctlUp), bc
;src/main.c:2316: ctlDown[0] = 	RedefineKey("P1@DOWN");
	ld	hl, #___str_74
	push	hl
	call	_RedefineKey
	pop	af
	ld	c, l
	ld	b, h
	ld	(_ctlDown), bc
;src/main.c:2317: ctlLeft[0] = 	RedefineKey("P1@LEFT");
	ld	hl, #___str_75
	push	hl
	call	_RedefineKey
	pop	af
	ld	c, l
	ld	b, h
	ld	(_ctlLeft), bc
;src/main.c:2318: ctlRight[0] = 	RedefineKey("P1@RIGHT");
	ld	hl, #___str_76
	push	hl
	call	_RedefineKey
	pop	af
	ld	c, l
	ld	b, h
	ld	(_ctlRight), bc
;src/main.c:2320: ctlUp[1] = 		RedefineKey("@P2@UP@@");
	ld	hl, #___str_77
	push	hl
	call	_RedefineKey
	pop	af
	ld	c, l
	ld	b, h
	ld	((_ctlUp + 0x0002)), bc
;src/main.c:2321: ctlDown[1] = 	RedefineKey("P2@DOWN");
	ld	hl, #___str_78
	push	hl
	call	_RedefineKey
	pop	af
	ld	c, l
	ld	b, h
	ld	((_ctlDown + 0x0002)), bc
;src/main.c:2322: ctlLeft[1] = 	RedefineKey("P2@LEFT");
	ld	hl, #___str_79
	push	hl
	call	_RedefineKey
	pop	af
	ld	c, l
	ld	b, h
	ld	((_ctlLeft + 0x0002)), bc
;src/main.c:2323: ctlRight[1] = 	RedefineKey("P2@RIGHT");	
	ld	hl, #___str_80
	push	hl
	call	_RedefineKey
	pop	af
	ld	c, l
	ld	b, h
	ld	((_ctlRight + 0x0002)), bc
;src/main.c:2325: ctlAbort = 		RedefineKey("@ABORT@@");
	ld	hl, #___str_81
	push	hl
	call	_RedefineKey
	pop	af
	ld	(_ctlAbort), hl
;src/main.c:2326: ctlMusic = 		RedefineKey("@MUSIC");
	ld	hl, #___str_82
	push	hl
	call	_RedefineKey
	pop	af
	ld	(_ctlMusic), hl
;src/main.c:2327: ctlPause =		RedefineKey("@PAUSE");		
	ld	hl, #___str_83
	push	hl
	call	_RedefineKey
	pop	af
	ld	(_ctlPause), hl
;src/main.c:2328: PrintStartMenu();
	call	_PrintStartMenu
	jr	00120$
00113$:
;src/main.c:2330: else if(cpct_isKeyPressed(Key_4)) {	// turbo mode
	ld	hl, #0x0107
	call	_cpct_isKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00120$
;src/main.c:2331: turboMode = !turboMode;
	ld	iy, #_turboMode
	ld	a, 0 (iy)
	sub	a,#0x01
	ld	a, #0x00
	rla
	ld	0 (iy), a
;src/main.c:2332: randSeed = 0; page = 1;
	ld	-2 (ix), #0x00
	ld	-1 (ix), #0x01
;src/main.c:2333: PrintStartMenu();
	call	_PrintStartMenu
00120$:
;src/main.c:2335: Pause(3);
	ld	hl, #0x0003
	call	_Pause
	jp	00122$
00123$:
;src/main.c:2337: cpct_setSeed_lcg_u8(randSeed); // set the seed
	ld	l, -2 (ix)
	call	_cpct_setSeed_lcg_u8
;src/main.c:2338: ClearScreen();
	call	_ClearScreen
	ld	sp, ix
	pop	ix
	ret
___str_73:
	.ascii "@P1@UP"
	.db 0x00
___str_74:
	.ascii "P1@DOWN"
	.db 0x00
___str_75:
	.ascii "P1@LEFT"
	.db 0x00
___str_76:
	.ascii "P1@RIGHT"
	.db 0x00
___str_77:
	.ascii "@P2@UP@@"
	.db 0x00
___str_78:
	.ascii "P2@DOWN"
	.db 0x00
___str_79:
	.ascii "P2@LEFT"
	.db 0x00
___str_80:
	.ascii "P2@RIGHT"
	.db 0x00
___str_81:
	.ascii "@ABORT@@"
	.db 0x00
___str_82:
	.ascii "@MUSIC"
	.db 0x00
___str_83:
	.ascii "@PAUSE"
	.db 0x00
;src/main.c:2355: void InitValues() {	
;	---------------------------------
; Function InitValues
; ---------------------------------
_InitValues::
;src/main.c:2358: ctlUp[0] = Key_W;
	ld	hl, #0x0807
	ld	(_ctlUp), hl
;src/main.c:2359: ctlDown[0] = Key_S;
	ld	h, #0x10
	ld	(_ctlDown), hl
;src/main.c:2360: ctlLeft[0] = Key_A;
	ld	hl, #0x2008
	ld	(_ctlLeft), hl
;src/main.c:2361: ctlRight[0] = Key_D;
	ld	l, #0x07
	ld	(_ctlRight), hl
;src/main.c:2363: ctlUp[1] = Key_F5;
	ld	hl, #0x1001
	ld	((_ctlUp + 0x0002)), hl
;src/main.c:2364: ctlDown[1] = Key_F2;
	ld	h, #0x40
	ld	((_ctlDown + 0x0002)), hl
;src/main.c:2365: ctlLeft[1] = Key_F1;
	ld	h, #0x20
	ld	((_ctlLeft + 0x0002)), hl
;src/main.c:2366: ctlRight[1] = Key_F3;
	ld	l, #0x00
	ld	((_ctlRight + 0x0002)), hl
;src/main.c:2368: ctlAbort = Key_X;
	ld	hl, #0x8007
	ld	(_ctlAbort), hl
;src/main.c:2369: ctlMusic = Key_M;
	ld	hl, #0x4004
	ld	(_ctlMusic), hl
;src/main.c:2370: ctlPause = Key_H;	
	ld	hl, #0x1005
	ld	(_ctlPause), hl
;src/main.c:2372: turboMode = FALSE;
	ld	hl,#_turboMode + 0
	ld	(hl), #0x00
;src/main.c:2373: nTip = 0;
	ld	hl,#_nTip + 0
	ld	(hl), #0x00
	ret
;src/main.c:2378: void ResetData() {
;	---------------------------------
; Function ResetData
; ---------------------------------
_ResetData::
;src/main.c:2379: ctMainLoop = 0;
	ld	hl, #0x0000
	ld	(_ctMainLoop), hl
;src/main.c:2380: nObj[0] = -1;
	ld	hl, #_nObj+0
	ld	(hl), #0xff
;src/main.c:2381: nObj[1] = -1;
	inc	hl
	ld	(hl), #0xff
;src/main.c:2382: sht.active = FALSE;
	ld	hl, #(_sht + 0x0004)
	ld	(hl), #0x00
;src/main.c:2383: ctWizardAnim = 0;
	ld	hl,#_ctWizardAnim + 0
	ld	(hl), #0x00
;src/main.c:2386: spr[0].dir = D_right; 
	ld	hl, #(_spr + 0x0007)
	ld	(hl), #0x03
;src/main.c:2387: spr[0].status = S_stopped;
	ld	hl, #(_spr + 0x0006)
	ld	(hl), #0x04
;src/main.c:2388: spr[0].print_minV = TRUE; // the first time must be printed on screen
	ld	hl, #(_spr + 0x000d)
	ld	(hl), #0x01
;src/main.c:2389: spr[0].power_maxV = 0;
	ld	hl, #(_spr + 0x000e)
	ld	(hl), #0x00
;src/main.c:2390: ctInactivity[0] = 0;
	ld	bc, #_ctInactivity+0
	xor	a, a
	ld	(bc), a
;src/main.c:2392: spr[1].dir = D_left; 
	ld	hl, #(_spr + 0x0016)
	ld	(hl), #0x02
;src/main.c:2393: spr[1].status = S_stopped;	
	ld	hl, #(_spr + 0x0015)
	ld	(hl), #0x04
;src/main.c:2394: spr[1].print_minV = TRUE; // the first time must be printed on screen
	ld	hl, #(_spr + 0x001c)
	ld	(hl), #0x01
;src/main.c:2395: spr[1].power_maxV = 0;
	ld	hl, #(_spr + 0x001d)
	ld	(hl), #0x00
;src/main.c:2396: ctInactivity[1] = 0;
	inc	bc
	xor	a, a
	ld	(bc), a
;src/main.c:2398: SetEnemies();
	call	_SetEnemies
;src/main.c:2399: PrintMap();
	call	_PrintMap
;src/main.c:2400: RefreshScoreboard();
	call	_RefreshScoreboard
;src/main.c:2401: DeleteObjectInStore();
	call	_DeleteObjectInStore
;src/main.c:2404: if (nMap != lastNMap) {
	ld	a,(#_nMap + 0)
	ld	iy, #_lastNMap
	sub	a, 0 (iy)
	ret	Z
;src/main.c:2405: if (!TwoPlayers) {
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jr	NZ,00102$
;src/main.c:2406: PrintKey();
	call	_PrintKey
;src/main.c:2408: playerKey[0] = 0;
	ld	hl, #_playerKey
	ld	(hl), #0x00
;src/main.c:2409: playerKey[1] = 0;
	ld	hl, #(_playerKey + 0x0001)
	ld	(hl), #0x00
;src/main.c:2410: playerKey[2] = 0;
	ld	hl, #(_playerKey + 0x0002)
	ld	(hl), #0x00
;src/main.c:2411: playerKey[3] = 0;
	ld	hl, #(_playerKey + 0x0003)
	ld	(hl), #0x00
;src/main.c:2412: playerKey[4] = 0;
	ld	hl, #(_playerKey + 0x0004)
	ld	(hl), #0x00
00102$:
;src/main.c:2414: PrintLevelInfo();	
	call	_PrintLevelInfo
;src/main.c:2415: PrintMap();	
	call	_PrintMap
;src/main.c:2416: lastNMap = nMap;
	ld	a,(#_nMap + 0)
	ld	(#_lastNMap + 0),a
	ret
;src/main.c:2422: void InitGame() {
;	---------------------------------
; Function InitGame
; ---------------------------------
_InitGame::
;src/main.c:2423: StartMenu(); // run the start menu
	call	_StartMenu
;src/main.c:2424: nMap = 0; // initial map number
	ld	hl,#_nMap + 0
	ld	(hl), #0x00
;src/main.c:2425: lastNMap = 255;
	ld	hl,#_lastNMap + 0
	ld	(hl), #0xff
;src/main.c:2428: spr[0].num = 0; // sprite number
	ld	hl, #_spr
	ld	(hl), #0x00
;src/main.c:2429: spr[0].ident = SORCERER1; // identity
	ld	hl, #(_spr + 0x0001)
	ld	(hl), #0x00
;src/main.c:2430: spr[0].lives_speed = 3; // lives
	ld	hl, #(_spr + 0x000b)
	ld	(hl), #0x03
;src/main.c:2431: score[0] = 0; // score
	ld	hl, #0x0000
	ld	(_score), hl
;src/main.c:2432: ResetObjData(0);
	ld	l, #0x00
	call	_ResetObjData
;src/main.c:2435: spr[1].num = 1; // sprite number
	ld	hl, #(_spr + 0x000f)
	ld	(hl), #0x01
;src/main.c:2436: spr[1].ident = SORCERER2; // identity
	ld	hl, #(_spr + 0x0010)
	ld	(hl), #0x01
;src/main.c:2437: spr[1].lives_speed = 3; // lives
	ld	hl, #(_spr + 0x001a)
	ld	(hl), #0x03
;src/main.c:2438: score[1] = 0; // score
	ld	hl, #0x0000
	ld	((_score + 0x0002)), hl
;src/main.c:2439: ResetObjData(1);
	ld	l, #0x01
	call	_ResetObjData
;src/main.c:2442: spr[6].num = 6; // sprite number
	ld	hl, #(_spr + 0x005a)
	ld	(hl), #0x06
;src/main.c:2443: spr[6].ident = WIZARD; // identity
	ld	hl, #(_spr + 0x005b)
	ld	(hl), #0x07
;src/main.c:2445: InitScoreboard();		
	call	_InitScoreboard
;src/main.c:2446: ResetData();
	jp  _ResetData
;src/main.c:2451: void GameOver(u8 player) {
;	---------------------------------
; Function GameOver
; ---------------------------------
_GameOver::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/main.c:2453: if (spr[player].lives_speed > 1 && player != 2) {
	ld	bc, #_spr+0
	ld	e,4 (ix)
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, de
	add	hl,bc
	ld	bc,#0x000b
	add	hl,bc
	ex	(sp), hl
	pop	hl
	push	hl
	ld	c, (hl)
	ld	a, #0x01
	sub	a, c
	jr	NC,00113$
	ld	a, 4 (ix)
	sub	a, #0x02
	jr	Z,00113$
;src/main.c:2454: spr[player].lives_speed--;
	dec	c
	pop	hl
	push	hl
	ld	(hl), c
;src/main.c:2455: ResetData();
	call	_ResetData
	jp	00116$
00113$:
;src/main.c:2459: spr[player].lives_speed = 0;
	pop	hl
	push	hl
	ld	(hl), #0x00
;src/main.c:2460: RefreshScoreboard();
	call	_RefreshScoreboard
;src/main.c:2462: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START,  6, 80), cpct_px2byteM0(4, 4), 34, 60);
	ld	hl, #0x0404
	push	hl
	call	_cpct_px2byteM0
	ld	h, #0x00
	ld	bc, #0x3c22
	push	bc
	push	hl
	ld	hl, #0xc326
	push	hl
	call	_cpct_drawSolidBox
;src/main.c:2463: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 40, 80), cpct_px2byteM0(4, 4), 34, 60);
	ld	hl, #0x0404
	push	hl
	call	_cpct_px2byteM0
	ld	h, #0x00
	ld	bc, #0x3c22
	push	bc
	push	hl
	ld	hl, #0xc348
	push	hl
	call	_cpct_drawSolidBox
;src/main.c:2464: PrintFrame(6,80,71,134);
	ld	hl, #0x8647
	push	hl
	ld	hl, #0x5006
	push	hl
	call	_PrintFrame
	pop	af
	pop	af
;src/main.c:2465: if (TwoPlayers) {
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jr	Z,00107$
;src/main.c:2466: PrintText("G@A@M@E@@O@V@E@R", 16, 91, 0);
	ld	hl, #0x005b
	push	hl
	ld	a, #0x10
	push	af
	inc	sp
	ld	hl, #___str_84
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
;src/main.c:2467: if (player == 0) PrintText("PLAYER@2@WINS>", 19, 106, 0);
	ld	a, 4 (ix)
	or	a, a
	jr	NZ,00104$
	ld	hl, #0x006a
	push	hl
	ld	a, #0x13
	push	af
	inc	sp
	ld	hl, #___str_85
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
	jr	00105$
00104$:
;src/main.c:2468: else if (player == 1) PrintText("PLAYER@1@WINS>", 19, 106, 0);
	ld	a, 4 (ix)
	dec	a
	jr	NZ,00105$
	ld	hl, #0x006a
	push	hl
	ld	a, #0x13
	push	af
	inc	sp
	ld	hl, #___str_86
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
00105$:
;src/main.c:2469: PrintText("HIGH@SCORE:", 16, 122, 0);
	ld	hl, #0x007a
	push	hl
	ld	a, #0x10
	push	af
	inc	sp
	ld	hl, #___str_87
	push	hl
	call	_PrintText
	pop	af
;src/main.c:2470: PrintNumber(highScore, 4, 52, 122, 0);			
	inc	sp
	ld	hl,#0x007a
	ex	(sp),hl
	ld	hl, #0x3404
	push	hl
	ld	hl, (_highScore)
	push	hl
	call	_PrintNumber
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	jr	00108$
00107$:
;src/main.c:2473: PrintText("G@A@M@E@@O@V@E@R", 16, 107, 0);
	ld	hl, #0x006b
	push	hl
	ld	a, #0x10
	push	af
	inc	sp
	ld	hl, #___str_84
	push	hl
	call	_PrintText
	pop	af
	pop	af
	inc	sp
00108$:
;src/main.c:2474: Pause(500);	
	ld	hl, #0x01f4
	call	_Pause
;src/main.c:2476: while (!cpct_isAnyKeyPressed());
00109$:
	call	_cpct_isAnyKeyPressed
	ld	a, l
	or	a, a
	jr	Z,00109$
;src/main.c:2477: InitGame();
	call	_InitGame
00116$:
	ld	sp, ix
	pop	ix
	ret
___str_84:
	.ascii "G@A@M@E@@O@V@E@R"
	.db 0x00
___str_85:
	.ascii "PLAYER@2@WINS>"
	.db 0x00
___str_86:
	.ascii "PLAYER@1@WINS>"
	.db 0x00
___str_87:
	.ascii "HIGH@SCORE:"
	.db 0x00
;src/main.c:2482: void main(void) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;src/main.c:2484: cpct_disableFirmware();
	call	_cpct_disableFirmware
;src/main.c:2487: cpct_setInterruptHandler(Interrupt); 
	ld	hl, #_Interrupt
	call	_cpct_setInterruptHandler
;src/main.c:2489: cpct_setVideoMode(0);
	ld	l, #0x00
	call	_cpct_setVideoMode
;src/main.c:2491: cpct_setPalette(g_palette, 16);
	ld	hl, #0x0010
	push	hl
	ld	hl, #_g_palette
	push	hl
	call	_cpct_setPalette
;src/main.c:2493: cpct_setBorder(g_palette[BG_COLOR]);
	ld	hl, #_g_palette + 1
	ld	b, (hl)
	push	bc
	inc	sp
	ld	a, #0x10
	push	af
	inc	sp
	call	_cpct_setPALColour
;src/main.c:2495: cpct_etm_setTileset2x4(g_tileset);	
	ld	hl, #_g_tileset
	call	_cpct_etm_setTileset2x4
;src/main.c:2497: InitValues();
	call	_InitValues
;src/main.c:2499: InitGame();
	call	_InitGame
;src/main.c:2502: while (1) {
00140$:
;src/main.c:2504: if (ctMainLoop % 8 == 0) {
	ld	hl, #0x0008
	push	hl
	ld	hl, (_ctMainLoop)
	push	hl
	call	__modsint
	pop	af
	pop	af
	ld	a, h
	or	a,l
	jr	NZ,00108$
;src/main.c:2505: ReprintObject(); // reprint the active object
	call	_ReprintObject
;src/main.c:2506: PrintObjectInStore(); // reprint the object into the store
	call	_PrintObjectInStore
;src/main.c:2507: CheckObject(0); // verify collection of object 1
	xor	a, a
	push	af
	inc	sp
	call	_CheckObject
	inc	sp
;src/main.c:2508: CheckObject(1); // verify collection of object 2
	ld	a, #0x01
	push	af
	inc	sp
	call	_CheckObject
	inc	sp
;src/main.c:2509: MakeWizardAnim(0); // activates the wizard's shot if the player 1 is inactive		
	ld	l, #0x00
	call	_MakeWizardAnim
;src/main.c:2510: if (spr[0].print_minV) CheckActiveTile(0); // check entry into store, door or well of player 1
	ld	a, (#_spr + 13)
	or	a, a
	jr	Z,00102$
	xor	a, a
	push	af
	inc	sp
	call	_CheckActiveTile
	inc	sp
00102$:
;src/main.c:2512: if (TwoPlayers) {
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jr	Z,00106$
;src/main.c:2513: CheckDuel(); // check that both players collide and have potions
	call	_CheckDuel
;src/main.c:2514: MakeWizardAnim(1); // activates the wizard's shot if the player 2 is inactive		
	ld	l, #0x01
	call	_MakeWizardAnim
;src/main.c:2515: if (spr[1].print_minV) CheckActiveTile(1); // check entry into store, door or well of player 2
	ld	a, (#_spr + 28)
	or	a, a
	jr	Z,00106$
	ld	a, #0x01
	push	af
	inc	sp
	call	_CheckActiveTile
	inc	sp
00106$:
;src/main.c:2517: WizardAnim(); // print the wizard if active
	call	_WizardAnim
00108$:
;src/main.c:2520: if (!turboMode) cpct_waitVSYNC(); // wait for vertical retrace	
	ld	a,(#_turboMode + 0)
	or	a, a
	jr	NZ,00110$
	call	_cpct_waitVSYNC
00110$:
;src/main.c:2523: switch (ctMainLoop % 3) {
	ld	hl, #0x0003
	push	hl
	ld	hl, (_ctMainLoop)
	push	hl
	call	__modsint
	pop	af
	pop	af
	ld	c, l
	ld	b, h
	ld	a, c
	or	a, a
	or	a, b
	jr	Z,00111$
	ld	a, c
	dec	a
	or	a, b
	jr	Z,00112$
	ld	a, c
	sub	a, #0x02
	or	a, b
	jr	Z,00117$
	jp	00129$
;src/main.c:2525: case 0: {							
00111$:
;src/main.c:2526: PlayerLoop(&spr[0]); // player 1
	ld	hl, #_spr
	call	_PlayerLoop
;src/main.c:2527: EnemyLoop(&spr[2]);	 // enemy sprite 2 is always processed (fast)
	ld	hl, #(_spr + 0x001e)
	call	_EnemyLoop
;src/main.c:2528: break;
	jp	00129$
;src/main.c:2531: case 1:	{			
00112$:
;src/main.c:2532: if (TwoPlayers) {
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jr	Z,00116$
;src/main.c:2533: PlayerLoop(&spr[1]); // player 2
	ld	hl, #(_spr + 0x000f)
	call	_PlayerLoop
;src/main.c:2534: if (!turboMode) cpct_waitVSYNC(); // additional wait for vertical retrace (avoid flickering)
	ld	a,(#_turboMode + 0)
	or	a, a
	jr	NZ,00116$
	call	_cpct_waitVSYNC
00116$:
;src/main.c:2536: EnemyLoop(&spr[3]);	 // enemy sprite 3 is always processed (fast)
	ld	hl, #(_spr + 0x002d)
	call	_EnemyLoop
;src/main.c:2537: break;
	jr	00129$
;src/main.c:2540: case 2:	{
00117$:
;src/main.c:2541: EnemyLoop(&spr[enemyTurn+4]); // enemy sprites 4 and 5 take turns processing (slow)				
	ld	a,(#_enemyTurn + 0)
	add	a, #0x04
	ld	c,a
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	ld	de, #_spr
	add	hl, de
	call	_EnemyLoop
;src/main.c:2542: if (++enemyTurn > 1) enemyTurn = 0;
	ld	iy, #_enemyTurn
	inc	0 (iy)
	ld	a, #0x01
	sub	a, 0 (iy)
	jr	NC,00119$
	ld	0 (iy), #0x00
00119$:
;src/main.c:2545: if (sht.active) {				
	ld	a, (#(_sht + 0x0004) + 0)
	or	a, a
	jr	Z,00124$
;src/main.c:2546: MoveShot(); // update the shot's XY coordinates	
	call	_MoveShot
;src/main.c:2549: if (ctWizardAnim > 0) 	
	ld	a,(#_ctWizardAnim + 0)
	or	a, a
	jr	Z,00121$
;src/main.c:2550: PrintShot(g_magic_3);	// wizard
	ld	hl, #_g_magic_3
	call	_PrintShot
	jr	00124$
00121$:
;src/main.c:2552: PrintShot(g_magic_2);	// witch
	ld	hl, #_g_magic_2
	call	_PrintShot
00124$:
;src/main.c:2556: if (spr[0].power_maxV > 0) spr[0].power_maxV--;
	ld	bc, #_spr + 14
	ld	a, (bc)
	or	a, a
	jr	Z,00126$
	add	a, #0xff
	ld	(bc), a
00126$:
;src/main.c:2557: if (spr[1].power_maxV > 0) spr[1].power_maxV--;			
	ld	bc, #_spr + 29
	ld	a, (bc)
	or	a, a
	jr	Z,00129$
	add	a, #0xff
	ld	(bc), a
;src/main.c:2559: }
00129$:
;src/main.c:2562: ctMainLoop++;
	ld	bc, (_ctMainLoop)
	inc	bc
;src/main.c:2561: if (ctMainLoop == 174) {
	ld	iy, #_ctMainLoop
	ld	a, 0 (iy)
	sub	a, #0xae
	or	a, 1 (iy)
	jr	NZ,00137$
;src/main.c:2562: ctMainLoop++;
	ld	(_ctMainLoop), bc
;src/main.c:2563: SetObject(1); // set the second object
	ld	l, #0x01
	call	_SetObject
;src/main.c:2565: if (nMap == 0 && !TwoPlayers && nTip<1) 
	ld	a,(#_nMap + 0)
	or	a, a
	jp	NZ, 00140$
	ld	a,(#_TwoPlayers + 0)
	or	a, a
	jp	NZ, 00140$
	ld	a,(#_nTip + 0)
	sub	a, #0x01
	jp	NC, 00140$
;src/main.c:2566: PrintTip(); // novice help
	call	_PrintTip
	jp	00140$
00137$:
;src/main.c:2568: else if (ctMainLoop++ == 350) {			
	ld	de, (_ctMainLoop)
	ld	(_ctMainLoop), bc
	ld	a, e
	sub	a, #0x5e
	jp	NZ,00140$
	dec	d
	jp	NZ,00140$
;src/main.c:2569: SetObject(0); // set the first object			
	ld	l, #0x00
	call	_SetObject
;src/main.c:2570: ctMainLoop = 0; // reset counter
	ld	hl, #0x0000
	ld	(_ctMainLoop), hl
	jp	00140$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
