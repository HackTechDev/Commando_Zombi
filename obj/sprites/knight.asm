;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module knight
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _g_knight_7
	.globl _g_knight_6
	.globl _g_knight_5
	.globl _g_knight_4
	.globl _g_knight_3
	.globl _g_knight_2
	.globl _g_knight_1
	.globl _g_knight_0
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
_g_knight_0:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc2	; 194
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xc9	; 201
	.db #0x83	; 131
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xc9	; 201
	.db #0x96	; 150
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0xc9	; 201
	.db #0x16	; 22
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0xd4	; 212
	.db #0xe9	; 233
	.db #0x52	; 82	'R'
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0x60	; 96
	.db #0xe1	; 225
	.db #0xa1	; 161
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xfc	; 252
	.db #0x3c	; 60
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x7c	; 124
	.db #0xbc	; 188
	.db #0x78	; 120	'x'
	.db #0x80	; 128
	.db #0xd0	; 208
	.db #0xb4	; 180
	.db #0x78	; 120	'x'
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xb4	; 180
	.db #0x94	; 148
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xec	; 236
	.db #0xe0	; 224
	.db #0x00	; 0
_g_knight_1:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc2	; 194
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xc9	; 201
	.db #0x83	; 131
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0x9c	; 156
	.db #0x83	; 131
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0xdc	; 220
	.db #0x83	; 131
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0xd4	; 212
	.db #0xe9	; 233
	.db #0x83	; 131
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0x60	; 96
	.db #0xe1	; 225
	.db #0x52	; 82	'R'
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xfc	; 252
	.db #0x3c	; 60
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x7c	; 124
	.db #0xbc	; 188
	.db #0x78	; 120	'x'
	.db #0x80	; 128
	.db #0xd0	; 208
	.db #0xb4	; 180
	.db #0x78	; 120	'x'
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x94	; 148
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xdc	; 220
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x00	; 0
_g_knight_2:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc2	; 194
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0x6c	; 108	'l'
	.db #0x68	; 104	'h'
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0x74	; 116	't'
	.db #0x74	; 116	't'
	.db #0x74	; 116	't'
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0x74	; 116	't'
	.db #0x74	; 116	't'
	.db #0x34	; 52	'4'
	.db #0x80	; 128
	.db #0xd4	; 212
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0x80	; 128
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xfc	; 252
	.db #0x3c	; 60
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0xd4	; 212
	.db #0xb4	; 180
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xea	; 234
	.db #0x85	; 133
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xc5	; 197
	.db #0xee	; 238
	.db #0xcc	; 204
	.db #0x0f	; 15
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xea	; 234
	.db #0x85	; 133
	.db #0x0f	; 15
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x78	; 120	'x'
	.db #0xd4	; 212
	.db #0x4a	; 74	'J'
	.db #0x00	; 0
_g_knight_3:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x42	; 66	'B'
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0x7c	; 124
	.db #0x68	; 104	'h'
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0x74	; 116	't'
	.db #0x74	; 116	't'
	.db #0x74	; 116	't'
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0x74	; 116	't'
	.db #0x74	; 116	't'
	.db #0x34	; 52	'4'
	.db #0x80	; 128
	.db #0xd4	; 212
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0x80	; 128
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xfc	; 252
	.db #0x3c	; 60
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x94	; 148
	.db #0xbc	; 188
	.db #0x68	; 104	'h'
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xd5	; 213
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xff	; 255
	.db #0xea	; 234
	.db #0xdf	; 223
	.db #0xcc	; 204
	.db #0xc8	; 200
	.db #0xff	; 255
	.db #0x4a	; 74	'J'
	.db #0xd5	; 213
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x0f	; 15
	.db #0x4a	; 74	'J'
	.db #0x40	; 64
	.db #0xdc	; 220
	.db #0x94	; 148
	.db #0x85	; 133
	.db #0x80	; 128
_g_knight_4:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc1	; 193
	.db #0x82	; 130
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xb8	; 184
	.db #0xe8	; 232
	.db #0x43	; 67	'C'
	.db #0xc4	; 196
	.db #0x7c	; 124
	.db #0xf4	; 244
	.db #0x74	; 116	't'
	.db #0x81	; 129
	.db #0xd4	; 212
	.db #0xf4	; 244
	.db #0xf4	; 244
	.db #0x94	; 148
	.db #0x81	; 129
	.db #0xd4	; 212
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0xd0	; 208
	.db #0xc1	; 193
	.db #0x70	; 112	'p'
	.db #0x30	; 48	'0'
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xfc	; 252
	.db #0x3c	; 60
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x60	; 96
	.db #0xc0	; 192
	.db #0x94	; 148
	.db #0x80	; 128
	.db #0xd5	; 213
	.db #0x34	; 52	'4'
	.db #0xc4	; 196
	.db #0xc0	; 192
	.db #0x68	; 104	'h'
	.db #0xc4	; 196
	.db #0x70	; 112	'p'
	.db #0xd5	; 213
	.db #0xc5	; 197
	.db #0xc0	; 192
	.db #0xd5	; 213
	.db #0x34	; 52	'4'
	.db #0x85	; 133
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xbc	; 188
	.db #0x85	; 133
	.db #0xc0	; 192
	.db #0x00	; 0
_g_knight_5:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc3	; 195
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc1	; 193
	.db #0x82	; 130
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xb8	; 184
	.db #0xe8	; 232
	.db #0x43	; 67	'C'
	.db #0xc4	; 196
	.db #0x7c	; 124
	.db #0xf4	; 244
	.db #0x74	; 116	't'
	.db #0x81	; 129
	.db #0xd4	; 212
	.db #0xf4	; 244
	.db #0x74	; 116	't'
	.db #0x94	; 148
	.db #0x80	; 128
	.db #0xd4	; 212
	.db #0x34	; 52	'4'
	.db #0x34	; 52	'4'
	.db #0xd0	; 208
	.db #0x80	; 128
	.db #0x30	; 48	'0'
	.db #0xb0	; 176
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xbc	; 188
	.db #0xd0	; 208
	.db #0x94	; 148
	.db #0x80	; 128
	.db #0xd5	; 213
	.db #0xc0	; 192
	.db #0xc8	; 200
	.db #0x94	; 148
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0x68	; 104	'h'
	.db #0xea	; 234
	.db #0xca	; 202
	.db #0x00	; 0
	.db #0xd5	; 213
	.db #0xe0	; 224
	.db #0x4a	; 74	'J'
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x60	; 96
	.db #0x4a	; 74	'J'
	.db #0x78	; 120	'x'
	.db #0x80	; 128
_g_knight_6:
	.db #0x41	; 65	'A'
	.db #0xc2	; 194
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x83	; 131
	.db #0xc4	; 196
	.db #0x74	; 116	't'
	.db #0x9c	; 156
	.db #0x80	; 128
	.db #0x42	; 66	'B'
	.db #0x98	; 152
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x68	; 104	'h'
	.db #0x42	; 66	'B'
	.db #0xc8	; 200
	.db #0xb8	; 184
	.db #0x38	; 56	'8'
	.db #0x68	; 104	'h'
	.db #0xc2	; 194
	.db #0xe8	; 232
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x68	; 104	'h'
	.db #0x40	; 64
	.db #0xd4	; 212
	.db #0x90	; 144
	.db #0x30	; 48	'0'
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xd4	; 212
	.db #0x3c	; 60
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x68	; 104	'h'
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xd4	; 212
	.db #0xba	; 186
	.db #0xf4	; 244
	.db #0xd5	; 213
	.db #0x80	; 128
	.db #0x94	; 148
	.db #0xce	; 206
	.db #0x3c	; 60
	.db #0x85	; 133
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xba	; 186
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0xe0	; 224
	.db #0x40	; 64
	.db #0x7c	; 124
	.db #0x80	; 128
_g_knight_7:
	.db #0x00	; 0
	.db #0xc3	; 195
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0xc2	; 194
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x83	; 131
	.db #0xc4	; 196
	.db #0x74	; 116	't'
	.db #0x9c	; 156
	.db #0x80	; 128
	.db #0x42	; 66	'B'
	.db #0x98	; 152
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x68	; 104	'h'
	.db #0x40	; 64
	.db #0xc8	; 200
	.db #0xb8	; 184
	.db #0x38	; 56	'8'
	.db #0x68	; 104	'h'
	.db #0x40	; 64
	.db #0xe8	; 232
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x68	; 104	'h'
	.db #0x00	; 0
	.db #0xd4	; 212
	.db #0x90	; 144
	.db #0x30	; 48	'0'
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc8	; 200
	.db #0x3c	; 60
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xb8	; 184
	.db #0xea	; 234
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x94	; 148
	.db #0xce	; 206
	.db #0x85	; 133
	.db #0x80	; 128
	.db #0x10	; 16
	.db #0xc0	; 192
	.db #0xfa	; 250
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xbc	; 188
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0x80	; 128
	.area _INITIALIZER
	.area _CABS (ABS)
