#ifndef SCREEN_H
#define SCREEN_H

#include <cpctelera.h> 
#include <types.h>

void ClearScreen();
u8* GetTileNum(u8 x, u8 y);
u8 OnBackground(u8 x, u8 y);

#endif // SCREEN_H