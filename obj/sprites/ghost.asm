;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module ghost
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _g_ghost_7
	.globl _g_ghost_6
	.globl _g_ghost_5
	.globl _g_ghost_4
	.globl _g_ghost_3
	.globl _g_ghost_2
	.globl _g_ghost_1
	.globl _g_ghost_0
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
_g_ghost_0:
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xdd	; 221
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xdd	; 221
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xdd	; 221
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xee	; 238
	.db #0xcc	; 204
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x6e	; 110	'n'
	.db #0xcc	; 204
	.db #0x9d	; 157
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xff	; 255
	.db #0x9d	; 157
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xdd	; 221
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0xea	; 234
	.db #0x6a	; 106	'j'
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x00	; 0
_g_ghost_1:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xdd	; 221
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xd5	; 213
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xd5	; 213
	.db #0xae	; 174
	.db #0xae	; 174
	.db #0x48	; 72	'H'
	.db #0x00	; 0
	.db #0x84	; 132
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0xff	; 255
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x6a	; 106	'j'
	.db #0x6a	; 106	'j'
	.db #0x3f	; 63
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x80	; 128
_g_ghost_2:
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xc8	; 200
	.db #0xcc	; 204
	.db #0xd5	; 213
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc8	; 200
	.db #0xcc	; 204
	.db #0xd5	; 213
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xdd	; 221
	.db #0xcc	; 204
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xdd	; 221
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x6e	; 110	'n'
	.db #0xcc	; 204
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0xcc	; 204
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xdd	; 221
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0xea	; 234
	.db #0x6a	; 106	'j'
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x00	; 0
_g_ghost_3:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xdd	; 221
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xc4	; 196
	.db #0xc8	; 200
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xc4	; 196
	.db #0xc8	; 200
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xee	; 238
	.db #0xdd	; 221
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0x95	; 149
	.db #0xcc	; 204
	.db #0xdd	; 221
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0x6e	; 110	'n'
	.db #0x9d	; 157
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0xff	; 255
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x6a	; 106	'j'
	.db #0x6a	; 106	'j'
	.db #0x3f	; 63
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x80	; 128
_g_ghost_4:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xdd	; 221
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xc4	; 196
	.db #0xc4	; 196
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xc4	; 196
	.db #0xc4	; 196
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xee	; 238
	.db #0xee	; 238
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0xbf	; 191
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0x7f	; 127
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0x3f	; 63
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0x6a	; 106	'j'
	.db #0x3f	; 63
	.db #0x95	; 149
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x00	; 0
_g_ghost_5:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xdd	; 221
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xc4	; 196
	.db #0xc4	; 196
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xc4	; 196
	.db #0xc4	; 196
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xee	; 238
	.db #0xee	; 238
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0x3f	; 63
	.db #0x7f	; 127
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0x9d	; 157
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0xdd	; 221
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0xc4	; 196
	.db #0xdd	; 221
	.db #0x7f	; 127
	.db #0xbf	; 191
	.db #0x6a	; 106	'j'
	.db #0x40	; 64
	.db #0x9d	; 157
	.db #0x95	; 149
	.db #0x6a	; 106	'j'
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
_g_ghost_6:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xdd	; 221
	.db #0xdd	; 221
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0xdd	; 221
	.db #0xea	; 234
	.db #0x40	; 64
	.db #0x9d	; 157
	.db #0x6e	; 110	'n'
	.db #0xdd	; 221
	.db #0xea	; 234
	.db #0x40	; 64
	.db #0xdd	; 221
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0x6a	; 106	'j'
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xdd	; 221
	.db #0xff	; 255
	.db #0x6a	; 106	'j'
	.db #0x40	; 64
	.db #0xdd	; 221
	.db #0x7f	; 127
	.db #0xbf	; 191
	.db #0x6a	; 106	'j'
	.db #0x40	; 64
	.db #0xc8	; 200
	.db #0x7f	; 127
	.db #0x95	; 149
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x80	; 128
_g_ghost_7:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xdd	; 221
	.db #0xdd	; 221
	.db #0xea	; 234
	.db #0x00	; 0
	.db #0xc4	; 196
	.db #0xcc	; 204
	.db #0xdd	; 221
	.db #0xea	; 234
	.db #0x40	; 64
	.db #0x9d	; 157
	.db #0x3f	; 63
	.db #0xdd	; 221
	.db #0xea	; 234
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x6a	; 106	'j'
	.db #0x40	; 64
	.db #0xcc	; 204
	.db #0xdd	; 221
	.db #0xff	; 255
	.db #0x6a	; 106	'j'
	.db #0xc4	; 196
	.db #0xbf	; 191
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x6a	; 106	'j'
	.db #0xc4	; 196
	.db #0x95	; 149
	.db #0xea	; 234
	.db #0x3f	; 63
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x00	; 0
	.area _INITIALIZER
	.area _CABS (ABS)
