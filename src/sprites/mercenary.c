#include "mercenary.h"
// Data created with Img2CPC - (c) Retroworks - 2007-2017
// Tile g_mercenary_00: 10x12 pixels, 5x12 bytes.
const u8 g_mercenary_00[5 * 12] = {
	0x00, 0xc0, 0xc0, 0xc0, 0x00,
	0x40, 0xcc, 0x4c, 0x48, 0x80,
	0xc4, 0x8c, 0x0c, 0x0c, 0xc0,
	0xc4, 0x0c, 0x0c, 0x0c, 0xc0,
	0x84, 0x0c, 0x0c, 0x0c, 0xc0,
	0xc0, 0xc0, 0xc0, 0xc0, 0xc0,
	0x40, 0x83, 0x03, 0x42, 0x80,
	0x40, 0xc1, 0x42, 0xc0, 0x80,
	0xc0, 0x48, 0xc0, 0x84, 0x48,
	0xc0, 0x0c, 0xc0, 0x48, 0x48,
	0x40, 0x84, 0x0c, 0x0c, 0xc0,
	0x00, 0xc0, 0xc4, 0xc2, 0x00
};

// Tile g_mercenary_01: 10x12 pixels, 5x12 bytes.
const u8 g_mercenary_01[5 * 12] = {
	0x00, 0xc0, 0xc0, 0xc0, 0x00,
	0x40, 0xcc, 0x4c, 0x48, 0x80,
	0xc4, 0x8c, 0x0c, 0x0c, 0xc0,
	0xc4, 0x0c, 0x0c, 0x0c, 0xc0,
	0x84, 0x0c, 0x0c, 0x0c, 0xc0,
	0xc0, 0xc0, 0xc0, 0xc0, 0xc0,
	0x40, 0x83, 0x03, 0x42, 0x80,
	0x40, 0xc0, 0x42, 0xc0, 0x80,
	0x84, 0x48, 0xc0, 0x84, 0xc0,
	0x84, 0x84, 0x0c, 0x0c, 0xc0,
	0xc0, 0x0c, 0x48, 0x48, 0x80,
	0x00, 0xc4, 0xc2, 0xc0, 0x00
};

// Tile g_mercenary_02: 10x12 pixels, 5x12 bytes.
const u8 g_mercenary_02[5 * 12] = {
	0x00, 0xc0, 0xc0, 0xc0, 0x00,
	0x40, 0xcc, 0x4c, 0x48, 0x80,
	0xc4, 0x8c, 0x0c, 0x0c, 0xc0,
	0xc4, 0x0c, 0x0c, 0x0c, 0xc0,
	0xc0, 0xc0, 0xc0, 0xc0, 0xc0,
	0xc0, 0xc8, 0xca, 0xc8, 0xc0,
	0x40, 0xc7, 0xc5, 0xc2, 0x80,
	0xc4, 0xc1, 0xc2, 0xc0, 0xc8,
	0x84, 0xc0, 0xc0, 0xc0, 0x48,
	0xc5, 0xca, 0x48, 0xc5, 0xca,
	0x40, 0xc0, 0x48, 0xc0, 0xc0,
	0x00, 0x84, 0xc4, 0xc0, 0x80
};

// Tile g_mercenary_03: 10x12 pixels, 5x12 bytes.
const u8 g_mercenary_03[5 * 12] = {
	0x00, 0xc0, 0xc0, 0xc0, 0x00,
	0x40, 0xcc, 0x4c, 0x48, 0x80,
	0xc4, 0x8c, 0x0c, 0x0c, 0xc0,
	0xc4, 0x0c, 0x0c, 0x0c, 0xc0,
	0xc0, 0xc0, 0xc0, 0xc0, 0xc0,
	0xc0, 0xc8, 0xca, 0xc8, 0xc0,
	0x40, 0xc7, 0xc5, 0xc2, 0x80,
	0x04, 0xc1, 0x42, 0xc4, 0x80,
	0x84, 0xc0, 0xc0, 0x84, 0x80,
	0xc0, 0x84, 0xc0, 0xcf, 0x80,
	0x00, 0x84, 0xc0, 0xc0, 0x80,
	0x40, 0x8c, 0xc0, 0xc0, 0x00
};

// Tile g_mercenary_04: 10x12 pixels, 5x12 bytes.
const u8 g_mercenary_04[5 * 12] = {
	0x00, 0xc0, 0xc0, 0xc0, 0x00,
	0x40, 0xcc, 0x8c, 0x8c, 0x80,
	0xc4, 0x8c, 0x0c, 0x0c, 0x48,
	0xc4, 0x0c, 0x0c, 0x0c, 0x48,
	0xc0, 0xc0, 0xc0, 0xc0, 0xc0,
	0x40, 0xcd, 0x83, 0x42, 0x80,
	0xc5, 0xcb, 0xc0, 0x48, 0x80,
	0x40, 0xc2, 0x48, 0x84, 0xc0,
	0x40, 0x84, 0x84, 0xc0, 0x48,
	0x40, 0xca, 0xc0, 0xc5, 0xc0,
	0x40, 0xc0, 0xc0, 0xc0, 0x80,
	0x40, 0x8c, 0xc0, 0xc0, 0x00
};

// Tile g_mercenary_05: 10x12 pixels, 5x12 bytes.
const u8 g_mercenary_05[5 * 12] = {
	0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0xc0, 0xc0, 0xc0, 0x00,
	0x40, 0xcc, 0x8c, 0x8c, 0x80,
	0xc4, 0x8c, 0x0c, 0x0c, 0x48,
	0xc4, 0x0c, 0x0c, 0x0c, 0x48,
	0xc0, 0xc0, 0xc0, 0xc0, 0xc0,
	0x40, 0xcd, 0x83, 0x42, 0x80,
	0xc5, 0xcb, 0x84, 0x84, 0x80,
	0x40, 0xc2, 0x48, 0x84, 0xc0,
	0x40, 0xc0, 0xc0, 0xca, 0xc0,
	0x00, 0xc0, 0xc0, 0xc0, 0x80,
	0x40, 0x48, 0xc0, 0x4c, 0x80
};

// Tile g_mercenary_06: 10x12 pixels, 5x12 bytes.
const u8 g_mercenary_06[5 * 12] = {
	0x00, 0xc0, 0xc0, 0xc0, 0x00,
	0x40, 0xcc, 0x8c, 0x8c, 0x80,
	0xc4, 0x8c, 0x0c, 0x0c, 0x48,
	0xc4, 0x0c, 0x0c, 0x0c, 0x48,
	0xc0, 0xc0, 0xc0, 0xc0, 0xc0,
	0x40, 0x81, 0x43, 0xce, 0x80,
	0x00, 0x84, 0xc0, 0xc7, 0xca,
	0x40, 0xc8, 0x84, 0xc1, 0x80,
	0x84, 0xc0, 0x84, 0x48, 0x80,
	0xc0, 0xca, 0xc0, 0x84, 0x80,
	0x40, 0xc0, 0x0c, 0xc0, 0x80,
	0x00, 0x84, 0xc0, 0x4c, 0x80
};

// Tile g_mercenary_07: 10x12 pixels, 5x12 bytes.
const u8 g_mercenary_07[5 * 12] = {
	0x00, 0x00, 0x00, 0x00, 0x00,
	0x00, 0xc0, 0xc0, 0xc0, 0x00,
	0x40, 0xcc, 0x8c, 0x8c, 0x80,
	0xc4, 0x8c, 0x0c, 0x0c, 0x48,
	0xc4, 0x0c, 0x0c, 0x0c, 0x48,
	0xc0, 0xc0, 0xc0, 0xc0, 0xc0,
	0x40, 0x81, 0x43, 0xce, 0x80,
	0x40, 0x48, 0x48, 0xc7, 0xca,
	0x40, 0x48, 0x84, 0xc1, 0x80,
	0x00, 0x84, 0xca, 0x48, 0x80,
	0x40, 0xc0, 0xc0, 0xc0, 0x00,
	0x40, 0x8c, 0xc0, 0x48, 0x00
};

// Tile g_mercenary_08: 10x12 pixels, 5x12 bytes.
const u8 g_mercenary_08[5 * 12] = {
	0x00, 0xc0, 0xc0, 0xc0, 0x00,
	0x40, 0xcc, 0x8c, 0x8c, 0x80,
	0xc4, 0x8c, 0x0c, 0x0c, 0x48,
	0xc4, 0x0c, 0x0c, 0x0c, 0x48,
	0xc0, 0xc0, 0xc0, 0xc0, 0xc0,
	0x40, 0x81, 0x43, 0xce, 0x80,
	0x00, 0x84, 0xc0, 0xc7, 0xca,
	0x40, 0xc8, 0x84, 0xc1, 0x80,
	0x84, 0xc0, 0x84, 0x48, 0x80,
	0xc0, 0xca, 0xc0, 0x84, 0x80,
	0x40, 0xc0, 0x0c, 0xc0, 0x80,
	0x00, 0x84, 0xc0, 0x4c, 0x80
};

// Tile g_mercenary_09: 10x12 pixels, 5x12 bytes.
const u8 g_mercenary_09[5 * 12] = {
	0x00, 0xc0, 0xc0, 0x80, 0x00,
	0x40, 0xcc, 0xcc, 0x48, 0x00,
	0xc4, 0xcc, 0xcc, 0x8c, 0x80,
	0xc4, 0xc0, 0xc8, 0x84, 0x80,
	0xc4, 0xc0, 0xc8, 0x84, 0x80,
	0xc4, 0xcc, 0x84, 0x0c, 0x80,
	0x40, 0xcc, 0xcc, 0x48, 0x00,
	0xc1, 0xc4, 0xc4, 0x81, 0x80,
	0xc1, 0xc0, 0xc0, 0x81, 0x80,
	0xc4, 0x48, 0x83, 0x8c, 0x80,
	0x40, 0x83, 0xc3, 0x42, 0x00,
	0x40, 0x8c, 0xc4, 0x48, 0x00
};
