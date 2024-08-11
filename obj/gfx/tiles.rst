                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module tiles
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _g_tiles_119
                             12 	.globl _g_tiles_118
                             13 	.globl _g_tiles_117
                             14 	.globl _g_tiles_116
                             15 	.globl _g_tiles_115
                             16 	.globl _g_tiles_114
                             17 	.globl _g_tiles_113
                             18 	.globl _g_tiles_112
                             19 	.globl _g_tiles_111
                             20 	.globl _g_tiles_110
                             21 	.globl _g_tiles_109
                             22 	.globl _g_tiles_108
                             23 	.globl _g_tiles_107
                             24 	.globl _g_tiles_106
                             25 	.globl _g_tiles_105
                             26 	.globl _g_tiles_104
                             27 	.globl _g_tiles_103
                             28 	.globl _g_tiles_102
                             29 	.globl _g_tiles_101
                             30 	.globl _g_tiles_100
                             31 	.globl _g_tiles_099
                             32 	.globl _g_tiles_098
                             33 	.globl _g_tiles_097
                             34 	.globl _g_tiles_096
                             35 	.globl _g_tiles_095
                             36 	.globl _g_tiles_094
                             37 	.globl _g_tiles_093
                             38 	.globl _g_tiles_092
                             39 	.globl _g_tiles_091
                             40 	.globl _g_tiles_090
                             41 	.globl _g_tiles_089
                             42 	.globl _g_tiles_088
                             43 	.globl _g_tiles_087
                             44 	.globl _g_tiles_086
                             45 	.globl _g_tiles_085
                             46 	.globl _g_tiles_084
                             47 	.globl _g_tiles_083
                             48 	.globl _g_tiles_082
                             49 	.globl _g_tiles_081
                             50 	.globl _g_tiles_080
                             51 	.globl _g_tiles_079
                             52 	.globl _g_tiles_078
                             53 	.globl _g_tiles_077
                             54 	.globl _g_tiles_076
                             55 	.globl _g_tiles_075
                             56 	.globl _g_tiles_074
                             57 	.globl _g_tiles_073
                             58 	.globl _g_tiles_072
                             59 	.globl _g_tiles_071
                             60 	.globl _g_tiles_070
                             61 	.globl _g_tiles_069
                             62 	.globl _g_tiles_068
                             63 	.globl _g_tiles_067
                             64 	.globl _g_tiles_066
                             65 	.globl _g_tiles_065
                             66 	.globl _g_tiles_064
                             67 	.globl _g_tiles_063
                             68 	.globl _g_tiles_062
                             69 	.globl _g_tiles_061
                             70 	.globl _g_tiles_060
                             71 	.globl _g_tiles_059
                             72 	.globl _g_tiles_058
                             73 	.globl _g_tiles_057
                             74 	.globl _g_tiles_056
                             75 	.globl _g_tiles_055
                             76 	.globl _g_tiles_054
                             77 	.globl _g_tiles_053
                             78 	.globl _g_tiles_052
                             79 	.globl _g_tiles_051
                             80 	.globl _g_tiles_050
                             81 	.globl _g_tiles_049
                             82 	.globl _g_tiles_048
                             83 	.globl _g_tiles_047
                             84 	.globl _g_tiles_046
                             85 	.globl _g_tiles_045
                             86 	.globl _g_tiles_044
                             87 	.globl _g_tiles_043
                             88 	.globl _g_tiles_042
                             89 	.globl _g_tiles_041
                             90 	.globl _g_tiles_040
                             91 	.globl _g_tiles_039
                             92 	.globl _g_tiles_038
                             93 	.globl _g_tiles_037
                             94 	.globl _g_tiles_036
                             95 	.globl _g_tiles_035
                             96 	.globl _g_tiles_034
                             97 	.globl _g_tiles_033
                             98 	.globl _g_tiles_032
                             99 	.globl _g_tiles_031
                            100 	.globl _g_tiles_030
                            101 	.globl _g_tiles_029
                            102 	.globl _g_tiles_028
                            103 	.globl _g_tiles_027
                            104 	.globl _g_tiles_026
                            105 	.globl _g_tiles_025
                            106 	.globl _g_tiles_024
                            107 	.globl _g_tiles_023
                            108 	.globl _g_tiles_022
                            109 	.globl _g_tiles_021
                            110 	.globl _g_tiles_020
                            111 	.globl _g_tiles_019
                            112 	.globl _g_tiles_018
                            113 	.globl _g_tiles_017
                            114 	.globl _g_tiles_016
                            115 	.globl _g_tiles_015
                            116 	.globl _g_tiles_014
                            117 	.globl _g_tiles_013
                            118 	.globl _g_tiles_012
                            119 	.globl _g_tiles_011
                            120 	.globl _g_tiles_010
                            121 	.globl _g_tiles_009
                            122 	.globl _g_tiles_008
                            123 	.globl _g_tiles_007
                            124 	.globl _g_tiles_006
                            125 	.globl _g_tiles_005
                            126 	.globl _g_tiles_004
                            127 	.globl _g_tiles_003
                            128 	.globl _g_tiles_002
                            129 	.globl _g_tiles_001
                            130 	.globl _g_tiles_000
                            131 	.globl _g_tileset
                            132 	.globl _g_palette
                            133 ;--------------------------------------------------------
                            134 ; special function registers
                            135 ;--------------------------------------------------------
                            136 ;--------------------------------------------------------
                            137 ; ram data
                            138 ;--------------------------------------------------------
                            139 	.area _DATA
                            140 ;--------------------------------------------------------
                            141 ; ram data
                            142 ;--------------------------------------------------------
                            143 	.area _INITIALIZED
                            144 ;--------------------------------------------------------
                            145 ; absolute external ram data
                            146 ;--------------------------------------------------------
                            147 	.area _DABS (ABS)
                            148 ;--------------------------------------------------------
                            149 ; global & static initialisations
                            150 ;--------------------------------------------------------
                            151 	.area _HOME
                            152 	.area _GSINIT
                            153 	.area _GSFINAL
                            154 	.area _GSINIT
                            155 ;--------------------------------------------------------
                            156 ; Home
                            157 ;--------------------------------------------------------
                            158 	.area _HOME
                            159 	.area _HOME
                            160 ;--------------------------------------------------------
                            161 ; code
                            162 ;--------------------------------------------------------
                            163 	.area _CODE
                            164 	.area _CODE
   2EC7                     165 _g_palette:
   2EC7 4D                  166 	.db #0x4d	; 77	'M'
   2EC8 54                  167 	.db #0x54	; 84	'T'
   2EC9 40                  168 	.db #0x40	; 64
   2ECA 4B                  169 	.db #0x4b	; 75	'K'
   2ECB 44                  170 	.db #0x44	; 68	'D'
   2ECC 55                  171 	.db #0x55	; 85	'U'
   2ECD 57                  172 	.db #0x57	; 87	'W'
   2ECE 53                  173 	.db #0x53	; 83	'S'
   2ECF 5C                  174 	.db #0x5c	; 92
   2ED0 4C                  175 	.db #0x4c	; 76	'L'
   2ED1 4E                  176 	.db #0x4e	; 78	'N'
   2ED2 47                  177 	.db #0x47	; 71	'G'
   2ED3 56                  178 	.db #0x56	; 86	'V'
   2ED4 52                  179 	.db #0x52	; 82	'R'
   2ED5 5E                  180 	.db #0x5e	; 94
   2ED6 4A                  181 	.db #0x4a	; 74	'J'
   2ED7                     182 _g_tileset:
   2ED7 C7 2F               183 	.dw _g_tiles_000
   2ED9 CF 2F               184 	.dw _g_tiles_001
   2EDB D7 2F               185 	.dw _g_tiles_002
   2EDD DF 2F               186 	.dw _g_tiles_003
   2EDF E7 2F               187 	.dw _g_tiles_004
   2EE1 EF 2F               188 	.dw _g_tiles_005
   2EE3 F7 2F               189 	.dw _g_tiles_006
   2EE5 FF 2F               190 	.dw _g_tiles_007
   2EE7 07 30               191 	.dw _g_tiles_008
   2EE9 0F 30               192 	.dw _g_tiles_009
   2EEB 17 30               193 	.dw _g_tiles_010
   2EED 1F 30               194 	.dw _g_tiles_011
   2EEF 27 30               195 	.dw _g_tiles_012
   2EF1 2F 30               196 	.dw _g_tiles_013
   2EF3 37 30               197 	.dw _g_tiles_014
   2EF5 3F 30               198 	.dw _g_tiles_015
   2EF7 47 30               199 	.dw _g_tiles_016
   2EF9 4F 30               200 	.dw _g_tiles_017
   2EFB 57 30               201 	.dw _g_tiles_018
   2EFD 5F 30               202 	.dw _g_tiles_019
   2EFF 67 30               203 	.dw _g_tiles_020
   2F01 6F 30               204 	.dw _g_tiles_021
   2F03 77 30               205 	.dw _g_tiles_022
   2F05 7F 30               206 	.dw _g_tiles_023
   2F07 87 30               207 	.dw _g_tiles_024
   2F09 8F 30               208 	.dw _g_tiles_025
   2F0B 97 30               209 	.dw _g_tiles_026
   2F0D 9F 30               210 	.dw _g_tiles_027
   2F0F A7 30               211 	.dw _g_tiles_028
   2F11 AF 30               212 	.dw _g_tiles_029
   2F13 B7 30               213 	.dw _g_tiles_030
   2F15 BF 30               214 	.dw _g_tiles_031
   2F17 C7 30               215 	.dw _g_tiles_032
   2F19 CF 30               216 	.dw _g_tiles_033
   2F1B D7 30               217 	.dw _g_tiles_034
   2F1D DF 30               218 	.dw _g_tiles_035
   2F1F E7 30               219 	.dw _g_tiles_036
   2F21 EF 30               220 	.dw _g_tiles_037
   2F23 F7 30               221 	.dw _g_tiles_038
   2F25 FF 30               222 	.dw _g_tiles_039
   2F27 07 31               223 	.dw _g_tiles_040
   2F29 0F 31               224 	.dw _g_tiles_041
   2F2B 17 31               225 	.dw _g_tiles_042
   2F2D 1F 31               226 	.dw _g_tiles_043
   2F2F 27 31               227 	.dw _g_tiles_044
   2F31 2F 31               228 	.dw _g_tiles_045
   2F33 37 31               229 	.dw _g_tiles_046
   2F35 3F 31               230 	.dw _g_tiles_047
   2F37 47 31               231 	.dw _g_tiles_048
   2F39 4F 31               232 	.dw _g_tiles_049
   2F3B 57 31               233 	.dw _g_tiles_050
   2F3D 5F 31               234 	.dw _g_tiles_051
   2F3F 67 31               235 	.dw _g_tiles_052
   2F41 6F 31               236 	.dw _g_tiles_053
   2F43 77 31               237 	.dw _g_tiles_054
   2F45 7F 31               238 	.dw _g_tiles_055
   2F47 87 31               239 	.dw _g_tiles_056
   2F49 8F 31               240 	.dw _g_tiles_057
   2F4B 97 31               241 	.dw _g_tiles_058
   2F4D 9F 31               242 	.dw _g_tiles_059
   2F4F A7 31               243 	.dw _g_tiles_060
   2F51 AF 31               244 	.dw _g_tiles_061
   2F53 B7 31               245 	.dw _g_tiles_062
   2F55 BF 31               246 	.dw _g_tiles_063
   2F57 C7 31               247 	.dw _g_tiles_064
   2F59 CF 31               248 	.dw _g_tiles_065
   2F5B D7 31               249 	.dw _g_tiles_066
   2F5D DF 31               250 	.dw _g_tiles_067
   2F5F E7 31               251 	.dw _g_tiles_068
   2F61 EF 31               252 	.dw _g_tiles_069
   2F63 F7 31               253 	.dw _g_tiles_070
   2F65 FF 31               254 	.dw _g_tiles_071
   2F67 07 32               255 	.dw _g_tiles_072
   2F69 0F 32               256 	.dw _g_tiles_073
   2F6B 17 32               257 	.dw _g_tiles_074
   2F6D 1F 32               258 	.dw _g_tiles_075
   2F6F 27 32               259 	.dw _g_tiles_076
   2F71 2F 32               260 	.dw _g_tiles_077
   2F73 37 32               261 	.dw _g_tiles_078
   2F75 3F 32               262 	.dw _g_tiles_079
   2F77 47 32               263 	.dw _g_tiles_080
   2F79 4F 32               264 	.dw _g_tiles_081
   2F7B 57 32               265 	.dw _g_tiles_082
   2F7D 5F 32               266 	.dw _g_tiles_083
   2F7F 67 32               267 	.dw _g_tiles_084
   2F81 6F 32               268 	.dw _g_tiles_085
   2F83 77 32               269 	.dw _g_tiles_086
   2F85 7F 32               270 	.dw _g_tiles_087
   2F87 87 32               271 	.dw _g_tiles_088
   2F89 8F 32               272 	.dw _g_tiles_089
   2F8B 97 32               273 	.dw _g_tiles_090
   2F8D 9F 32               274 	.dw _g_tiles_091
   2F8F A7 32               275 	.dw _g_tiles_092
   2F91 AF 32               276 	.dw _g_tiles_093
   2F93 B7 32               277 	.dw _g_tiles_094
   2F95 BF 32               278 	.dw _g_tiles_095
   2F97 C7 32               279 	.dw _g_tiles_096
   2F99 CF 32               280 	.dw _g_tiles_097
   2F9B D7 32               281 	.dw _g_tiles_098
   2F9D DF 32               282 	.dw _g_tiles_099
   2F9F E7 32               283 	.dw _g_tiles_100
   2FA1 EF 32               284 	.dw _g_tiles_101
   2FA3 F7 32               285 	.dw _g_tiles_102
   2FA5 FF 32               286 	.dw _g_tiles_103
   2FA7 07 33               287 	.dw _g_tiles_104
   2FA9 0F 33               288 	.dw _g_tiles_105
   2FAB 17 33               289 	.dw _g_tiles_106
   2FAD 1F 33               290 	.dw _g_tiles_107
   2FAF 27 33               291 	.dw _g_tiles_108
   2FB1 2F 33               292 	.dw _g_tiles_109
   2FB3 37 33               293 	.dw _g_tiles_110
   2FB5 3F 33               294 	.dw _g_tiles_111
   2FB7 47 33               295 	.dw _g_tiles_112
   2FB9 4F 33               296 	.dw _g_tiles_113
   2FBB 57 33               297 	.dw _g_tiles_114
   2FBD 5F 33               298 	.dw _g_tiles_115
   2FBF 67 33               299 	.dw _g_tiles_116
   2FC1 6F 33               300 	.dw _g_tiles_117
   2FC3 77 33               301 	.dw _g_tiles_118
   2FC5 7F 33               302 	.dw _g_tiles_119
   2FC7                     303 _g_tiles_000:
   2FC7 33                  304 	.db #0x33	; 51	'3'
   2FC8 33                  305 	.db #0x33	; 51	'3'
   2FC9 33                  306 	.db #0x33	; 51	'3'
   2FCA 62                  307 	.db #0x62	; 98	'b'
   2FCB 33                  308 	.db #0x33	; 51	'3'
   2FCC 33                  309 	.db #0x33	; 51	'3'
   2FCD 62                  310 	.db #0x62	; 98	'b'
   2FCE 33                  311 	.db #0x33	; 51	'3'
   2FCF                     312 _g_tiles_001:
   2FCF 33                  313 	.db #0x33	; 51	'3'
   2FD0 33                  314 	.db #0x33	; 51	'3'
   2FD1 33                  315 	.db #0x33	; 51	'3'
   2FD2 73                  316 	.db #0x73	; 115	's'
   2FD3 33                  317 	.db #0x33	; 51	'3'
   2FD4 33                  318 	.db #0x33	; 51	'3'
   2FD5 73                  319 	.db #0x73	; 115	's'
   2FD6 33                  320 	.db #0x33	; 51	'3'
   2FD7                     321 _g_tiles_002:
   2FD7 33                  322 	.db #0x33	; 51	'3'
   2FD8 33                  323 	.db #0x33	; 51	'3'
   2FD9 33                  324 	.db #0x33	; 51	'3'
   2FDA 73                  325 	.db #0x73	; 115	's'
   2FDB 66                  326 	.db #0x66	; 102	'f'
   2FDC 99                  327 	.db #0x99	; 153
   2FDD 26                  328 	.db #0x26	; 38
   2FDE 91                  329 	.db #0x91	; 145
   2FDF                     330 _g_tiles_003:
   2FDF 33                  331 	.db #0x33	; 51	'3'
   2FE0 C1                  332 	.db #0xc1	; 193
   2FE1 33                  333 	.db #0x33	; 51	'3'
   2FE2 C1                  334 	.db #0xc1	; 193
   2FE3 33                  335 	.db #0x33	; 51	'3'
   2FE4 81                  336 	.db #0x81	; 129
   2FE5 62                  337 	.db #0x62	; 98	'b'
   2FE6 83                  338 	.db #0x83	; 131
   2FE7                     339 _g_tiles_004:
   2FE7 42                  340 	.db #0x42	; 66	'B'
   2FE8 33                  341 	.db #0x33	; 51	'3'
   2FE9 42                  342 	.db #0x42	; 66	'B'
   2FEA 33                  343 	.db #0x33	; 51	'3'
   2FEB 42                  344 	.db #0x42	; 66	'B'
   2FEC 33                  345 	.db #0x33	; 51	'3'
   2FED 83                  346 	.db #0x83	; 131
   2FEE 91                  347 	.db #0x91	; 145
   2FEF                     348 _g_tiles_005:
   2FEF 33                  349 	.db #0x33	; 51	'3'
   2FF0 33                  350 	.db #0x33	; 51	'3'
   2FF1 33                  351 	.db #0x33	; 51	'3'
   2FF2 77                  352 	.db #0x77	; 119	'w'
   2FF3 33                  353 	.db #0x33	; 51	'3'
   2FF4 33                  354 	.db #0x33	; 51	'3'
   2FF5 77                  355 	.db #0x77	; 119	'w'
   2FF6 33                  356 	.db #0x33	; 51	'3'
   2FF7                     357 _g_tiles_006:
   2FF7 33                  358 	.db #0x33	; 51	'3'
   2FF8 33                  359 	.db #0x33	; 51	'3'
   2FF9 33                  360 	.db #0x33	; 51	'3'
   2FFA 66                  361 	.db #0x66	; 102	'f'
   2FFB C4                  362 	.db #0xc4	; 196
   2FFC 66                  363 	.db #0x66	; 102	'f'
   2FFD DD                  364 	.db #0xdd	; 221
   2FFE DD                  365 	.db #0xdd	; 221
   2FFF                     366 _g_tiles_007:
   2FFF 3C                  367 	.db #0x3c	; 60
   3000 3C                  368 	.db #0x3c	; 60
   3001 3C                  369 	.db #0x3c	; 60
   3002 38                  370 	.db #0x38	; 56	'8'
   3003 3C                  371 	.db #0x3c	; 60
   3004 3C                  372 	.db #0x3c	; 60
   3005 38                  373 	.db #0x38	; 56	'8'
   3006 3C                  374 	.db #0x3c	; 60
   3007                     375 _g_tiles_008:
   3007 3C                  376 	.db #0x3c	; 60
   3008 3C                  377 	.db #0x3c	; 60
   3009 3C                  378 	.db #0x3c	; 60
   300A 79                  379 	.db #0x79	; 121	'y'
   300B 3C                  380 	.db #0x3c	; 60
   300C 3C                  381 	.db #0x3c	; 60
   300D 79                  382 	.db #0x79	; 121	'y'
   300E 3C                  383 	.db #0x3c	; 60
   300F                     384 _g_tiles_009:
   300F 3C                  385 	.db #0x3c	; 60
   3010 3C                  386 	.db #0x3c	; 60
   3011 3C                  387 	.db #0x3c	; 60
   3012 6C                  388 	.db #0x6c	; 108	'l'
   3013 3C                  389 	.db #0x3c	; 60
   3014 3C                  390 	.db #0x3c	; 60
   3015 6C                  391 	.db #0x6c	; 108	'l'
   3016 3C                  392 	.db #0x3c	; 60
   3017                     393 _g_tiles_010:
   3017 38                  394 	.db #0x38	; 56	'8'
   3018 3C                  395 	.db #0x3c	; 60
   3019 60                  396 	.db #0x60	; 96
   301A 94                  397 	.db #0x94	; 148
   301B 38                  398 	.db #0x38	; 56	'8'
   301C 3C                  399 	.db #0x3c	; 60
   301D 60                  400 	.db #0x60	; 96
   301E C0                  401 	.db #0xc0	; 192
   301F                     402 _g_tiles_011:
   301F 3C                  403 	.db #0x3c	; 60
   3020 90                  404 	.db #0x90	; 144
   3021 3C                  405 	.db #0x3c	; 60
   3022 D0                  406 	.db #0xd0	; 208
   3023 3C                  407 	.db #0x3c	; 60
   3024 D0                  408 	.db #0xd0	; 208
   3025 68                  409 	.db #0x68	; 104	'h'
   3026 B4                  410 	.db #0xb4	; 180
   3027                     411 _g_tiles_012:
   3027 94                  412 	.db #0x94	; 148
   3028 3C                  413 	.db #0x3c	; 60
   3029 94                  414 	.db #0x94	; 148
   302A 3C                  415 	.db #0x3c	; 60
   302B 94                  416 	.db #0x94	; 148
   302C 3C                  417 	.db #0x3c	; 60
   302D 60                  418 	.db #0x60	; 96
   302E 3C                  419 	.db #0x3c	; 60
   302F                     420 _g_tiles_013:
   302F 3C                  421 	.db #0x3c	; 60
   3030 3C                  422 	.db #0x3c	; 60
   3031 3C                  423 	.db #0x3c	; 60
   3032 79                  424 	.db #0x79	; 121	'y'
   3033 6C                  425 	.db #0x6c	; 108	'l'
   3034 9C                  426 	.db #0x9c	; 156
   3035 2C                  427 	.db #0x2c	; 44
   3036 94                  428 	.db #0x94	; 148
   3037                     429 _g_tiles_014:
   3037 03                  430 	.db #0x03	; 3
   3038 03                  431 	.db #0x03	; 3
   3039 81                  432 	.db #0x81	; 129
   303A 81                  433 	.db #0x81	; 129
   303B 43                  434 	.db #0x43	; 67	'C'
   303C 43                  435 	.db #0x43	; 67	'C'
   303D 43                  436 	.db #0x43	; 67	'C'
   303E 43                  437 	.db #0x43	; 67	'C'
   303F                     438 _g_tiles_015:
   303F 3C                  439 	.db #0x3c	; 60
   3040 38                  440 	.db #0x38	; 56	'8'
   3041 3C                  441 	.db #0x3c	; 60
   3042 64                  442 	.db #0x64	; 100	'd'
   3043 38                  443 	.db #0x38	; 56	'8'
   3044 C8                  444 	.db #0xc8	; 200
   3045 38                  445 	.db #0x38	; 56	'8'
   3046 CC                  446 	.db #0xcc	; 204
   3047                     447 _g_tiles_016:
   3047 30                  448 	.db #0x30	; 48	'0'
   3048 3C                  449 	.db #0x3c	; 60
   3049 CC                  450 	.db #0xcc	; 204
   304A 94                  451 	.db #0x94	; 148
   304B C4                  452 	.db #0xc4	; 196
   304C EA                  453 	.db #0xea	; 234
   304D C8                  454 	.db #0xc8	; 200
   304E EA                  455 	.db #0xea	; 234
   304F                     456 _g_tiles_017:
   304F 07                  457 	.db #0x07	; 7
   3050 C3                  458 	.db #0xc3	; 195
   3051 85                  459 	.db #0x85	; 133
   3052 03                  460 	.db #0x03	; 3
   3053 48                  461 	.db #0x48	; 72	'H'
   3054 C3                  462 	.db #0xc3	; 195
   3055 81                  463 	.db #0x81	; 129
   3056 C0                  464 	.db #0xc0	; 192
   3057                     465 _g_tiles_018:
   3057 03                  466 	.db #0x03	; 3
   3058 C2                  467 	.db #0xc2	; 194
   3059 03                  468 	.db #0x03	; 3
   305A C2                  469 	.db #0xc2	; 194
   305B C3                  470 	.db #0xc3	; 195
   305C C0                  471 	.db #0xc0	; 192
   305D C0                  472 	.db #0xc0	; 192
   305E 42                  473 	.db #0x42	; 66	'B'
   305F                     474 _g_tiles_019:
   305F 0F                  475 	.db #0x0f	; 15
   3060 0F                  476 	.db #0x0f	; 15
   3061 0F                  477 	.db #0x0f	; 15
   3062 5F                  478 	.db #0x5f	; 95
   3063 0F                  479 	.db #0x0f	; 15
   3064 0F                  480 	.db #0x0f	; 15
   3065 5F                  481 	.db #0x5f	; 95
   3066 0F                  482 	.db #0x0f	; 15
   3067                     483 _g_tiles_020:
   3067 0F                  484 	.db #0x0f	; 15
   3068 0F                  485 	.db #0x0f	; 15
   3069 FF                  486 	.db #0xff	; 255
   306A AF                  487 	.db #0xaf	; 175
   306B C0                  488 	.db #0xc0	; 192
   306C C0                  489 	.db #0xc0	; 192
   306D 03                  490 	.db #0x03	; 3
   306E 03                  491 	.db #0x03	; 3
   306F                     492 _g_tiles_021:
   306F CC                  493 	.db #0xcc	; 204
   3070 FF                  494 	.db #0xff	; 255
   3071 DD                  495 	.db #0xdd	; 221
   3072 7F                  496 	.db #0x7f	; 127
   3073 BF                  497 	.db #0xbf	; 191
   3074 7F                  498 	.db #0x7f	; 127
   3075 5F                  499 	.db #0x5f	; 95
   3076 EA                  500 	.db #0xea	; 234
   3077                     501 _g_tiles_022:
   3077 CC                  502 	.db #0xcc	; 204
   3078 F3                  503 	.db #0xf3	; 243
   3079 D9                  504 	.db #0xd9	; 217
   307A 73                  505 	.db #0x73	; 115	's'
   307B B3                  506 	.db #0xb3	; 179
   307C 73                  507 	.db #0x73	; 115	's'
   307D 5B                  508 	.db #0x5b	; 91
   307E E2                  509 	.db #0xe2	; 226
   307F                     510 _g_tiles_023:
   307F CC                  511 	.db #0xcc	; 204
   3080 FC                  512 	.db #0xfc	; 252
   3081 DC                  513 	.db #0xdc	; 220
   3082 7C                  514 	.db #0x7c	; 124
   3083 BC                  515 	.db #0xbc	; 188
   3084 F4                  516 	.db #0xf4	; 244
   3085 5E                  517 	.db #0x5e	; 94
   3086 E8                  518 	.db #0xe8	; 232
   3087                     519 _g_tiles_024:
   3087 0F                  520 	.db #0x0f	; 15
   3088 0F                  521 	.db #0x0f	; 15
   3089 0F                  522 	.db #0x0f	; 15
   308A 0B                  523 	.db #0x0b	; 11
   308B 0F                  524 	.db #0x0f	; 15
   308C 0F                  525 	.db #0x0f	; 15
   308D 0B                  526 	.db #0x0b	; 11
   308E 0F                  527 	.db #0x0f	; 15
   308F                     528 _g_tiles_025:
   308F 0F                  529 	.db #0x0f	; 15
   3090 0F                  530 	.db #0x0f	; 15
   3091 0F                  531 	.db #0x0f	; 15
   3092 4E                  532 	.db #0x4e	; 78	'N'
   3093 0F                  533 	.db #0x0f	; 15
   3094 0F                  534 	.db #0x0f	; 15
   3095 4E                  535 	.db #0x4e	; 78	'N'
   3096 0F                  536 	.db #0x0f	; 15
   3097                     537 _g_tiles_026:
   3097 4C                  538 	.db #0x4c	; 76	'L'
   3098 DD                  539 	.db #0xdd	; 221
   3099 4C                  540 	.db #0x4c	; 76	'L'
   309A DD                  541 	.db #0xdd	; 221
   309B 4C                  542 	.db #0x4c	; 76	'L'
   309C DD                  543 	.db #0xdd	; 221
   309D 4C                  544 	.db #0x4c	; 76	'L'
   309E DD                  545 	.db #0xdd	; 221
   309F                     546 _g_tiles_027:
   309F CC                  547 	.db #0xcc	; 204
   30A0 8C                  548 	.db #0x8c	; 140
   30A1 EE                  549 	.db #0xee	; 238
   30A2 8C                  550 	.db #0x8c	; 140
   30A3 CC                  551 	.db #0xcc	; 204
   30A4 8C                  552 	.db #0x8c	; 140
   30A5 EE                  553 	.db #0xee	; 238
   30A6 8C                  554 	.db #0x8c	; 140
   30A7                     555 _g_tiles_028:
   30A7 3C                  556 	.db #0x3c	; 60
   30A8 3C                  557 	.db #0x3c	; 60
   30A9 60                  558 	.db #0x60	; 96
   30AA 90                  559 	.db #0x90	; 144
   30AB 68                  560 	.db #0x68	; 104	'h'
   30AC 3C                  561 	.db #0x3c	; 60
   30AD 60                  562 	.db #0x60	; 96
   30AE C0                  563 	.db #0xc0	; 192
   30AF                     564 _g_tiles_029:
   30AF 3C                  565 	.db #0x3c	; 60
   30B0 3C                  566 	.db #0x3c	; 60
   30B1 6C                  567 	.db #0x6c	; 108	'l'
   30B2 94                  568 	.db #0x94	; 148
   30B3 C8                  569 	.db #0xc8	; 200
   30B4 C8                  570 	.db #0xc8	; 200
   30B5 D5                  571 	.db #0xd5	; 213
   30B6 D5                  572 	.db #0xd5	; 213
   30B7                     573 _g_tiles_030:
   30B7 03                  574 	.db #0x03	; 3
   30B8 03                  575 	.db #0x03	; 3
   30B9 81                  576 	.db #0x81	; 129
   30BA 81                  577 	.db #0x81	; 129
   30BB 57                  578 	.db #0x57	; 87	'W'
   30BC 4B                  579 	.db #0x4b	; 75	'K'
   30BD 43                  580 	.db #0x43	; 67	'C'
   30BE 43                  581 	.db #0x43	; 67	'C'
   30BF                     582 _g_tiles_031:
   30BF 03                  583 	.db #0x03	; 3
   30C0 03                  584 	.db #0x03	; 3
   30C1 C0                  585 	.db #0xc0	; 192
   30C2 C1                  586 	.db #0xc1	; 193
   30C3 0F                  587 	.db #0x0f	; 15
   30C4 C1                  588 	.db #0xc1	; 193
   30C5 4A                  589 	.db #0x4a	; 74	'J'
   30C6 83                  590 	.db #0x83	; 131
   30C7                     591 _g_tiles_032:
   30C7 0F                  592 	.db #0x0f	; 15
   30C8 1A                  593 	.db #0x1a	; 26
   30C9 0F                  594 	.db #0x0f	; 15
   30CA 64                  595 	.db #0x64	; 100	'd'
   30CB 1A                  596 	.db #0x1a	; 26
   30CC C8                  597 	.db #0xc8	; 200
   30CD 1A                  598 	.db #0x1a	; 26
   30CE CC                  599 	.db #0xcc	; 204
   30CF                     600 _g_tiles_033:
   30CF 30                  601 	.db #0x30	; 48	'0'
   30D0 0F                  602 	.db #0x0f	; 15
   30D1 CC                  603 	.db #0xcc	; 204
   30D2 85                  604 	.db #0x85	; 133
   30D3 C4                  605 	.db #0xc4	; 196
   30D4 EA                  606 	.db #0xea	; 234
   30D5 C8                  607 	.db #0xc8	; 200
   30D6 EA                  608 	.db #0xea	; 234
   30D7                     609 _g_tiles_034:
   30D7 0F                  610 	.db #0x0f	; 15
   30D8 0F                  611 	.db #0x0f	; 15
   30D9 0F                  612 	.db #0x0f	; 15
   30DA 60                  613 	.db #0x60	; 96
   30DB 1A                  614 	.db #0x1a	; 26
   30DC C8                  615 	.db #0xc8	; 200
   30DD D5                  616 	.db #0xd5	; 213
   30DE D5                  617 	.db #0xd5	; 213
   30DF                     618 _g_tiles_035:
   30DF 48                  619 	.db #0x48	; 72	'H'
   30E0 C0                  620 	.db #0xc0	; 192
   30E1 C0                  621 	.db #0xc0	; 192
   30E2 81                  622 	.db #0x81	; 129
   30E3 C0                  623 	.db #0xc0	; 192
   30E4 C0                  624 	.db #0xc0	; 192
   30E5 85                  625 	.db #0x85	; 133
   30E6 EE                  626 	.db #0xee	; 238
   30E7                     627 _g_tiles_036:
   30E7 C0                  628 	.db #0xc0	; 192
   30E8 84                  629 	.db #0x84	; 132
   30E9 03                  630 	.db #0x03	; 3
   30EA C0                  631 	.db #0xc0	; 192
   30EB C0                  632 	.db #0xc0	; 192
   30EC C0                  633 	.db #0xc0	; 192
   30ED 07                  634 	.db #0x07	; 7
   30EE C2                  635 	.db #0xc2	; 194
   30EF                     636 _g_tiles_037:
   30EF 81                  637 	.db #0x81	; 129
   30F0 03                  638 	.db #0x03	; 3
   30F1 85                  639 	.db #0x85	; 133
   30F2 46                  640 	.db #0x46	; 70	'F'
   30F3 81                  641 	.db #0x81	; 129
   30F4 03                  642 	.db #0x03	; 3
   30F5 C0                  643 	.db #0xc0	; 192
   30F6 C0                  644 	.db #0xc0	; 192
   30F7                     645 _g_tiles_038:
   30F7 03                  646 	.db #0x03	; 3
   30F8 42                  647 	.db #0x42	; 66	'B'
   30F9 AF                  648 	.db #0xaf	; 175
   30FA C2                  649 	.db #0xc2	; 194
   30FB 03                  650 	.db #0x03	; 3
   30FC 42                  651 	.db #0x42	; 66	'B'
   30FD C0                  652 	.db #0xc0	; 192
   30FE C0                  653 	.db #0xc0	; 192
   30FF                     654 _g_tiles_039:
   30FF 81                  655 	.db #0x81	; 129
   3100 C0                  656 	.db #0xc0	; 192
   3101 81                  657 	.db #0x81	; 129
   3102 42                  658 	.db #0x42	; 66	'B'
   3103 81                  659 	.db #0x81	; 129
   3104 03                  660 	.db #0x03	; 3
   3105 C0                  661 	.db #0xc0	; 192
   3106 C0                  662 	.db #0xc0	; 192
   3107                     663 _g_tiles_040:
   3107 C8                  664 	.db #0xc8	; 200
   3108 CA                  665 	.db #0xca	; 202
   3109 CF                  666 	.db #0xcf	; 207
   310A CF                  667 	.db #0xcf	; 207
   310B C5                  668 	.db #0xc5	; 197
   310C C7                  669 	.db #0xc7	; 199
   310D C0                  670 	.db #0xc0	; 192
   310E C0                  671 	.db #0xc0	; 192
   310F                     672 _g_tiles_041:
   310F C8                  673 	.db #0xc8	; 200
   3110 4A                  674 	.db #0x4a	; 74	'J'
   3111 CA                  675 	.db #0xca	; 202
   3112 4A                  676 	.db #0x4a	; 74	'J'
   3113 C0                  677 	.db #0xc0	; 192
   3114 4A                  678 	.db #0x4a	; 74	'J'
   3115 C0                  679 	.db #0xc0	; 192
   3116 C0                  680 	.db #0xc0	; 192
   3117                     681 _g_tiles_042:
   3117 C5                  682 	.db #0xc5	; 197
   3118 CF                  683 	.db #0xcf	; 207
   3119 C0                  684 	.db #0xc0	; 192
   311A C0                  685 	.db #0xc0	; 192
   311B C5                  686 	.db #0xc5	; 197
   311C CB                  687 	.db #0xcb	; 203
   311D C0                  688 	.db #0xc0	; 192
   311E C0                  689 	.db #0xc0	; 192
   311F                     690 _g_tiles_043:
   311F C3                  691 	.db #0xc3	; 195
   3120 C3                  692 	.db #0xc3	; 195
   3121 C0                  693 	.db #0xc0	; 192
   3122 C0                  694 	.db #0xc0	; 192
   3123 C3                  695 	.db #0xc3	; 195
   3124 83                  696 	.db #0x83	; 131
   3125 C0                  697 	.db #0xc0	; 192
   3126 C0                  698 	.db #0xc0	; 192
   3127                     699 _g_tiles_044:
   3127 03                  700 	.db #0x03	; 3
   3128 42                  701 	.db #0x42	; 66	'B'
   3129 C0                  702 	.db #0xc0	; 192
   312A C0                  703 	.db #0xc0	; 192
   312B 03                  704 	.db #0x03	; 3
   312C 42                  705 	.db #0x42	; 66	'B'
   312D C0                  706 	.db #0xc0	; 192
   312E C0                  707 	.db #0xc0	; 192
   312F                     708 _g_tiles_045:
   312F 33                  709 	.db #0x33	; 51	'3'
   3130 C0                  710 	.db #0xc0	; 192
   3131 62                  711 	.db #0x62	; 98	'b'
   3132 D9                  712 	.db #0xd9	; 217
   3133 C4                  713 	.db #0xc4	; 196
   3134 F3                  714 	.db #0xf3	; 243
   3135 D1                  715 	.db #0xd1	; 209
   3136 F3                  716 	.db #0xf3	; 243
   3137                     717 _g_tiles_046:
   3137 91                  718 	.db #0x91	; 145
   3138 C0                  719 	.db #0xc0	; 192
   3139 E2                  720 	.db #0xe2	; 226
   313A F3                  721 	.db #0xf3	; 243
   313B B3                  722 	.db #0xb3	; 179
   313C B3                  723 	.db #0xb3	; 179
   313D F3                  724 	.db #0xf3	; 243
   313E F3                  725 	.db #0xf3	; 243
   313F                     726 _g_tiles_047:
   313F C0                  727 	.db #0xc0	; 192
   3140 33                  728 	.db #0x33	; 51	'3'
   3141 33                  729 	.db #0x33	; 51	'3'
   3142 91                  730 	.db #0x91	; 145
   3143 B3                  731 	.db #0xb3	; 179
   3144 62                  732 	.db #0x62	; 98	'b'
   3145 73                  733 	.db #0x73	; 115	's'
   3146 62                  734 	.db #0x62	; 98	'b'
   3147                     735 _g_tiles_048:
   3147 C4                  736 	.db #0xc4	; 196
   3148 B3                  737 	.db #0xb3	; 179
   3149 D1                  738 	.db #0xd1	; 209
   314A F3                  739 	.db #0xf3	; 243
   314B 62                  740 	.db #0x62	; 98	'b'
   314C B3                  741 	.db #0xb3	; 179
   314D 33                  742 	.db #0x33	; 51	'3'
   314E C0                  743 	.db #0xc0	; 192
   314F                     744 _g_tiles_049:
   314F F3                  745 	.db #0xf3	; 243
   3150 F3                  746 	.db #0xf3	; 243
   3151 F3                  747 	.db #0xf3	; 243
   3152 73                  748 	.db #0x73	; 115	's'
   3153 F3                  749 	.db #0xf3	; 243
   3154 91                  750 	.db #0x91	; 145
   3155 C0                  751 	.db #0xc0	; 192
   3156 62                  752 	.db #0x62	; 98	'b'
   3157                     753 _g_tiles_050:
   3157 B3                  754 	.db #0xb3	; 179
   3158 62                  755 	.db #0x62	; 98	'b'
   3159 73                  756 	.db #0x73	; 115	's'
   315A 62                  757 	.db #0x62	; 98	'b'
   315B B3                  758 	.db #0xb3	; 179
   315C 91                  759 	.db #0x91	; 145
   315D C0                  760 	.db #0xc0	; 192
   315E 33                  761 	.db #0x33	; 51	'3'
   315F                     762 _g_tiles_051:
   315F C4                  763 	.db #0xc4	; 196
   3160 F3                  764 	.db #0xf3	; 243
   3161 62                  765 	.db #0x62	; 98	'b'
   3162 B3                  766 	.db #0xb3	; 179
   3163 C4                  767 	.db #0xc4	; 196
   3164 F3                  768 	.db #0xf3	; 243
   3165 C4                  769 	.db #0xc4	; 196
   3166 F3                  770 	.db #0xf3	; 243
   3167                     771 _g_tiles_052:
   3167 F3                  772 	.db #0xf3	; 243
   3168 F3                  773 	.db #0xf3	; 243
   3169 F3                  774 	.db #0xf3	; 243
   316A 73                  775 	.db #0x73	; 115	's'
   316B F3                  776 	.db #0xf3	; 243
   316C F3                  777 	.db #0xf3	; 243
   316D B3                  778 	.db #0xb3	; 179
   316E F3                  779 	.db #0xf3	; 243
   316F                     780 _g_tiles_053:
   316F 73                  781 	.db #0x73	; 115	's'
   3170 62                  782 	.db #0x62	; 98	'b'
   3171 B3                  783 	.db #0xb3	; 179
   3172 91                  784 	.db #0x91	; 145
   3173 73                  785 	.db #0x73	; 115	's'
   3174 62                  786 	.db #0x62	; 98	'b'
   3175 B3                  787 	.db #0xb3	; 179
   3176 62                  788 	.db #0x62	; 98	'b'
   3177                     789 _g_tiles_054:
   3177 F3                  790 	.db #0xf3	; 243
   3178 B3                  791 	.db #0xb3	; 179
   3179 E3                  792 	.db #0xe3	; 227
   317A F3                  793 	.db #0xf3	; 243
   317B D7                  794 	.db #0xd7	; 215
   317C D3                  795 	.db #0xd3	; 211
   317D E3                  796 	.db #0xe3	; 227
   317E 73                  797 	.db #0x73	; 115	's'
   317F                     798 _g_tiles_055:
   317F D5                  799 	.db #0xd5	; 213
   3180 D5                  800 	.db #0xd5	; 213
   3181 D5                  801 	.db #0xd5	; 213
   3182 95                  802 	.db #0x95	; 149
   3183 95                  803 	.db #0x95	; 149
   3184 95                  804 	.db #0x95	; 149
   3185 EA                  805 	.db #0xea	; 234
   3186 EA                  806 	.db #0xea	; 234
   3187                     807 _g_tiles_056:
   3187 30                  808 	.db #0x30	; 48	'0'
   3188 30                  809 	.db #0x30	; 48	'0'
   3189 B0                  810 	.db #0xb0	; 176
   318A 78                  811 	.db #0x78	; 120	'x'
   318B 30                  812 	.db #0x30	; 48	'0'
   318C 30                  813 	.db #0x30	; 48	'0'
   318D 78                  814 	.db #0x78	; 120	'x'
   318E B0                  815 	.db #0xb0	; 176
   318F                     816 _g_tiles_057:
   318F 30                  817 	.db #0x30	; 48	'0'
   3190 30                  818 	.db #0x30	; 48	'0'
   3191 34                  819 	.db #0x34	; 52	'4'
   3192 B0                  820 	.db #0xb0	; 176
   3193 70                  821 	.db #0x70	; 112	'p'
   3194 30                  822 	.db #0x30	; 48	'0'
   3195 30                  823 	.db #0x30	; 48	'0'
   3196 30                  824 	.db #0x30	; 48	'0'
   3197                     825 _g_tiles_058:
   3197 94                  826 	.db #0x94	; 148
   3198 78                  827 	.db #0x78	; 120	'x'
   3199 94                  828 	.db #0x94	; 148
   319A F0                  829 	.db #0xf0	; 240
   319B 68                  830 	.db #0x68	; 104	'h'
   319C B0                  831 	.db #0xb0	; 176
   319D 3C                  832 	.db #0x3c	; 60
   319E C0                  833 	.db #0xc0	; 192
   319F                     834 _g_tiles_059:
   319F F0                  835 	.db #0xf0	; 240
   31A0 60                  836 	.db #0x60	; 96
   31A1 B0                  837 	.db #0xb0	; 176
   31A2 60                  838 	.db #0x60	; 96
   31A3 B0                  839 	.db #0xb0	; 176
   31A4 94                  840 	.db #0x94	; 148
   31A5 C0                  841 	.db #0xc0	; 192
   31A6 3C                  842 	.db #0x3c	; 60
   31A7                     843 _g_tiles_060:
   31A7 68                  844 	.db #0x68	; 104	'h'
   31A8 78                  845 	.db #0x78	; 120	'x'
   31A9 94                  846 	.db #0x94	; 148
   31AA F0                  847 	.db #0xf0	; 240
   31AB 94                  848 	.db #0x94	; 148
   31AC 78                  849 	.db #0x78	; 120	'x'
   31AD 94                  850 	.db #0x94	; 148
   31AE F0                  851 	.db #0xf0	; 240
   31AF                     852 _g_tiles_061:
   31AF B0                  853 	.db #0xb0	; 176
   31B0 94                  854 	.db #0x94	; 148
   31B1 F0                  855 	.db #0xf0	; 240
   31B2 60                  856 	.db #0x60	; 96
   31B3 B0                  857 	.db #0xb0	; 176
   31B4 60                  858 	.db #0x60	; 96
   31B5 F0                  859 	.db #0xf0	; 240
   31B6 60                  860 	.db #0x60	; 96
   31B7                     861 _g_tiles_062:
   31B7 3C                  862 	.db #0x3c	; 60
   31B8 68                  863 	.db #0x68	; 104	'h'
   31B9 3C                  864 	.db #0x3c	; 60
   31BA 94                  865 	.db #0x94	; 148
   31BB 3C                  866 	.db #0x3c	; 60
   31BC D0                  867 	.db #0xd0	; 208
   31BD 68                  868 	.db #0x68	; 104	'h'
   31BE 78                  869 	.db #0x78	; 120	'x'
   31BF                     870 _g_tiles_063:
   31BF 94                  871 	.db #0x94	; 148
   31C0 3C                  872 	.db #0x3c	; 60
   31C1 E0                  873 	.db #0xe0	; 224
   31C2 3C                  874 	.db #0x3c	; 60
   31C3 E0                  875 	.db #0xe0	; 224
   31C4 3C                  876 	.db #0x3c	; 60
   31C5 B0                  877 	.db #0xb0	; 176
   31C6 94                  878 	.db #0x94	; 148
   31C7                     879 _g_tiles_064:
   31C7 68                  880 	.db #0x68	; 104	'h'
   31C8 68                  881 	.db #0x68	; 104	'h'
   31C9 60                  882 	.db #0x60	; 96
   31CA 60                  883 	.db #0x60	; 96
   31CB 68                  884 	.db #0x68	; 104	'h'
   31CC 68                  885 	.db #0x68	; 104	'h'
   31CD 60                  886 	.db #0x60	; 96
   31CE 60                  887 	.db #0x60	; 96
   31CF                     888 _g_tiles_065:
   31CF 3C                  889 	.db #0x3c	; 60
   31D0 C0                  890 	.db #0xc0	; 192
   31D1 68                  891 	.db #0x68	; 104	'h'
   31D2 CC                  892 	.db #0xcc	; 204
   31D3 68                  893 	.db #0x68	; 104	'h'
   31D4 8C                  894 	.db #0x8c	; 140
   31D5 68                  895 	.db #0x68	; 104	'h'
   31D6 CC                  896 	.db #0xcc	; 204
   31D7                     897 _g_tiles_066:
   31D7 C0                  898 	.db #0xc0	; 192
   31D8 94                  899 	.db #0x94	; 148
   31D9 CC                  900 	.db #0xcc	; 204
   31DA 48                  901 	.db #0x48	; 72	'H'
   31DB 84                  902 	.db #0x84	; 132
   31DC 48                  903 	.db #0x48	; 72	'H'
   31DD 8C                  904 	.db #0x8c	; 140
   31DE C0                  905 	.db #0xc0	; 192
   31DF                     906 _g_tiles_067:
   31DF 3C                  907 	.db #0x3c	; 60
   31E0 68                  908 	.db #0x68	; 104	'h'
   31E1 3C                  909 	.db #0x3c	; 60
   31E2 C4                  910 	.db #0xc4	; 196
   31E3 68                  911 	.db #0x68	; 104	'h'
   31E4 CC                  912 	.db #0xcc	; 204
   31E5 68                  913 	.db #0x68	; 104	'h'
   31E6 C8                  914 	.db #0xc8	; 200
   31E7                     915 _g_tiles_068:
   31E7 C0                  916 	.db #0xc0	; 192
   31E8 3C                  917 	.db #0x3c	; 60
   31E9 8C                  918 	.db #0x8c	; 140
   31EA 94                  919 	.db #0x94	; 148
   31EB 84                  920 	.db #0x84	; 132
   31EC 48                  921 	.db #0x48	; 72	'H'
   31ED C0                  922 	.db #0xc0	; 192
   31EE 48                  923 	.db #0x48	; 72	'H'
   31EF                     924 _g_tiles_069:
   31EF 68                  925 	.db #0x68	; 104	'h'
   31F0 8C                  926 	.db #0x8c	; 140
   31F1 68                  927 	.db #0x68	; 104	'h'
   31F2 CC                  928 	.db #0xcc	; 204
   31F3 68                  929 	.db #0x68	; 104	'h'
   31F4 8C                  930 	.db #0x8c	; 140
   31F5 68                  931 	.db #0x68	; 104	'h'
   31F6 84                  932 	.db #0x84	; 132
   31F7                     933 _g_tiles_070:
   31F7 84                  934 	.db #0x84	; 132
   31F8 48                  935 	.db #0x48	; 72	'H'
   31F9 0C                  936 	.db #0x0c	; 12
   31FA C0                  937 	.db #0xc0	; 192
   31FB 48                  938 	.db #0x48	; 72	'H'
   31FC 48                  939 	.db #0x48	; 72	'H'
   31FD 84                  940 	.db #0x84	; 132
   31FE C0                  941 	.db #0xc0	; 192
   31FF                     942 _g_tiles_071:
   31FF 68                  943 	.db #0x68	; 104	'h'
   3200 CC                  944 	.db #0xcc	; 204
   3201 68                  945 	.db #0x68	; 104	'h'
   3202 CC                  946 	.db #0xcc	; 204
   3203 68                  947 	.db #0x68	; 104	'h'
   3204 8C                  948 	.db #0x8c	; 140
   3205 68                  949 	.db #0x68	; 104	'h'
   3206 84                  950 	.db #0x84	; 132
   3207                     951 _g_tiles_072:
   3207 84                  952 	.db #0x84	; 132
   3208 48                  953 	.db #0x48	; 72	'H'
   3209 84                  954 	.db #0x84	; 132
   320A C0                  955 	.db #0xc0	; 192
   320B 48                  956 	.db #0x48	; 72	'H'
   320C 48                  957 	.db #0x48	; 72	'H'
   320D 84                  958 	.db #0x84	; 132
   320E C0                  959 	.db #0xc0	; 192
   320F                     960 _g_tiles_073:
   320F 3C                  961 	.db #0x3c	; 60
   3210 3C                  962 	.db #0x3c	; 60
   3211 3C                  963 	.db #0x3c	; 60
   3212 60                  964 	.db #0x60	; 96
   3213 38                  965 	.db #0x38	; 56	'8'
   3214 C8                  966 	.db #0xc8	; 200
   3215 D5                  967 	.db #0xd5	; 213
   3216 D5                  968 	.db #0xd5	; 213
   3217                     969 _g_tiles_074:
   3217 64                  970 	.db #0x64	; 100	'd'
   3218 C8                  971 	.db #0xc8	; 200
   3219 C0                  972 	.db #0xc0	; 192
   321A CC                  973 	.db #0xcc	; 204
   321B C8                  974 	.db #0xc8	; 200
   321C D5                  975 	.db #0xd5	; 213
   321D D5                  976 	.db #0xd5	; 213
   321E C0                  977 	.db #0xc0	; 192
   321F                     978 _g_tiles_075:
   321F C8                  979 	.db #0xc8	; 200
   3220 EA                  980 	.db #0xea	; 234
   3221 FF                  981 	.db #0xff	; 255
   3222 C0                  982 	.db #0xc0	; 192
   3223 C0                  983 	.db #0xc0	; 192
   3224 C0                  984 	.db #0xc0	; 192
   3225 D5                  985 	.db #0xd5	; 213
   3226 D5                  986 	.db #0xd5	; 213
   3227                     987 _g_tiles_076:
   3227 DC                  988 	.db #0xdc	; 220
   3228 FC                  989 	.db #0xfc	; 252
   3229 9C                  990 	.db #0x9c	; 156
   322A 3C                  991 	.db #0x3c	; 60
   322B BC                  992 	.db #0xbc	; 188
   322C 78                  993 	.db #0x78	; 120	'x'
   322D 38                  994 	.db #0x38	; 56	'8'
   322E 30                  995 	.db #0x30	; 48	'0'
   322F                     996 _g_tiles_077:
   322F FC                  997 	.db #0xfc	; 252
   3230 3C                  998 	.db #0x3c	; 60
   3231 3C                  999 	.db #0x3c	; 60
   3232 B0                 1000 	.db #0xb0	; 176
   3233 F0                 1001 	.db #0xf0	; 240
   3234 30                 1002 	.db #0x30	; 48	'0'
   3235 30                 1003 	.db #0x30	; 48	'0'
   3236 60                 1004 	.db #0x60	; 96
   3237                    1005 _g_tiles_078:
   3237 DC                 1006 	.db #0xdc	; 220
   3238 BC                 1007 	.db #0xbc	; 188
   3239 BC                 1008 	.db #0xbc	; 188
   323A 78                 1009 	.db #0x78	; 120	'x'
   323B BC                 1010 	.db #0xbc	; 188
   323C 38                 1011 	.db #0x38	; 56	'8'
   323D BC                 1012 	.db #0xbc	; 188
   323E B0                 1013 	.db #0xb0	; 176
   323F                    1014 _g_tiles_079:
   323F BC                 1015 	.db #0xbc	; 188
   3240 B0                 1016 	.db #0xb0	; 176
   3241 BC                 1017 	.db #0xbc	; 188
   3242 B0                 1018 	.db #0xb0	; 176
   3243 F8                 1019 	.db #0xf8	; 248
   3244 B0                 1020 	.db #0xb0	; 176
   3245 78                 1021 	.db #0x78	; 120	'x'
   3246 60                 1022 	.db #0x60	; 96
   3247                    1023 _g_tiles_080:
   3247 09                 1024 	.db #0x09	; 9
   3248 03                 1025 	.db #0x03	; 3
   3249 03                 1026 	.db #0x03	; 3
   324A 0F                 1027 	.db #0x0f	; 15
   324B 07                 1028 	.db #0x07	; 7
   324C 4B                 1029 	.db #0x4b	; 75	'K'
   324D 07                 1030 	.db #0x07	; 7
   324E C3                 1031 	.db #0xc3	; 195
   324F                    1032 _g_tiles_081:
   324F 03                 1033 	.db #0x03	; 3
   3250 84                 1034 	.db #0x84	; 132
   3251 0F                 1035 	.db #0x0f	; 15
   3252 C0                 1036 	.db #0xc0	; 192
   3253 C3                 1037 	.db #0xc3	; 195
   3254 4A                 1038 	.db #0x4a	; 74	'J'
   3255 83                 1039 	.db #0x83	; 131
   3256 C2                 1040 	.db #0xc2	; 194
   3257                    1041 _g_tiles_082:
   3257 C0                 1042 	.db #0xc0	; 192
   3258 C0                 1043 	.db #0xc0	; 192
   3259 42                 1044 	.db #0x42	; 66	'B'
   325A 83                 1045 	.db #0x83	; 131
   325B C0                 1046 	.db #0xc0	; 192
   325C C0                 1047 	.db #0xc0	; 192
   325D 4B                 1048 	.db #0x4b	; 75	'K'
   325E 42                 1049 	.db #0x42	; 66	'B'
   325F                    1050 _g_tiles_083:
   325F C0                 1051 	.db #0xc0	; 192
   3260 C0                 1052 	.db #0xc0	; 192
   3261 85                 1053 	.db #0x85	; 133
   3262 C2                 1054 	.db #0xc2	; 194
   3263 C1                 1055 	.db #0xc1	; 193
   3264 42                 1056 	.db #0x42	; 66	'B'
   3265 C0                 1057 	.db #0xc0	; 192
   3266 C0                 1058 	.db #0xc0	; 192
   3267                    1059 _g_tiles_084:
   3267 42                 1060 	.db #0x42	; 66	'B'
   3268 C0                 1061 	.db #0xc0	; 192
   3269 D5                 1062 	.db #0xd5	; 213
   326A 0F                 1063 	.db #0x0f	; 15
   326B 85                 1064 	.db #0x85	; 133
   326C C3                 1065 	.db #0xc3	; 195
   326D C0                 1066 	.db #0xc0	; 192
   326E C0                 1067 	.db #0xc0	; 192
   326F                    1068 _g_tiles_085:
   326F C0                 1069 	.db #0xc0	; 192
   3270 C0                 1070 	.db #0xc0	; 192
   3271 C3                 1071 	.db #0xc3	; 195
   3272 C2                 1072 	.db #0xc2	; 194
   3273 83                 1073 	.db #0x83	; 131
   3274 42                 1074 	.db #0x42	; 66	'B'
   3275 C0                 1075 	.db #0xc0	; 192
   3276 C0                 1076 	.db #0xc0	; 192
   3277                    1077 _g_tiles_086:
   3277 42                 1078 	.db #0x42	; 66	'B'
   3278 C0                 1079 	.db #0xc0	; 192
   3279 D5                 1080 	.db #0xd5	; 213
   327A 4A                 1081 	.db #0x4a	; 74	'J'
   327B 85                 1082 	.db #0x85	; 133
   327C C2                 1083 	.db #0xc2	; 194
   327D 85                 1084 	.db #0x85	; 133
   327E C2                 1085 	.db #0xc2	; 194
   327F                    1086 _g_tiles_087:
   327F C1                 1087 	.db #0xc1	; 193
   3280 C2                 1088 	.db #0xc2	; 194
   3281 C1                 1089 	.db #0xc1	; 193
   3282 42                 1090 	.db #0x42	; 66	'B'
   3283 C1                 1091 	.db #0xc1	; 193
   3284 42                 1092 	.db #0x42	; 66	'B'
   3285 C0                 1093 	.db #0xc0	; 192
   3286 C0                 1094 	.db #0xc0	; 192
   3287                    1095 _g_tiles_088:
   3287 03                 1096 	.db #0x03	; 3
   3288 03                 1097 	.db #0x03	; 3
   3289 42                 1098 	.db #0x42	; 66	'B'
   328A C3                 1099 	.db #0xc3	; 195
   328B 56                 1100 	.db #0x56	; 86	'V'
   328C 0F                 1101 	.db #0x0f	; 15
   328D 56                 1102 	.db #0x56	; 86	'V'
   328E C3                 1103 	.db #0xc3	; 195
   328F                    1104 _g_tiles_089:
   328F 03                 1105 	.db #0x03	; 3
   3290 03                 1106 	.db #0x03	; 3
   3291 C5                 1107 	.db #0xc5	; 197
   3292 81                 1108 	.db #0x81	; 129
   3293 C4                 1109 	.db #0xc4	; 196
   3294 81                 1110 	.db #0x81	; 129
   3295 C5                 1111 	.db #0xc5	; 197
   3296 29                 1112 	.db #0x29	; 41
   3297                    1113 _g_tiles_090:
   3297 56                 1114 	.db #0x56	; 86	'V'
   3298 C3                 1115 	.db #0xc3	; 195
   3299 56                 1116 	.db #0x56	; 86	'V'
   329A C3                 1117 	.db #0xc3	; 195
   329B 03                 1118 	.db #0x03	; 3
   329C 03                 1119 	.db #0x03	; 3
   329D C0                 1120 	.db #0xc0	; 192
   329E C0                 1121 	.db #0xc0	; 192
   329F                    1122 _g_tiles_091:
   329F C5                 1123 	.db #0xc5	; 197
   32A0 29                 1124 	.db #0x29	; 41
   32A1 C5                 1125 	.db #0xc5	; 197
   32A2 29                 1126 	.db #0x29	; 41
   32A3 03                 1127 	.db #0x03	; 3
   32A4 03                 1128 	.db #0x03	; 3
   32A5 C0                 1129 	.db #0xc0	; 192
   32A6 C0                 1130 	.db #0xc0	; 192
   32A7                    1131 _g_tiles_092:
   32A7 03                 1132 	.db #0x03	; 3
   32A8 03                 1133 	.db #0x03	; 3
   32A9 42                 1134 	.db #0x42	; 66	'B'
   32AA C0                 1135 	.db #0xc0	; 192
   32AB 07                 1136 	.db #0x07	; 7
   32AC 4A                 1137 	.db #0x4a	; 74	'J'
   32AD 43                 1138 	.db #0x43	; 67	'C'
   32AE C6                 1139 	.db #0xc6	; 198
   32AF                    1140 _g_tiles_093:
   32AF 03                 1141 	.db #0x03	; 3
   32B0 03                 1142 	.db #0x03	; 3
   32B1 C0                 1143 	.db #0xc0	; 192
   32B2 81                 1144 	.db #0x81	; 129
   32B3 94                 1145 	.db #0x94	; 148
   32B4 29                 1146 	.db #0x29	; 41
   32B5 DA                 1147 	.db #0xda	; 218
   32B6 A1                 1148 	.db #0xa1	; 161
   32B7                    1149 _g_tiles_094:
   32B7 07                 1150 	.db #0x07	; 7
   32B8 4E                 1151 	.db #0x4e	; 78	'N'
   32B9 07                 1152 	.db #0x07	; 7
   32BA 4E                 1153 	.db #0x4e	; 78	'N'
   32BB 03                 1154 	.db #0x03	; 3
   32BC 03                 1155 	.db #0x03	; 3
   32BD C0                 1156 	.db #0xc0	; 192
   32BE C0                 1157 	.db #0xc0	; 192
   32BF                    1158 _g_tiles_095:
   32BF 9E                 1159 	.db #0x9e	; 158
   32C0 29                 1160 	.db #0x29	; 41
   32C1 9E                 1161 	.db #0x9e	; 158
   32C2 29                 1162 	.db #0x29	; 41
   32C3 03                 1163 	.db #0x03	; 3
   32C4 03                 1164 	.db #0x03	; 3
   32C5 C0                 1165 	.db #0xc0	; 192
   32C6 C0                 1166 	.db #0xc0	; 192
   32C7                    1167 _g_tiles_096:
   32C7 03                 1168 	.db #0x03	; 3
   32C8 03                 1169 	.db #0x03	; 3
   32C9 53                 1170 	.db #0x53	; 83	'S'
   32CA C0                 1171 	.db #0xc0	; 192
   32CB 46                 1172 	.db #0x46	; 70	'F'
   32CC 3C                 1173 	.db #0x3c	; 60
   32CD 53                 1174 	.db #0x53	; 83	'S'
   32CE CC                 1175 	.db #0xcc	; 204
   32CF                    1176 _g_tiles_097:
   32CF 03                 1177 	.db #0x03	; 3
   32D0 03                 1178 	.db #0x03	; 3
   32D1 C0                 1179 	.db #0xc0	; 192
   32D2 81                 1180 	.db #0x81	; 129
   32D3 85                 1181 	.db #0x85	; 133
   32D4 0B                 1182 	.db #0x0b	; 11
   32D5 D7                 1183 	.db #0xd7	; 215
   32D6 AB                 1184 	.db #0xab	; 171
   32D7                    1185 _g_tiles_098:
   32D7 53                 1186 	.db #0x53	; 83	'S'
   32D8 3C                 1187 	.db #0x3c	; 60
   32D9 53                 1188 	.db #0x53	; 83	'S'
   32DA 3C                 1189 	.db #0x3c	; 60
   32DB 03                 1190 	.db #0x03	; 3
   32DC 03                 1191 	.db #0x03	; 3
   32DD C0                 1192 	.db #0xc0	; 192
   32DE C0                 1193 	.db #0xc0	; 192
   32DF                    1194 _g_tiles_099:
   32DF 87                 1195 	.db #0x87	; 135
   32E0 0B                 1196 	.db #0x0b	; 11
   32E1 87                 1197 	.db #0x87	; 135
   32E2 0B                 1198 	.db #0x0b	; 11
   32E3 03                 1199 	.db #0x03	; 3
   32E4 03                 1200 	.db #0x03	; 3
   32E5 C0                 1201 	.db #0xc0	; 192
   32E6 C0                 1202 	.db #0xc0	; 192
   32E7                    1203 _g_tiles_100:
   32E7 03                 1204 	.db #0x03	; 3
   32E8 03                 1205 	.db #0x03	; 3
   32E9 46                 1206 	.db #0x46	; 70	'F'
   32EA 63                 1207 	.db #0x63	; 99	'c'
   32EB 46                 1208 	.db #0x46	; 70	'F'
   32EC 63                 1209 	.db #0x63	; 99	'c'
   32ED C0                 1210 	.db #0xc0	; 192
   32EE C0                 1211 	.db #0xc0	; 192
   32EF                    1212 _g_tiles_101:
   32EF 03                 1213 	.db #0x03	; 3
   32F0 03                 1214 	.db #0x03	; 3
   32F1 7D                 1215 	.db #0x7d	; 125
   32F2 0B                 1216 	.db #0x0b	; 11
   32F3 7D                 1217 	.db #0x7d	; 125
   32F4 0B                 1218 	.db #0x0b	; 11
   32F5 C0                 1219 	.db #0xc0	; 192
   32F6 C0                 1220 	.db #0xc0	; 192
   32F7                    1221 _g_tiles_102:
   32F7 03                 1222 	.db #0x03	; 3
   32F8 03                 1223 	.db #0x03	; 3
   32F9 47                 1224 	.db #0x47	; 71	'G'
   32FA 2D                 1225 	.db #0x2d	; 45
   32FB 47                 1226 	.db #0x47	; 71	'G'
   32FC 2D                 1227 	.db #0x2d	; 45
   32FD C0                 1228 	.db #0xc0	; 192
   32FE C0                 1229 	.db #0xc0	; 192
   32FF                    1230 _g_tiles_103:
   32FF 03                 1231 	.db #0x03	; 3
   3300 03                 1232 	.db #0x03	; 3
   3301 8C                 1233 	.db #0x8c	; 140
   3302 89                 1234 	.db #0x89	; 137
   3303 8C                 1235 	.db #0x8c	; 140
   3304 AB                 1236 	.db #0xab	; 171
   3305 C0                 1237 	.db #0xc0	; 192
   3306 C0                 1238 	.db #0xc0	; 192
   3307                    1239 _g_tiles_104:
   3307 4A                 1240 	.db #0x4a	; 74	'J'
   3308 4A                 1241 	.db #0x4a	; 74	'J'
   3309 C0                 1242 	.db #0xc0	; 192
   330A C0                 1243 	.db #0xc0	; 192
   330B 4A                 1244 	.db #0x4a	; 74	'J'
   330C 4A                 1245 	.db #0x4a	; 74	'J'
   330D C0                 1246 	.db #0xc0	; 192
   330E C0                 1247 	.db #0xc0	; 192
   330F                    1248 _g_tiles_105:
   330F 85                 1249 	.db #0x85	; 133
   3310 C2                 1250 	.db #0xc2	; 194
   3311 85                 1251 	.db #0x85	; 133
   3312 C2                 1252 	.db #0xc2	; 194
   3313 85                 1253 	.db #0x85	; 133
   3314 C2                 1254 	.db #0xc2	; 194
   3315 85                 1255 	.db #0x85	; 133
   3316 C2                 1256 	.db #0xc2	; 194
   3317                    1257 _g_tiles_106:
   3317 03                 1258 	.db #0x03	; 3
   3318 03                 1259 	.db #0x03	; 3
   3319 42                 1260 	.db #0x42	; 66	'B'
   331A C0                 1261 	.db #0xc0	; 192
   331B 42                 1262 	.db #0x42	; 66	'B'
   331C 0F                 1263 	.db #0x0f	; 15
   331D 83                 1264 	.db #0x83	; 131
   331E 85                 1265 	.db #0x85	; 133
   331F                    1266 _g_tiles_107:
   331F 8D                 1267 	.db #0x8d	; 141
   3320 0F                 1268 	.db #0x0f	; 15
   3321 0F                 1269 	.db #0x0f	; 15
   3322 83                 1270 	.db #0x83	; 131
   3323 4B                 1271 	.db #0x4b	; 75	'K'
   3324 83                 1272 	.db #0x83	; 131
   3325 83                 1273 	.db #0x83	; 131
   3326 03                 1274 	.db #0x03	; 3
   3327                    1275 _g_tiles_108:
   3327 48                 1276 	.db #0x48	; 72	'H'
   3328 C0                 1277 	.db #0xc0	; 192
   3329 C0                 1278 	.db #0xc0	; 192
   332A 07                 1279 	.db #0x07	; 7
   332B 85                 1280 	.db #0x85	; 133
   332C 43                 1281 	.db #0x43	; 67	'C'
   332D C1                 1282 	.db #0xc1	; 193
   332E 43                 1283 	.db #0x43	; 67	'C'
   332F                    1284 _g_tiles_109:
   332F C0                 1285 	.db #0xc0	; 192
   3330 C0                 1286 	.db #0xc0	; 192
   3331 07                 1287 	.db #0x07	; 7
   3332 07                 1288 	.db #0x07	; 7
   3333 43                 1289 	.db #0x43	; 67	'C'
   3334 43                 1290 	.db #0x43	; 67	'C'
   3335 43                 1291 	.db #0x43	; 67	'C'
   3336 43                 1292 	.db #0x43	; 67	'C'
   3337                    1293 _g_tiles_110:
   3337 C0                 1294 	.db #0xc0	; 192
   3338 84                 1295 	.db #0x84	; 132
   3339 07                 1296 	.db #0x07	; 7
   333A C0                 1297 	.db #0xc0	; 192
   333B 43                 1298 	.db #0x43	; 67	'C'
   333C 42                 1299 	.db #0x42	; 66	'B'
   333D 43                 1300 	.db #0x43	; 67	'C'
   333E 42                 1301 	.db #0x42	; 66	'B'
   333F                    1302 _g_tiles_111:
   333F C0                 1303 	.db #0xc0	; 192
   3340 C0                 1304 	.db #0xc0	; 192
   3341 C5                 1305 	.db #0xc5	; 197
   3342 CE                 1306 	.db #0xce	; 206
   3343 C5                 1307 	.db #0xc5	; 197
   3344 C6                 1308 	.db #0xc6	; 198
   3345 C1                 1309 	.db #0xc1	; 193
   3346 C6                 1310 	.db #0xc6	; 198
   3347                    1311 _g_tiles_112:
   3347 C0                 1312 	.db #0xc0	; 192
   3348 C0                 1313 	.db #0xc0	; 192
   3349 CD                 1314 	.db #0xcd	; 205
   334A C6                 1315 	.db #0xc6	; 198
   334B C9                 1316 	.db #0xc9	; 201
   334C C6                 1317 	.db #0xc6	; 198
   334D C9                 1318 	.db #0xc9	; 201
   334E C6                 1319 	.db #0xc6	; 198
   334F                    1320 _g_tiles_113:
   334F C0                 1321 	.db #0xc0	; 192
   3350 C0                 1322 	.db #0xc0	; 192
   3351 C9                 1323 	.db #0xc9	; 201
   3352 42                 1324 	.db #0x42	; 66	'B'
   3353 C9                 1325 	.db #0xc9	; 201
   3354 42                 1326 	.db #0x42	; 66	'B'
   3355 C9                 1327 	.db #0xc9	; 201
   3356 42                 1328 	.db #0x42	; 66	'B'
   3357                    1329 _g_tiles_114:
   3357 C1                 1330 	.db #0xc1	; 193
   3358 C6                 1331 	.db #0xc6	; 198
   3359 C1                 1332 	.db #0xc1	; 193
   335A C6                 1333 	.db #0xc6	; 198
   335B C1                 1334 	.db #0xc1	; 193
   335C C2                 1335 	.db #0xc2	; 194
   335D C0                 1336 	.db #0xc0	; 192
   335E 81                 1337 	.db #0x81	; 129
   335F                    1338 _g_tiles_115:
   335F C9                 1339 	.db #0xc9	; 201
   3360 C6                 1340 	.db #0xc6	; 198
   3361 C9                 1341 	.db #0xc9	; 201
   3362 C6                 1342 	.db #0xc6	; 198
   3363 C1                 1343 	.db #0xc1	; 193
   3364 C2                 1344 	.db #0xc2	; 194
   3365 C0                 1345 	.db #0xc0	; 192
   3366 D5                 1346 	.db #0xd5	; 213
   3367                    1347 _g_tiles_116:
   3367 C9                 1348 	.db #0xc9	; 201
   3368 42                 1349 	.db #0x42	; 66	'B'
   3369 C9                 1350 	.db #0xc9	; 201
   336A 42                 1351 	.db #0x42	; 66	'B'
   336B 81                 1352 	.db #0x81	; 129
   336C 42                 1353 	.db #0x42	; 66	'B'
   336D C0                 1354 	.db #0xc0	; 192
   336E C0                 1355 	.db #0xc0	; 192
   336F                    1356 _g_tiles_117:
   336F 81                 1357 	.db #0x81	; 129
   3370 42                 1358 	.db #0x42	; 66	'B'
   3371 81                 1359 	.db #0x81	; 129
   3372 C4                 1360 	.db #0xc4	; 196
   3373 81                 1361 	.db #0x81	; 129
   3374 C4                 1362 	.db #0xc4	; 196
   3375 C0                 1363 	.db #0xc0	; 192
   3376 DD                 1364 	.db #0xdd	; 221
   3377                    1365 _g_tiles_118:
   3377 DD                 1366 	.db #0xdd	; 221
   3378 AF                 1367 	.db #0xaf	; 175
   3379 AF                 1368 	.db #0xaf	; 175
   337A 4A                 1369 	.db #0x4a	; 74	'J'
   337B EA                 1370 	.db #0xea	; 234
   337C C5                 1371 	.db #0xc5	; 197
   337D C0                 1372 	.db #0xc0	; 192
   337E CA                 1373 	.db #0xca	; 202
   337F                    1374 _g_tiles_119:
   337F 4A                 1375 	.db #0x4a	; 74	'J'
   3380 42                 1376 	.db #0x42	; 66	'B'
   3381 4A                 1377 	.db #0x4a	; 74	'J'
   3382 42                 1378 	.db #0x42	; 66	'B'
   3383 85                 1379 	.db #0x85	; 133
   3384 C0                 1380 	.db #0xc0	; 192
   3385 C8                 1381 	.db #0xc8	; 200
   3386 4A                 1382 	.db #0x4a	; 74	'J'
                           1383 	.area _INITIALIZER
                           1384 	.area _CABS (ABS)
