#include "screen.h"
#include "constant.h";
#include <cpctelera.h> 

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
