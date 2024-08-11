;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module sorcerer2
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _g_sorcerer2_09
	.globl _g_sorcerer2_08
	.globl _g_sorcerer2_07
	.globl _g_sorcerer2_06
	.globl _g_sorcerer2_05
	.globl _g_sorcerer2_04
	.globl _g_sorcerer2_03
	.globl _g_sorcerer2_02
	.globl _g_sorcerer2_01
	.globl _g_sorcerer2_00
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
	.area _CODE
_g_sorcerer2_00:
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xcf	; 207
	.db #0xca	; 202
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xc7	; 199
	.db #0xcf	; 207
	.db #0xcb	; 203
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x4b	; 75	'K'
	.db #0x4b	; 75	'K'
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0x87	; 135
	.db #0xc2	; 194
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x85	; 133
	.db #0x87	; 135
	.db #0xc2	; 194
	.db #0x00	; 0
	.db #0x94	; 148
	.db #0x60	; 96
	.db #0x4b	; 75	'K'
	.db #0xd0	; 208
	.db #0x80	; 128
	.db #0x94	; 148
	.db #0x60	; 96
	.db #0xc3	; 195
	.db #0xd0	; 208
	.db #0x80	; 128
	.db #0x94	; 148
	.db #0xb0	; 176
	.db #0xc1	; 193
	.db #0x90	; 144
	.db #0x80	; 128
	.db #0xc5	; 197
	.db #0x9a	; 154
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x70	; 112	'p'
	.db #0x3c	; 60
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xd0	; 208
	.db #0xcf	; 207
	.db #0x80	; 128
	.db #0x00	; 0
_g_sorcerer2_01:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xcf	; 207
	.db #0xca	; 202
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xc7	; 199
	.db #0xcf	; 207
	.db #0xcb	; 203
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x4b	; 75	'K'
	.db #0x4b	; 75	'K'
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0x87	; 135
	.db #0xc2	; 194
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x85	; 133
	.db #0xc3	; 195
	.db #0xc2	; 194
	.db #0x00	; 0
	.db #0x94	; 148
	.db #0xe0	; 224
	.db #0x4b	; 75	'K'
	.db #0xd0	; 208
	.db #0x80	; 128
	.db #0x94	; 148
	.db #0xe0	; 224
	.db #0xc2	; 194
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xe0	; 224
	.db #0xc2	; 194
	.db #0xcf	; 207
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0xd0	; 208
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc5	; 197
	.db #0xda	; 218
	.db #0xc0	; 192
	.db #0x00	; 0
_g_sorcerer2_02:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xcd	; 205
	.db #0xcf	; 207
	.db #0xca	; 202
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcb	; 203
	.db #0x80	; 128
	.db #0xc1	; 193
	.db #0x43	; 67	'C'
	.db #0xcb	; 203
	.db #0x43	; 67	'C'
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0xc8	; 200
	.db #0xca	; 202
	.db #0x89	; 137
	.db #0x80	; 128
	.db #0xc5	; 197
	.db #0xc8	; 200
	.db #0xca	; 202
	.db #0xc8	; 200
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc7	; 199
	.db #0x47	; 71	'G'
	.db #0xc2	; 194
	.db #0x00	; 0
	.db #0x94	; 148
	.db #0x85	; 133
	.db #0x87	; 135
	.db #0x94	; 148
	.db #0x80	; 128
	.db #0x94	; 148
	.db #0xe1	; 225
	.db #0x4b	; 75	'K'
	.db #0x94	; 148
	.db #0x80	; 128
	.db #0xc5	; 197
	.db #0xca	; 202
	.db #0xc2	; 194
	.db #0xb0	; 176
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x78	; 120	'x'
	.db #0x94	; 148
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xe5	; 229
	.db #0xca	; 202
	.db #0x00	; 0
_g_sorcerer2_03:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xcd	; 205
	.db #0xcf	; 207
	.db #0xca	; 202
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0xcf	; 207
	.db #0xcf	; 207
	.db #0xcb	; 203
	.db #0x80	; 128
	.db #0xc1	; 193
	.db #0x43	; 67	'C'
	.db #0xcb	; 203
	.db #0x43	; 67	'C'
	.db #0x80	; 128
	.db #0x81	; 129
	.db #0xc8	; 200
	.db #0xca	; 202
	.db #0x89	; 137
	.db #0x80	; 128
	.db #0xc5	; 197
	.db #0xc8	; 200
	.db #0xca	; 202
	.db #0xc8	; 200
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc7	; 199
	.db #0x47	; 71	'G'
	.db #0xc2	; 194
	.db #0x00	; 0
	.db #0x94	; 148
	.db #0x85	; 133
	.db #0x87	; 135
	.db #0x94	; 148
	.db #0x80	; 128
	.db #0x94	; 148
	.db #0xe1	; 225
	.db #0x4a	; 74	'J'
	.db #0xcf	; 207
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x68	; 104	'h'
	.db #0xc2	; 194
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xcf	; 207
	.db #0xb0	; 176
	.db #0x80	; 128
	.db #0x00	; 0
_g_sorcerer2_04:
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc5	; 197
	.db #0xcd	; 205
	.db #0xc2	; 194
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x83	; 131
	.db #0xcf	; 207
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc9	; 201
	.db #0xcf	; 207
	.db #0xc1	; 193
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xcd	; 205
	.db #0x8b	; 139
	.db #0x87	; 135
	.db #0x80	; 128
	.db #0xc5	; 197
	.db #0xcf	; 207
	.db #0x4b	; 75	'K'
	.db #0xc0	; 192
	.db #0x4a	; 74	'J'
	.db #0x40	; 64
	.db #0x0f	; 15
	.db #0xc2	; 194
	.db #0xe0	; 224
	.db #0x87	; 135
	.db #0xc1	; 193
	.db #0x4b	; 75	'K'
	.db #0xd0	; 208
	.db #0xb4	; 180
	.db #0xc1	; 193
	.db #0x85	; 133
	.db #0x0f	; 15
	.db #0xd0	; 208
	.db #0xc0	; 192
	.db #0x68	; 104	'h'
	.db #0xc1	; 193
	.db #0x4a	; 74	'J'
	.db #0x94	; 148
	.db #0xc5	; 197
	.db #0xca	; 202
	.db #0x40	; 64
	.db #0xc2	; 194
	.db #0xb4	; 180
	.db #0x60	; 96
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xd0	; 208
	.db #0x78	; 120	'x'
	.db #0xb4	; 180
	.db #0xe0	; 224
_g_sorcerer2_05:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc5	; 197
	.db #0xcd	; 205
	.db #0xc2	; 194
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x83	; 131
	.db #0xcf	; 207
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc9	; 201
	.db #0xcf	; 207
	.db #0xc1	; 193
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xcd	; 205
	.db #0x8b	; 139
	.db #0x87	; 135
	.db #0x80	; 128
	.db #0xc5	; 197
	.db #0xcf	; 207
	.db #0x4b	; 75	'K'
	.db #0xc0	; 192
	.db #0x4a	; 74	'J'
	.db #0x40	; 64
	.db #0x87	; 135
	.db #0xc2	; 194
	.db #0xe0	; 224
	.db #0xc2	; 194
	.db #0xc1	; 193
	.db #0x4b	; 75	'K'
	.db #0xd0	; 208
	.db #0xb4	; 180
	.db #0x85	; 133
	.db #0xc1	; 193
	.db #0x4a	; 74	'J'
	.db #0xc5	; 197
	.db #0xca	; 202
	.db #0xc0	; 192
	.db #0x85	; 133
	.db #0xc2	; 194
	.db #0x68	; 104	'h'
	.db #0xd0	; 208
	.db #0xe0	; 224
	.db #0x40	; 64
	.db #0x94	; 148
	.db #0x9e	; 158
	.db #0x70	; 112	'p'
	.db #0xb4	; 180
_g_sorcerer2_06:
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0xcd	; 205
	.db #0xca	; 202
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x87	; 135
	.db #0xcf	; 207
	.db #0x43	; 67	'C'
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0xc2	; 194
	.db #0xcf	; 207
	.db #0xc6	; 198
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x4b	; 75	'K'
	.db #0x47	; 71	'G'
	.db #0xce	; 206
	.db #0x80	; 128
	.db #0x85	; 133
	.db #0xc0	; 192
	.db #0x87	; 135
	.db #0xcf	; 207
	.db #0xca	; 202
	.db #0x4b	; 75	'K'
	.db #0x94	; 148
	.db #0xc1	; 193
	.db #0x0f	; 15
	.db #0x80	; 128
	.db #0xc2	; 194
	.db #0x78	; 120	'x'
	.db #0xe0	; 224
	.db #0x87	; 135
	.db #0xc2	; 194
	.db #0x94	; 148
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0x0f	; 15
	.db #0x4a	; 74	'J'
	.db #0xc5	; 197
	.db #0xca	; 202
	.db #0x68	; 104	'h'
	.db #0x85	; 133
	.db #0xc2	; 194
	.db #0x40	; 64
	.db #0x90	; 144
	.db #0x78	; 120	'x'
	.db #0xc1	; 193
	.db #0x80	; 128
	.db #0xd0	; 208
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0x00	; 0
_g_sorcerer2_07:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc1	; 193
	.db #0xcd	; 205
	.db #0xca	; 202
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x87	; 135
	.db #0xcf	; 207
	.db #0x43	; 67	'C'
	.db #0x02	; 2
	.db #0x40	; 64
	.db #0xc2	; 194
	.db #0xcf	; 207
	.db #0xc6	; 198
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x4b	; 75	'K'
	.db #0x47	; 71	'G'
	.db #0xce	; 206
	.db #0x80	; 128
	.db #0x85	; 133
	.db #0xc0	; 192
	.db #0x87	; 135
	.db #0xcf	; 207
	.db #0xca	; 202
	.db #0xc1	; 193
	.db #0x94	; 148
	.db #0xc1	; 193
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x4a	; 74	'J'
	.db #0x78	; 120	'x'
	.db #0xe0	; 224
	.db #0x87	; 135
	.db #0xc2	; 194
	.db #0xc0	; 192
	.db #0xc5	; 197
	.db #0xca	; 202
	.db #0x85	; 133
	.db #0xc2	; 194
	.db #0xd0	; 208
	.db #0xe0	; 224
	.db #0x94	; 148
	.db #0xc1	; 193
	.db #0x4a	; 74	'J'
	.db #0x78	; 120	'x'
	.db #0xb0	; 176
	.db #0x6d	; 109	'm'
	.db #0xe0	; 224
	.db #0x80	; 128
_g_sorcerer2_08:
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc5	; 197
	.db #0xcd	; 205
	.db #0xc2	; 194
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x83	; 131
	.db #0xcf	; 207
	.db #0x4b	; 75	'K'
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc9	; 201
	.db #0xcf	; 207
	.db #0xc1	; 193
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xcd	; 205
	.db #0x8b	; 139
	.db #0x87	; 135
	.db #0x80	; 128
	.db #0xc5	; 197
	.db #0xcf	; 207
	.db #0x4b	; 75	'K'
	.db #0x42	; 66	'B'
	.db #0x4a	; 74	'J'
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc2	; 194
	.db #0xca	; 202
	.db #0x3c	; 60
	.db #0x78	; 120	'x'
	.db #0xf0	; 240
	.db #0x85	; 133
	.db #0xca	; 202
	.db #0x78	; 120	'x'
	.db #0xe0	; 224
	.db #0xd0	; 208
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xd0	; 208
	.db #0xb4	; 180
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0x3c	; 60
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xd0	; 208
	.db #0xb4	; 180
	.db #0x78	; 120	'x'
	.db #0xe0	; 224
_g_sorcerer2_09:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x8c	; 140
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0xc0	; 192
	.db #0xc8	; 200
	.db #0x84	; 132
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0xc0	; 192
	.db #0xc8	; 200
	.db #0x84	; 132
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0x84	; 132
	.db #0x0c	; 12
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x94	; 148
	.db #0xc4	; 196
	.db #0xc4	; 196
	.db #0x90	; 144
	.db #0x80	; 128
	.db #0x94	; 148
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xd0	; 208
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0x48	; 72	'H'
	.db #0x78	; 120	'x'
	.db #0x8c	; 140
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x78	; 120	'x'
	.db #0x3c	; 60
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x8c	; 140
	.db #0xc4	; 196
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.area _INITIALIZER
	.area _CABS (ABS)
