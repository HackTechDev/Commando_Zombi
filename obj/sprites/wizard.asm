;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.8 #9946 (Linux)
;--------------------------------------------------------
	.module wizard
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _g_wizard_3
	.globl _g_wizard_2
	.globl _g_wizard_1
	.globl _g_wizard_0
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
_g_wizard_0:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xdd	; 221
	.db #0xbf	; 191
	.db #0xea	; 234
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x95	; 149
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc8	; 200
	.db #0x95	; 149
	.db #0x95	; 149
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xcd	; 205
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0xc5	; 197
	.db #0xcf	; 207
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xca	; 202
	.db #0x95	; 149
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0xea	; 234
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x95	; 149
	.db #0x6a	; 106	'j'
	.db #0xd5	; 213
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x6a	; 106	'j'
	.db #0xcf	; 207
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xd5	; 213
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xd5	; 213
	.db #0xbf	; 191
	.db #0x3f	; 63
	.db #0x6a	; 106	'j'
_g_wizard_1:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xdd	; 221
	.db #0xbf	; 191
	.db #0xea	; 234
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x95	; 149
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc8	; 200
	.db #0x95	; 149
	.db #0x95	; 149
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xcd	; 205
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0xc5	; 197
	.db #0xcf	; 207
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0xca	; 202
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0x6a	; 106	'j'
	.db #0xc0	; 192
	.db #0xca	; 202
	.db #0xbf	; 191
	.db #0x6a	; 106	'j'
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x6a	; 106	'j'
	.db #0x95	; 149
	.db #0x3f	; 63
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xd5	; 213
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xd5	; 213
	.db #0xbf	; 191
	.db #0x3f	; 63
	.db #0xea	; 234
_g_wizard_2:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x6e	; 110	'n'
	.db #0xbf	; 191
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x7f	; 127
	.db #0xea	; 234
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x6a	; 106	'j'
	.db #0x6a	; 106	'j'
	.db #0xc4	; 196
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xce	; 206
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xcf	; 207
	.db #0xca	; 202
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xea	; 234
	.db #0xc5	; 197
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xd5	; 213
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc8	; 200
	.db #0x95	; 149
	.db #0x6a	; 106	'j'
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xcf	; 207
	.db #0x95	; 149
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x3f	; 63
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0xd5	; 213
	.db #0xbf	; 191
	.db #0x3f	; 63
	.db #0x6a	; 106	'j'
	.db #0x80	; 128
_g_wizard_3:
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x6e	; 110	'n'
	.db #0xbf	; 191
	.db #0x3f	; 63
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x7f	; 127
	.db #0xea	; 234
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0x6a	; 106	'j'
	.db #0x6a	; 106	'j'
	.db #0xc4	; 196
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xce	; 206
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xcf	; 207
	.db #0xca	; 202
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xd5	; 213
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0xc5	; 197
	.db #0x00	; 0
	.db #0xc0	; 192
	.db #0x95	; 149
	.db #0x3f	; 63
	.db #0xc5	; 197
	.db #0x40	; 64
	.db #0xbf	; 191
	.db #0x6a	; 106	'j'
	.db #0x95	; 149
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x6a	; 106	'j'
	.db #0x00	; 0
	.db #0xd5	; 213
	.db #0xbf	; 191
	.db #0x3f	; 63
	.db #0x6a	; 106	'j'
	.db #0x80	; 128
	.area _INITIALIZER
	.area _CABS (ABS)
