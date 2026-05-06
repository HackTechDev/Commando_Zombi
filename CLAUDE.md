# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

CommandoZombi is a game for the **Amstrad CPC** retro computer, built with the **CPCtelera** framework. It compiles C (with inline Z80 assembly) via **SDCC** (Small Device C Compiler). The output is a `.dsk` disk image that runs in the XCPC emulator.

## Build & Run Commands

```bash
# Build the game
make

# Clean build artifacts
make clean

# Full rebuild
make clean && make

# Run in XCPC emulator
./runGame.sh
```

There is no test suite. The only way to verify behavior is to run the game in the emulator.

## Architecture

### Memory Layout

The Z80 code starts at `0x1601`. The region `0x0F71–0x1600` is reserved for the decompressed active map (~5.6 KB). Maps are ZX7B-compressed at build time and decompressed at runtime to `0x1600`.

```
0x0F71  UNPACKED_MAP_INI  ← decompressed map lives here
0x1600  UNPACKED_MAP_END
0x1601  game code starts
```

### Game Loop (`src/main.c`)

1. `InitGame()` sets up player data and loads map 0.
2. `StartMenu()` waits for player input.
3. Main loop: every 8 cycles check objects/tiles → wait VSYNC → 3-cycle rendering rotation → `PlayerLoop()`.

The 3-cycle rendering rotation is a deliberate flicker-reduction optimization — do not remove it.

### Sprite System

All sprites (player + enemies) share the `TSpr` struct. The player is index 0; indices 1–5 are enemies. Fields include position, direction, animation frame, status, and per-axis collision margins. Animation uses 8 frames per direction in a 2-step walk cycle.

### Map System

- 4 maps (3 spaceship levels + 1 cemetery), each 40×42 tiles.
- Tiles are 4×4 pixels (2 bytes wide in VRAM).
- Map navigation uses special tile IDs: doors (14, 30, 31) and wells (38).
- Source maps are `.tmx` files in `assets/`; they are converted to binary then compressed into `src/map/mappk*.s` assembly files by the build system.

### Asset Pipeline

The build system (`cfg/`) handles all asset conversion automatically on `make`:

| Stage | Tool | Input → Output |
|---|---|---|
| Image conversion | Img2CPC | `assets/*.png` / `*.xcf` → C arrays in `src/gfx/` and `src/sprites/` |
| Tilemap conversion | CPCtelera tool | `assets/*.tmx` → `src/map*.bin` / `src/map*.h` |
| Compression | ZX7B | `src/map*.bin` → `src/map/mappk*.s` |

**Do not edit generated files** in `src/gfx/`, `src/sprites/`, or `src/map/` directly. Edit the source assets in `assets/` and rebuild.

### Key Constants (`src/lib/constant.h`)

All pixel/byte dimensions for VRAM layout are defined here:
- Screen: 80 bytes wide, 200 pixels tall
- Sprites: 5 bytes wide, 12 pixels tall
- Tiles: 2 bytes wide, 4 pixels tall
- Objects: 4 bytes wide, 8 pixels tall
- Font: 3 bytes wide, 8 pixels tall

### Keyboard Layout

Controls are hardcoded for **AZERTY** (French) keyboards: Z/S/Q/D for movement. Keyboard scanning is interrupt-driven (every 6 interrupts) via `cpct_scanKeyboard_f()`.

### Performance Conventions

- Use `__z88dk_fastcall` on functions called in hot paths (Z80 fastcall ABI).
- Avoid standard C library calls — there is no stdlib linked.
- VRAM writes are direct (no double buffering); keep render paths minimal.
- Sprite transparency uses a pre-computed masking table, not per-pixel branching.
