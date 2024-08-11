                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module font
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _g_font
                             12 ;--------------------------------------------------------
                             13 ; special function registers
                             14 ;--------------------------------------------------------
                             15 ;--------------------------------------------------------
                             16 ; ram data
                             17 ;--------------------------------------------------------
                             18 	.area _DATA
                             19 ;--------------------------------------------------------
                             20 ; ram data
                             21 ;--------------------------------------------------------
                             22 	.area _INITIALIZED
                             23 ;--------------------------------------------------------
                             24 ; absolute external ram data
                             25 ;--------------------------------------------------------
                             26 	.area _DABS (ABS)
                             27 ;--------------------------------------------------------
                             28 ; global & static initialisations
                             29 ;--------------------------------------------------------
                             30 	.area _HOME
                             31 	.area _GSINIT
                             32 	.area _GSFINAL
                             33 	.area _GSINIT
                             34 ;--------------------------------------------------------
                             35 ; Home
                             36 ;--------------------------------------------------------
                             37 	.area _HOME
                             38 	.area _HOME
                             39 ;--------------------------------------------------------
                             40 ; code
                             41 ;--------------------------------------------------------
                             42 	.area _CODE
                             43 	.area _CODE
   3D5C                      44 _g_font:
   3D5C 44                   45 	.db #0x44	; 68	'D'
   3D5D CC                   46 	.db #0xcc	; 204
   3D5E 02                   47 	.db #0x02	; 2
   3D5F FF                   48 	.db #0xff	; 255
   3D60 FF                   49 	.db #0xff	; 255
   3D61 AB                   50 	.db #0xab	; 171
   3D62 FF                   51 	.db #0xff	; 255
   3D63 57                   52 	.db #0x57	; 87	'W'
   3D64 AB                   53 	.db #0xab	; 171
   3D65 FF                   54 	.db #0xff	; 255
   3D66 57                   55 	.db #0x57	; 87	'W'
   3D67 AB                   56 	.db #0xab	; 171
   3D68 0F                   57 	.db #0x0f	; 15
   3D69 07                   58 	.db #0x07	; 7
   3D6A 0B                   59 	.db #0x0b	; 11
   3D6B 0F                   60 	.db #0x0f	; 15
   3D6C 07                   61 	.db #0x07	; 7
   3D6D 0B                   62 	.db #0x0b	; 11
   3D6E C3                   63 	.db #0xc3	; 195
   3D6F C3                   64 	.db #0xc3	; 195
   3D70 83                   65 	.db #0x83	; 131
   3D71 41                   66 	.db #0x41	; 65	'A'
   3D72 C3                   67 	.db #0xc3	; 195
   3D73 02                   68 	.db #0x02	; 2
   3D74 00                   69 	.db #0x00	; 0
   3D75 CC                   70 	.db #0xcc	; 204
   3D76 02                   71 	.db #0x02	; 2
   3D77 55                   72 	.db #0x55	; 85	'U'
   3D78 FF                   73 	.db #0xff	; 255
   3D79 02                   74 	.db #0x02	; 2
   3D7A 00                   75 	.db #0x00	; 0
   3D7B FF                   76 	.db #0xff	; 255
   3D7C 02                   77 	.db #0x02	; 2
   3D7D 00                   78 	.db #0x00	; 0
   3D7E FF                   79 	.db #0xff	; 255
   3D7F 02                   80 	.db #0x02	; 2
   3D80 00                   81 	.db #0x00	; 0
   3D81 0F                   82 	.db #0x0f	; 15
   3D82 02                   83 	.db #0x02	; 2
   3D83 00                   84 	.db #0x00	; 0
   3D84 0F                   85 	.db #0x0f	; 15
   3D85 02                   86 	.db #0x02	; 2
   3D86 41                   87 	.db #0x41	; 65	'A'
   3D87 C3                   88 	.db #0xc3	; 195
   3D88 83                   89 	.db #0x83	; 131
   3D89 41                   90 	.db #0x41	; 65	'A'
   3D8A C3                   91 	.db #0xc3	; 195
   3D8B 83                   92 	.db #0x83	; 131
   3D8C 44                   93 	.db #0x44	; 68	'D'
   3D8D CC                   94 	.db #0xcc	; 204
   3D8E 02                   95 	.db #0x02	; 2
   3D8F FF                   96 	.db #0xff	; 255
   3D90 FF                   97 	.db #0xff	; 255
   3D91 AB                   98 	.db #0xab	; 171
   3D92 FF                   99 	.db #0xff	; 255
   3D93 57                  100 	.db #0x57	; 87	'W'
   3D94 AB                  101 	.db #0xab	; 171
   3D95 00                  102 	.db #0x00	; 0
   3D96 55                  103 	.db #0x55	; 85	'U'
   3D97 AB                  104 	.db #0xab	; 171
   3D98 05                  105 	.db #0x05	; 5
   3D99 0F                  106 	.db #0x0f	; 15
   3D9A 02                  107 	.db #0x02	; 2
   3D9B 0F                  108 	.db #0x0f	; 15
   3D9C 02                  109 	.db #0x02	; 2
   3D9D 00                  110 	.db #0x00	; 0
   3D9E C3                  111 	.db #0xc3	; 195
   3D9F C3                  112 	.db #0xc3	; 195
   3DA0 83                  113 	.db #0x83	; 131
   3DA1 C3                  114 	.db #0xc3	; 195
   3DA2 C3                  115 	.db #0xc3	; 195
   3DA3 83                  116 	.db #0x83	; 131
   3DA4 44                  117 	.db #0x44	; 68	'D'
   3DA5 CC                  118 	.db #0xcc	; 204
   3DA6 02                  119 	.db #0x02	; 2
   3DA7 FF                  120 	.db #0xff	; 255
   3DA8 FF                  121 	.db #0xff	; 255
   3DA9 AB                  122 	.db #0xab	; 171
   3DAA FF                  123 	.db #0xff	; 255
   3DAB 57                  124 	.db #0x57	; 87	'W'
   3DAC AB                  125 	.db #0xab	; 171
   3DAD 00                  126 	.db #0x00	; 0
   3DAE FF                  127 	.db #0xff	; 255
   3DAF 02                  128 	.db #0x02	; 2
   3DB0 00                  129 	.db #0x00	; 0
   3DB1 05                  130 	.db #0x05	; 5
   3DB2 0B                  131 	.db #0x0b	; 11
   3DB3 0F                  132 	.db #0x0f	; 15
   3DB4 07                  133 	.db #0x07	; 7
   3DB5 0B                  134 	.db #0x0b	; 11
   3DB6 C3                  135 	.db #0xc3	; 195
   3DB7 C3                  136 	.db #0xc3	; 195
   3DB8 83                  137 	.db #0x83	; 131
   3DB9 41                  138 	.db #0x41	; 65	'A'
   3DBA C3                  139 	.db #0xc3	; 195
   3DBB 02                  140 	.db #0x02	; 2
   3DBC 00                  141 	.db #0x00	; 0
   3DBD CC                  142 	.db #0xcc	; 204
   3DBE 02                  143 	.db #0x02	; 2
   3DBF AB                  144 	.db #0xab	; 171
   3DC0 FF                  145 	.db #0xff	; 255
   3DC1 02                  146 	.db #0x02	; 2
   3DC2 AB                  147 	.db #0xab	; 171
   3DC3 FF                  148 	.db #0xff	; 255
   3DC4 02                  149 	.db #0x02	; 2
   3DC5 AB                  150 	.db #0xab	; 171
   3DC6 FF                  151 	.db #0xff	; 255
   3DC7 02                  152 	.db #0x02	; 2
   3DC8 0F                  153 	.db #0x0f	; 15
   3DC9 0F                  154 	.db #0x0f	; 15
   3DCA 0B                  155 	.db #0x0b	; 11
   3DCB 0F                  156 	.db #0x0f	; 15
   3DCC 0F                  157 	.db #0x0f	; 15
   3DCD 0B                  158 	.db #0x0b	; 11
   3DCE 00                  159 	.db #0x00	; 0
   3DCF C3                  160 	.db #0xc3	; 195
   3DD0 02                  161 	.db #0x02	; 2
   3DD1 00                  162 	.db #0x00	; 0
   3DD2 C3                  163 	.db #0xc3	; 195
   3DD3 02                  164 	.db #0x02	; 2
   3DD4 CC                  165 	.db #0xcc	; 204
   3DD5 CC                  166 	.db #0xcc	; 204
   3DD6 89                  167 	.db #0x89	; 137
   3DD7 FF                  168 	.db #0xff	; 255
   3DD8 FF                  169 	.db #0xff	; 255
   3DD9 AB                  170 	.db #0xab	; 171
   3DDA FF                  171 	.db #0xff	; 255
   3DDB 02                  172 	.db #0x02	; 2
   3DDC 00                  173 	.db #0x00	; 0
   3DDD FF                  174 	.db #0xff	; 255
   3DDE FF                  175 	.db #0xff	; 255
   3DDF 02                  176 	.db #0x02	; 2
   3DE0 00                  177 	.db #0x00	; 0
   3DE1 05                  178 	.db #0x05	; 5
   3DE2 0B                  179 	.db #0x0b	; 11
   3DE3 0F                  180 	.db #0x0f	; 15
   3DE4 07                  181 	.db #0x07	; 7
   3DE5 0B                  182 	.db #0x0b	; 11
   3DE6 C3                  183 	.db #0xc3	; 195
   3DE7 C3                  184 	.db #0xc3	; 195
   3DE8 83                  185 	.db #0x83	; 131
   3DE9 41                  186 	.db #0x41	; 65	'A'
   3DEA C3                  187 	.db #0xc3	; 195
   3DEB 02                  188 	.db #0x02	; 2
   3DEC 44                  189 	.db #0x44	; 68	'D'
   3DED CC                  190 	.db #0xcc	; 204
   3DEE 02                  191 	.db #0x02	; 2
   3DEF FF                  192 	.db #0xff	; 255
   3DF0 FF                  193 	.db #0xff	; 255
   3DF1 02                  194 	.db #0x02	; 2
   3DF2 FF                  195 	.db #0xff	; 255
   3DF3 02                  196 	.db #0x02	; 2
   3DF4 00                  197 	.db #0x00	; 0
   3DF5 FF                  198 	.db #0xff	; 255
   3DF6 FF                  199 	.db #0xff	; 255
   3DF7 02                  200 	.db #0x02	; 2
   3DF8 0F                  201 	.db #0x0f	; 15
   3DF9 0F                  202 	.db #0x0f	; 15
   3DFA 0B                  203 	.db #0x0b	; 11
   3DFB 0F                  204 	.db #0x0f	; 15
   3DFC 07                  205 	.db #0x07	; 7
   3DFD 0B                  206 	.db #0x0b	; 11
   3DFE C3                  207 	.db #0xc3	; 195
   3DFF C3                  208 	.db #0xc3	; 195
   3E00 83                  209 	.db #0x83	; 131
   3E01 41                  210 	.db #0x41	; 65	'A'
   3E02 C3                  211 	.db #0xc3	; 195
   3E03 02                  212 	.db #0x02	; 2
   3E04 CC                  213 	.db #0xcc	; 204
   3E05 CC                  214 	.db #0xcc	; 204
   3E06 89                  215 	.db #0x89	; 137
   3E07 FF                  216 	.db #0xff	; 255
   3E08 FF                  217 	.db #0xff	; 255
   3E09 AB                  218 	.db #0xab	; 171
   3E0A 00                  219 	.db #0x00	; 0
   3E0B 55                  220 	.db #0x55	; 85	'U'
   3E0C AB                  221 	.db #0xab	; 171
   3E0D 00                  222 	.db #0x00	; 0
   3E0E FF                  223 	.db #0xff	; 255
   3E0F 02                  224 	.db #0x02	; 2
   3E10 05                  225 	.db #0x05	; 5
   3E11 0B                  226 	.db #0x0b	; 11
   3E12 00                  227 	.db #0x00	; 0
   3E13 05                  228 	.db #0x05	; 5
   3E14 0B                  229 	.db #0x0b	; 11
   3E15 00                  230 	.db #0x00	; 0
   3E16 41                  231 	.db #0x41	; 65	'A'
   3E17 83                  232 	.db #0x83	; 131
   3E18 00                  233 	.db #0x00	; 0
   3E19 41                  234 	.db #0x41	; 65	'A'
   3E1A 83                  235 	.db #0x83	; 131
   3E1B 00                  236 	.db #0x00	; 0
   3E1C 44                  237 	.db #0x44	; 68	'D'
   3E1D CC                  238 	.db #0xcc	; 204
   3E1E 02                  239 	.db #0x02	; 2
   3E1F FF                  240 	.db #0xff	; 255
   3E20 FF                  241 	.db #0xff	; 255
   3E21 AB                  242 	.db #0xab	; 171
   3E22 FF                  243 	.db #0xff	; 255
   3E23 57                  244 	.db #0x57	; 87	'W'
   3E24 AB                  245 	.db #0xab	; 171
   3E25 55                  246 	.db #0x55	; 85	'U'
   3E26 FF                  247 	.db #0xff	; 255
   3E27 02                  248 	.db #0x02	; 2
   3E28 0F                  249 	.db #0x0f	; 15
   3E29 0F                  250 	.db #0x0f	; 15
   3E2A 0B                  251 	.db #0x0b	; 11
   3E2B 0F                  252 	.db #0x0f	; 15
   3E2C 07                  253 	.db #0x07	; 7
   3E2D 0B                  254 	.db #0x0b	; 11
   3E2E C3                  255 	.db #0xc3	; 195
   3E2F C3                  256 	.db #0xc3	; 195
   3E30 83                  257 	.db #0x83	; 131
   3E31 41                  258 	.db #0x41	; 65	'A'
   3E32 C3                  259 	.db #0xc3	; 195
   3E33 02                  260 	.db #0x02	; 2
   3E34 44                  261 	.db #0x44	; 68	'D'
   3E35 CC                  262 	.db #0xcc	; 204
   3E36 02                  263 	.db #0x02	; 2
   3E37 FF                  264 	.db #0xff	; 255
   3E38 FF                  265 	.db #0xff	; 255
   3E39 AB                  266 	.db #0xab	; 171
   3E3A FF                  267 	.db #0xff	; 255
   3E3B 57                  268 	.db #0x57	; 87	'W'
   3E3C AB                  269 	.db #0xab	; 171
   3E3D FF                  270 	.db #0xff	; 255
   3E3E FF                  271 	.db #0xff	; 255
   3E3F AB                  272 	.db #0xab	; 171
   3E40 05                  273 	.db #0x05	; 5
   3E41 0F                  274 	.db #0x0f	; 15
   3E42 0B                  275 	.db #0x0b	; 11
   3E43 00                  276 	.db #0x00	; 0
   3E44 05                  277 	.db #0x05	; 5
   3E45 0B                  278 	.db #0x0b	; 11
   3E46 41                  279 	.db #0x41	; 65	'A'
   3E47 C3                  280 	.db #0xc3	; 195
   3E48 83                  281 	.db #0x83	; 131
   3E49 41                  282 	.db #0x41	; 65	'A'
   3E4A C3                  283 	.db #0xc3	; 195
   3E4B 02                  284 	.db #0x02	; 2
   3E4C 00                  285 	.db #0x00	; 0
   3E4D 00                  286 	.db #0x00	; 0
   3E4E 00                  287 	.db #0x00	; 0
   3E4F 55                  288 	.db #0x55	; 85	'U'
   3E50 AB                  289 	.db #0xab	; 171
   3E51 00                  290 	.db #0x00	; 0
   3E52 55                  291 	.db #0x55	; 85	'U'
   3E53 AB                  292 	.db #0xab	; 171
   3E54 00                  293 	.db #0x00	; 0
   3E55 01                  294 	.db #0x01	; 1
   3E56 03                  295 	.db #0x03	; 3
   3E57 00                  296 	.db #0x00	; 0
   3E58 00                  297 	.db #0x00	; 0
   3E59 00                  298 	.db #0x00	; 0
   3E5A 00                  299 	.db #0x00	; 0
   3E5B 05                  300 	.db #0x05	; 5
   3E5C 0B                  301 	.db #0x0b	; 11
   3E5D 00                  302 	.db #0x00	; 0
   3E5E 41                  303 	.db #0x41	; 65	'A'
   3E5F 83                  304 	.db #0x83	; 131
   3E60 00                  305 	.db #0x00	; 0
   3E61 01                  306 	.db #0x01	; 1
   3E62 03                  307 	.db #0x03	; 3
   3E63 00                  308 	.db #0x00	; 0
   3E64 00                  309 	.db #0x00	; 0
   3E65 00                  310 	.db #0x00	; 0
   3E66 00                  311 	.db #0x00	; 0
   3E67 00                  312 	.db #0x00	; 0
   3E68 00                  313 	.db #0x00	; 0
   3E69 00                  314 	.db #0x00	; 0
   3E6A 00                  315 	.db #0x00	; 0
   3E6B 00                  316 	.db #0x00	; 0
   3E6C 00                  317 	.db #0x00	; 0
   3E6D FF                  318 	.db #0xff	; 255
   3E6E FF                  319 	.db #0xff	; 255
   3E6F AB                  320 	.db #0xab	; 171
   3E70 0F                  321 	.db #0x0f	; 15
   3E71 0F                  322 	.db #0x0f	; 15
   3E72 0B                  323 	.db #0x0b	; 11
   3E73 03                  324 	.db #0x03	; 3
   3E74 03                  325 	.db #0x03	; 3
   3E75 03                  326 	.db #0x03	; 3
   3E76 00                  327 	.db #0x00	; 0
   3E77 00                  328 	.db #0x00	; 0
   3E78 00                  329 	.db #0x00	; 0
   3E79 00                  330 	.db #0x00	; 0
   3E7A 00                  331 	.db #0x00	; 0
   3E7B 00                  332 	.db #0x00	; 0
   3E7C 07                  333 	.db #0x07	; 7
   3E7D DD                  334 	.db #0xdd	; 221
   3E7E EB                  335 	.db #0xeb	; 235
   3E7F 57                  336 	.db #0x57	; 87	'W'
   3E80 AF                  337 	.db #0xaf	; 175
   3E81 83                  338 	.db #0x83	; 131
   3E82 5F                  339 	.db #0x5f	; 95
   3E83 4B                  340 	.db #0x4b	; 75	'K'
   3E84 02                  341 	.db #0x02	; 2
   3E85 FF                  342 	.db #0xff	; 255
   3E86 FF                  343 	.db #0xff	; 255
   3E87 AF                  344 	.db #0xaf	; 175
   3E88 5F                  345 	.db #0x5f	; 95
   3E89 FF                  346 	.db #0xff	; 255
   3E8A 4B                  347 	.db #0x4b	; 75	'K'
   3E8B 01                  348 	.db #0x01	; 1
   3E8C AF                  349 	.db #0xaf	; 175
   3E8D 83                  350 	.db #0x83	; 131
   3E8E 57                  351 	.db #0x57	; 87	'W'
   3E8F 4B                  352 	.db #0x4b	; 75	'K'
   3E90 02                  353 	.db #0x02	; 2
   3E91 AF                  354 	.db #0xaf	; 175
   3E92 83                  355 	.db #0x83	; 131
   3E93 00                  356 	.db #0x00	; 0
   3E94 44                  357 	.db #0x44	; 68	'D'
   3E95 89                  358 	.db #0x89	; 137
   3E96 00                  359 	.db #0x00	; 0
   3E97 AB                  360 	.db #0xab	; 171
   3E98 FF                  361 	.db #0xff	; 255
   3E99 02                  362 	.db #0x02	; 2
   3E9A AB                  363 	.db #0xab	; 171
   3E9B FF                  364 	.db #0xff	; 255
   3E9C 02                  365 	.db #0x02	; 2
   3E9D 55                  366 	.db #0x55	; 85	'U'
   3E9E AB                  367 	.db #0xab	; 171
   3E9F 05                  368 	.db #0x05	; 5
   3EA0 0B                  369 	.db #0x0b	; 11
   3EA1 0F                  370 	.db #0x0f	; 15
   3EA2 0B                  371 	.db #0x0b	; 11
   3EA3 0B                  372 	.db #0x0b	; 11
   3EA4 07                  373 	.db #0x07	; 7
   3EA5 02                  374 	.db #0x02	; 2
   3EA6 C3                  375 	.db #0xc3	; 195
   3EA7 C3                  376 	.db #0xc3	; 195
   3EA8 83                  377 	.db #0x83	; 131
   3EA9 41                  378 	.db #0x41	; 65	'A'
   3EAA 83                  379 	.db #0x83	; 131
   3EAB 41                  380 	.db #0x41	; 65	'A'
   3EAC CC                  381 	.db #0xcc	; 204
   3EAD 46                  382 	.db #0x46	; 70	'F'
   3EAE 89                  383 	.db #0x89	; 137
   3EAF FF                  384 	.db #0xff	; 255
   3EB0 57                  385 	.db #0x57	; 87	'W'
   3EB1 AB                  386 	.db #0xab	; 171
   3EB2 FF                  387 	.db #0xff	; 255
   3EB3 57                  388 	.db #0x57	; 87	'W'
   3EB4 AB                  389 	.db #0xab	; 171
   3EB5 FF                  390 	.db #0xff	; 255
   3EB6 57                  391 	.db #0x57	; 87	'W'
   3EB7 AB                  392 	.db #0xab	; 171
   3EB8 0F                  393 	.db #0x0f	; 15
   3EB9 07                  394 	.db #0x07	; 7
   3EBA 0B                  395 	.db #0x0b	; 11
   3EBB 00                  396 	.db #0x00	; 0
   3EBC 00                  397 	.db #0x00	; 0
   3EBD 00                  398 	.db #0x00	; 0
   3EBE C3                  399 	.db #0xc3	; 195
   3EBF 43                  400 	.db #0x43	; 67	'C'
   3EC0 83                  401 	.db #0x83	; 131
   3EC1 C3                  402 	.db #0xc3	; 195
   3EC2 43                  403 	.db #0x43	; 67	'C'
   3EC3 83                  404 	.db #0x83	; 131
   3EC4 44                  405 	.db #0x44	; 68	'D'
   3EC5 CC                  406 	.db #0xcc	; 204
   3EC6 02                  407 	.db #0x02	; 2
   3EC7 FF                  408 	.db #0xff	; 255
   3EC8 FF                  409 	.db #0xff	; 255
   3EC9 AB                  410 	.db #0xab	; 171
   3ECA AB                  411 	.db #0xab	; 171
   3ECB 55                  412 	.db #0x55	; 85	'U'
   3ECC AB                  413 	.db #0xab	; 171
   3ECD 00                  414 	.db #0x00	; 0
   3ECE 55                  415 	.db #0x55	; 85	'U'
   3ECF AB                  416 	.db #0xab	; 171
   3ED0 00                  417 	.db #0x00	; 0
   3ED1 0F                  418 	.db #0x0f	; 15
   3ED2 02                  419 	.db #0x02	; 2
   3ED3 05                  420 	.db #0x05	; 5
   3ED4 0B                  421 	.db #0x0b	; 11
   3ED5 00                  422 	.db #0x00	; 0
   3ED6 00                  423 	.db #0x00	; 0
   3ED7 00                  424 	.db #0x00	; 0
   3ED8 00                  425 	.db #0x00	; 0
   3ED9 41                  426 	.db #0x41	; 65	'A'
   3EDA 83                  427 	.db #0x83	; 131
   3EDB 00                  428 	.db #0x00	; 0
   3EDC 00                  429 	.db #0x00	; 0
   3EDD 00                  430 	.db #0x00	; 0
   3EDE 00                  431 	.db #0x00	; 0
   3EDF 00                  432 	.db #0x00	; 0
   3EE0 00                  433 	.db #0x00	; 0
   3EE1 00                  434 	.db #0x00	; 0
   3EE2 00                  435 	.db #0x00	; 0
   3EE3 00                  436 	.db #0x00	; 0
   3EE4 00                  437 	.db #0x00	; 0
   3EE5 00                  438 	.db #0x00	; 0
   3EE6 00                  439 	.db #0x00	; 0
   3EE7 00                  440 	.db #0x00	; 0
   3EE8 00                  441 	.db #0x00	; 0
   3EE9 00                  442 	.db #0x00	; 0
   3EEA 00                  443 	.db #0x00	; 0
   3EEB 00                  444 	.db #0x00	; 0
   3EEC 00                  445 	.db #0x00	; 0
   3EED 00                  446 	.db #0x00	; 0
   3EEE 00                  447 	.db #0x00	; 0
   3EEF 00                  448 	.db #0x00	; 0
   3EF0 00                  449 	.db #0x00	; 0
   3EF1 00                  450 	.db #0x00	; 0
   3EF2 00                  451 	.db #0x00	; 0
   3EF3 00                  452 	.db #0x00	; 0
   3EF4 44                  453 	.db #0x44	; 68	'D'
   3EF5 CC                  454 	.db #0xcc	; 204
   3EF6 02                  455 	.db #0x02	; 2
   3EF7 FF                  456 	.db #0xff	; 255
   3EF8 FF                  457 	.db #0xff	; 255
   3EF9 AB                  458 	.db #0xab	; 171
   3EFA FF                  459 	.db #0xff	; 255
   3EFB 57                  460 	.db #0x57	; 87	'W'
   3EFC AB                  461 	.db #0xab	; 171
   3EFD FF                  462 	.db #0xff	; 255
   3EFE 57                  463 	.db #0x57	; 87	'W'
   3EFF AB                  464 	.db #0xab	; 171
   3F00 0F                  465 	.db #0x0f	; 15
   3F01 0F                  466 	.db #0x0f	; 15
   3F02 0B                  467 	.db #0x0b	; 11
   3F03 0F                  468 	.db #0x0f	; 15
   3F04 0F                  469 	.db #0x0f	; 15
   3F05 0B                  470 	.db #0x0b	; 11
   3F06 C3                  471 	.db #0xc3	; 195
   3F07 43                  472 	.db #0x43	; 67	'C'
   3F08 83                  473 	.db #0x83	; 131
   3F09 C3                  474 	.db #0xc3	; 195
   3F0A 43                  475 	.db #0x43	; 67	'C'
   3F0B 83                  476 	.db #0x83	; 131
   3F0C CC                  477 	.db #0xcc	; 204
   3F0D CC                  478 	.db #0xcc	; 204
   3F0E 02                  479 	.db #0x02	; 2
   3F0F FF                  480 	.db #0xff	; 255
   3F10 FF                  481 	.db #0xff	; 255
   3F11 AB                  482 	.db #0xab	; 171
   3F12 FF                  483 	.db #0xff	; 255
   3F13 57                  484 	.db #0x57	; 87	'W'
   3F14 AB                  485 	.db #0xab	; 171
   3F15 FF                  486 	.db #0xff	; 255
   3F16 FF                  487 	.db #0xff	; 255
   3F17 02                  488 	.db #0x02	; 2
   3F18 0F                  489 	.db #0x0f	; 15
   3F19 0F                  490 	.db #0x0f	; 15
   3F1A 0B                  491 	.db #0x0b	; 11
   3F1B 0F                  492 	.db #0x0f	; 15
   3F1C 07                  493 	.db #0x07	; 7
   3F1D 0B                  494 	.db #0x0b	; 11
   3F1E C3                  495 	.db #0xc3	; 195
   3F1F C3                  496 	.db #0xc3	; 195
   3F20 83                  497 	.db #0x83	; 131
   3F21 C3                  498 	.db #0xc3	; 195
   3F22 C3                  499 	.db #0xc3	; 195
   3F23 02                  500 	.db #0x02	; 2
   3F24 44                  501 	.db #0x44	; 68	'D'
   3F25 CC                  502 	.db #0xcc	; 204
   3F26 02                  503 	.db #0x02	; 2
   3F27 FF                  504 	.db #0xff	; 255
   3F28 FF                  505 	.db #0xff	; 255
   3F29 AB                  506 	.db #0xab	; 171
   3F2A FF                  507 	.db #0xff	; 255
   3F2B 57                  508 	.db #0x57	; 87	'W'
   3F2C AB                  509 	.db #0xab	; 171
   3F2D FF                  510 	.db #0xff	; 255
   3F2E 02                  511 	.db #0x02	; 2
   3F2F 00                  512 	.db #0x00	; 0
   3F30 0F                  513 	.db #0x0f	; 15
   3F31 02                  514 	.db #0x02	; 2
   3F32 00                  515 	.db #0x00	; 0
   3F33 0F                  516 	.db #0x0f	; 15
   3F34 07                  517 	.db #0x07	; 7
   3F35 0B                  518 	.db #0x0b	; 11
   3F36 C3                  519 	.db #0xc3	; 195
   3F37 C3                  520 	.db #0xc3	; 195
   3F38 83                  521 	.db #0x83	; 131
   3F39 41                  522 	.db #0x41	; 65	'A'
   3F3A C3                  523 	.db #0xc3	; 195
   3F3B 02                  524 	.db #0x02	; 2
   3F3C CC                  525 	.db #0xcc	; 204
   3F3D 89                  526 	.db #0x89	; 137
   3F3E 00                  527 	.db #0x00	; 0
   3F3F FF                  528 	.db #0xff	; 255
   3F40 FF                  529 	.db #0xff	; 255
   3F41 02                  530 	.db #0x02	; 2
   3F42 FF                  531 	.db #0xff	; 255
   3F43 57                  532 	.db #0x57	; 87	'W'
   3F44 AB                  533 	.db #0xab	; 171
   3F45 FF                  534 	.db #0xff	; 255
   3F46 57                  535 	.db #0x57	; 87	'W'
   3F47 AB                  536 	.db #0xab	; 171
   3F48 0F                  537 	.db #0x0f	; 15
   3F49 07                  538 	.db #0x07	; 7
   3F4A 0B                  539 	.db #0x0b	; 11
   3F4B 0F                  540 	.db #0x0f	; 15
   3F4C 07                  541 	.db #0x07	; 7
   3F4D 0B                  542 	.db #0x0b	; 11
   3F4E C3                  543 	.db #0xc3	; 195
   3F4F C3                  544 	.db #0xc3	; 195
   3F50 02                  545 	.db #0x02	; 2
   3F51 C3                  546 	.db #0xc3	; 195
   3F52 83                  547 	.db #0x83	; 131
   3F53 00                  548 	.db #0x00	; 0
   3F54 CC                  549 	.db #0xcc	; 204
   3F55 CC                  550 	.db #0xcc	; 204
   3F56 89                  551 	.db #0x89	; 137
   3F57 FF                  552 	.db #0xff	; 255
   3F58 FF                  553 	.db #0xff	; 255
   3F59 AB                  554 	.db #0xab	; 171
   3F5A FF                  555 	.db #0xff	; 255
   3F5B 02                  556 	.db #0x02	; 2
   3F5C 00                  557 	.db #0x00	; 0
   3F5D FF                  558 	.db #0xff	; 255
   3F5E FF                  559 	.db #0xff	; 255
   3F5F 02                  560 	.db #0x02	; 2
   3F60 0F                  561 	.db #0x0f	; 15
   3F61 0F                  562 	.db #0x0f	; 15
   3F62 02                  563 	.db #0x02	; 2
   3F63 0F                  564 	.db #0x0f	; 15
   3F64 02                  565 	.db #0x02	; 2
   3F65 00                  566 	.db #0x00	; 0
   3F66 C3                  567 	.db #0xc3	; 195
   3F67 C3                  568 	.db #0xc3	; 195
   3F68 83                  569 	.db #0x83	; 131
   3F69 C3                  570 	.db #0xc3	; 195
   3F6A C3                  571 	.db #0xc3	; 195
   3F6B 83                  572 	.db #0x83	; 131
   3F6C CC                  573 	.db #0xcc	; 204
   3F6D CC                  574 	.db #0xcc	; 204
   3F6E 89                  575 	.db #0x89	; 137
   3F6F FF                  576 	.db #0xff	; 255
   3F70 FF                  577 	.db #0xff	; 255
   3F71 AB                  578 	.db #0xab	; 171
   3F72 FF                  579 	.db #0xff	; 255
   3F73 02                  580 	.db #0x02	; 2
   3F74 00                  581 	.db #0x00	; 0
   3F75 FF                  582 	.db #0xff	; 255
   3F76 FF                  583 	.db #0xff	; 255
   3F77 02                  584 	.db #0x02	; 2
   3F78 0F                  585 	.db #0x0f	; 15
   3F79 0F                  586 	.db #0x0f	; 15
   3F7A 02                  587 	.db #0x02	; 2
   3F7B 0F                  588 	.db #0x0f	; 15
   3F7C 02                  589 	.db #0x02	; 2
   3F7D 00                  590 	.db #0x00	; 0
   3F7E C3                  591 	.db #0xc3	; 195
   3F7F 02                  592 	.db #0x02	; 2
   3F80 00                  593 	.db #0x00	; 0
   3F81 C3                  594 	.db #0xc3	; 195
   3F82 02                  595 	.db #0x02	; 2
   3F83 00                  596 	.db #0x00	; 0
   3F84 44                  597 	.db #0x44	; 68	'D'
   3F85 CC                  598 	.db #0xcc	; 204
   3F86 02                  599 	.db #0x02	; 2
   3F87 FF                  600 	.db #0xff	; 255
   3F88 FF                  601 	.db #0xff	; 255
   3F89 AB                  602 	.db #0xab	; 171
   3F8A FF                  603 	.db #0xff	; 255
   3F8B 57                  604 	.db #0x57	; 87	'W'
   3F8C AB                  605 	.db #0xab	; 171
   3F8D FF                  606 	.db #0xff	; 255
   3F8E 02                  607 	.db #0x02	; 2
   3F8F 00                  608 	.db #0x00	; 0
   3F90 0F                  609 	.db #0x0f	; 15
   3F91 07                  610 	.db #0x07	; 7
   3F92 0B                  611 	.db #0x0b	; 11
   3F93 0F                  612 	.db #0x0f	; 15
   3F94 02                  613 	.db #0x02	; 2
   3F95 0B                  614 	.db #0x0b	; 11
   3F96 C3                  615 	.db #0xc3	; 195
   3F97 C3                  616 	.db #0xc3	; 195
   3F98 83                  617 	.db #0x83	; 131
   3F99 41                  618 	.db #0x41	; 65	'A'
   3F9A C3                  619 	.db #0xc3	; 195
   3F9B 02                  620 	.db #0x02	; 2
   3F9C CC                  621 	.db #0xcc	; 204
   3F9D 46                  622 	.db #0x46	; 70	'F'
   3F9E 89                  623 	.db #0x89	; 137
   3F9F FF                  624 	.db #0xff	; 255
   3FA0 57                  625 	.db #0x57	; 87	'W'
   3FA1 AB                  626 	.db #0xab	; 171
   3FA2 FF                  627 	.db #0xff	; 255
   3FA3 57                  628 	.db #0x57	; 87	'W'
   3FA4 AB                  629 	.db #0xab	; 171
   3FA5 FF                  630 	.db #0xff	; 255
   3FA6 FF                  631 	.db #0xff	; 255
   3FA7 AB                  632 	.db #0xab	; 171
   3FA8 0F                  633 	.db #0x0f	; 15
   3FA9 0F                  634 	.db #0x0f	; 15
   3FAA 0B                  635 	.db #0x0b	; 11
   3FAB 0F                  636 	.db #0x0f	; 15
   3FAC 03                  637 	.db #0x03	; 3
   3FAD 0B                  638 	.db #0x0b	; 11
   3FAE C3                  639 	.db #0xc3	; 195
   3FAF 43                  640 	.db #0x43	; 67	'C'
   3FB0 83                  641 	.db #0x83	; 131
   3FB1 C3                  642 	.db #0xc3	; 195
   3FB2 43                  643 	.db #0x43	; 67	'C'
   3FB3 83                  644 	.db #0x83	; 131
   3FB4 44                  645 	.db #0x44	; 68	'D'
   3FB5 CC                  646 	.db #0xcc	; 204
   3FB6 89                  647 	.db #0x89	; 137
   3FB7 55                  648 	.db #0x55	; 85	'U'
   3FB8 FF                  649 	.db #0xff	; 255
   3FB9 AB                  650 	.db #0xab	; 171
   3FBA 00                  651 	.db #0x00	; 0
   3FBB AB                  652 	.db #0xab	; 171
   3FBC 02                  653 	.db #0x02	; 2
   3FBD 00                  654 	.db #0x00	; 0
   3FBE FF                  655 	.db #0xff	; 255
   3FBF 02                  656 	.db #0x02	; 2
   3FC0 00                  657 	.db #0x00	; 0
   3FC1 0F                  658 	.db #0x0f	; 15
   3FC2 02                  659 	.db #0x02	; 2
   3FC3 00                  660 	.db #0x00	; 0
   3FC4 0F                  661 	.db #0x0f	; 15
   3FC5 02                  662 	.db #0x02	; 2
   3FC6 41                  663 	.db #0x41	; 65	'A'
   3FC7 C3                  664 	.db #0xc3	; 195
   3FC8 83                  665 	.db #0x83	; 131
   3FC9 41                  666 	.db #0x41	; 65	'A'
   3FCA C3                  667 	.db #0xc3	; 195
   3FCB 83                  668 	.db #0x83	; 131
   3FCC 00                  669 	.db #0x00	; 0
   3FCD 44                  670 	.db #0x44	; 68	'D'
   3FCE 89                  671 	.db #0x89	; 137
   3FCF 00                  672 	.db #0x00	; 0
   3FD0 55                  673 	.db #0x55	; 85	'U'
   3FD1 AB                  674 	.db #0xab	; 171
   3FD2 00                  675 	.db #0x00	; 0
   3FD3 55                  676 	.db #0x55	; 85	'U'
   3FD4 AB                  677 	.db #0xab	; 171
   3FD5 00                  678 	.db #0x00	; 0
   3FD6 55                  679 	.db #0x55	; 85	'U'
   3FD7 AB                  680 	.db #0xab	; 171
   3FD8 0F                  681 	.db #0x0f	; 15
   3FD9 07                  682 	.db #0x07	; 7
   3FDA 0B                  683 	.db #0x0b	; 11
   3FDB 0F                  684 	.db #0x0f	; 15
   3FDC 07                  685 	.db #0x07	; 7
   3FDD 0B                  686 	.db #0x0b	; 11
   3FDE C3                  687 	.db #0xc3	; 195
   3FDF C3                  688 	.db #0xc3	; 195
   3FE0 83                  689 	.db #0x83	; 131
   3FE1 41                  690 	.db #0x41	; 65	'A'
   3FE2 C3                  691 	.db #0xc3	; 195
   3FE3 02                  692 	.db #0x02	; 2
   3FE4 CC                  693 	.db #0xcc	; 204
   3FE5 46                  694 	.db #0x46	; 70	'F'
   3FE6 89                  695 	.db #0x89	; 137
   3FE7 FF                  696 	.db #0xff	; 255
   3FE8 57                  697 	.db #0x57	; 87	'W'
   3FE9 AB                  698 	.db #0xab	; 171
   3FEA FF                  699 	.db #0xff	; 255
   3FEB 57                  700 	.db #0x57	; 87	'W'
   3FEC 02                  701 	.db #0x02	; 2
   3FED FF                  702 	.db #0xff	; 255
   3FEE AB                  703 	.db #0xab	; 171
   3FEF 00                  704 	.db #0x00	; 0
   3FF0 0F                  705 	.db #0x0f	; 15
   3FF1 0B                  706 	.db #0x0b	; 11
   3FF2 00                  707 	.db #0x00	; 0
   3FF3 0F                  708 	.db #0x0f	; 15
   3FF4 07                  709 	.db #0x07	; 7
   3FF5 02                  710 	.db #0x02	; 2
   3FF6 C3                  711 	.db #0xc3	; 195
   3FF7 43                  712 	.db #0x43	; 67	'C'
   3FF8 83                  713 	.db #0x83	; 131
   3FF9 C3                  714 	.db #0xc3	; 195
   3FFA 43                  715 	.db #0x43	; 67	'C'
   3FFB 83                  716 	.db #0x83	; 131
   3FFC CC                  717 	.db #0xcc	; 204
   3FFD 02                  718 	.db #0x02	; 2
   3FFE 00                  719 	.db #0x00	; 0
   3FFF FF                  720 	.db #0xff	; 255
   4000 02                  721 	.db #0x02	; 2
   4001 00                  722 	.db #0x00	; 0
   4002 FF                  723 	.db #0xff	; 255
   4003 02                  724 	.db #0x02	; 2
   4004 00                  725 	.db #0x00	; 0
   4005 FF                  726 	.db #0xff	; 255
   4006 02                  727 	.db #0x02	; 2
   4007 00                  728 	.db #0x00	; 0
   4008 0F                  729 	.db #0x0f	; 15
   4009 02                  730 	.db #0x02	; 2
   400A 00                  731 	.db #0x00	; 0
   400B 0F                  732 	.db #0x0f	; 15
   400C 02                  733 	.db #0x02	; 2
   400D 00                  734 	.db #0x00	; 0
   400E C3                  735 	.db #0xc3	; 195
   400F C3                  736 	.db #0xc3	; 195
   4010 83                  737 	.db #0x83	; 131
   4011 C3                  738 	.db #0xc3	; 195
   4012 C3                  739 	.db #0xc3	; 195
   4013 83                  740 	.db #0x83	; 131
   4014 89                  741 	.db #0x89	; 137
   4015 00                  742 	.db #0x00	; 0
   4016 89                  743 	.db #0x89	; 137
   4017 FF                  744 	.db #0xff	; 255
   4018 57                  745 	.db #0x57	; 87	'W'
   4019 AB                  746 	.db #0xab	; 171
   401A FF                  747 	.db #0xff	; 255
   401B FF                  748 	.db #0xff	; 255
   401C AB                  749 	.db #0xab	; 171
   401D AB                  750 	.db #0xab	; 171
   401E AB                  751 	.db #0xab	; 171
   401F AB                  752 	.db #0xab	; 171
   4020 0B                  753 	.db #0x0b	; 11
   4021 0B                  754 	.db #0x0b	; 11
   4022 0B                  755 	.db #0x0b	; 11
   4023 0B                  756 	.db #0x0b	; 11
   4024 00                  757 	.db #0x00	; 0
   4025 0B                  758 	.db #0x0b	; 11
   4026 83                  759 	.db #0x83	; 131
   4027 00                  760 	.db #0x00	; 0
   4028 83                  761 	.db #0x83	; 131
   4029 83                  762 	.db #0x83	; 131
   402A 00                  763 	.db #0x00	; 0
   402B 83                  764 	.db #0x83	; 131
   402C 89                  765 	.db #0x89	; 137
   402D 44                  766 	.db #0x44	; 68	'D'
   402E 89                  767 	.db #0x89	; 137
   402F AB                  768 	.db #0xab	; 171
   4030 55                  769 	.db #0x55	; 85	'U'
   4031 AB                  770 	.db #0xab	; 171
   4032 FF                  771 	.db #0xff	; 255
   4033 57                  772 	.db #0x57	; 87	'W'
   4034 AB                  773 	.db #0xab	; 171
   4035 FF                  774 	.db #0xff	; 255
   4036 FF                  775 	.db #0xff	; 255
   4037 AB                  776 	.db #0xab	; 171
   4038 0B                  777 	.db #0x0b	; 11
   4039 0F                  778 	.db #0x0f	; 15
   403A 0B                  779 	.db #0x0b	; 11
   403B 0B                  780 	.db #0x0b	; 11
   403C 05                  781 	.db #0x05	; 5
   403D 0B                  782 	.db #0x0b	; 11
   403E 83                  783 	.db #0x83	; 131
   403F 41                  784 	.db #0x41	; 65	'A'
   4040 83                  785 	.db #0x83	; 131
   4041 83                  786 	.db #0x83	; 131
   4042 41                  787 	.db #0x41	; 65	'A'
   4043 83                  788 	.db #0x83	; 131
   4044 44                  789 	.db #0x44	; 68	'D'
   4045 CC                  790 	.db #0xcc	; 204
   4046 02                  791 	.db #0x02	; 2
   4047 FF                  792 	.db #0xff	; 255
   4048 FF                  793 	.db #0xff	; 255
   4049 AB                  794 	.db #0xab	; 171
   404A FF                  795 	.db #0xff	; 255
   404B 57                  796 	.db #0x57	; 87	'W'
   404C AB                  797 	.db #0xab	; 171
   404D FF                  798 	.db #0xff	; 255
   404E 57                  799 	.db #0x57	; 87	'W'
   404F AB                  800 	.db #0xab	; 171
   4050 0F                  801 	.db #0x0f	; 15
   4051 07                  802 	.db #0x07	; 7
   4052 0B                  803 	.db #0x0b	; 11
   4053 0F                  804 	.db #0x0f	; 15
   4054 07                  805 	.db #0x07	; 7
   4055 0B                  806 	.db #0x0b	; 11
   4056 C3                  807 	.db #0xc3	; 195
   4057 C3                  808 	.db #0xc3	; 195
   4058 83                  809 	.db #0x83	; 131
   4059 41                  810 	.db #0x41	; 65	'A'
   405A C3                  811 	.db #0xc3	; 195
   405B 02                  812 	.db #0x02	; 2
   405C CC                  813 	.db #0xcc	; 204
   405D CC                  814 	.db #0xcc	; 204
   405E 02                  815 	.db #0x02	; 2
   405F FF                  816 	.db #0xff	; 255
   4060 FF                  817 	.db #0xff	; 255
   4061 AB                  818 	.db #0xab	; 171
   4062 FF                  819 	.db #0xff	; 255
   4063 57                  820 	.db #0x57	; 87	'W'
   4064 AB                  821 	.db #0xab	; 171
   4065 FF                  822 	.db #0xff	; 255
   4066 FF                  823 	.db #0xff	; 255
   4067 AB                  824 	.db #0xab	; 171
   4068 0F                  825 	.db #0x0f	; 15
   4069 0F                  826 	.db #0x0f	; 15
   406A 02                  827 	.db #0x02	; 2
   406B 0B                  828 	.db #0x0b	; 11
   406C 02                  829 	.db #0x02	; 2
   406D 00                  830 	.db #0x00	; 0
   406E C3                  831 	.db #0xc3	; 195
   406F 02                  832 	.db #0x02	; 2
   4070 00                  833 	.db #0x00	; 0
   4071 C3                  834 	.db #0xc3	; 195
   4072 02                  835 	.db #0x02	; 2
   4073 00                  836 	.db #0x00	; 0
   4074 44                  837 	.db #0x44	; 68	'D'
   4075 CC                  838 	.db #0xcc	; 204
   4076 02                  839 	.db #0x02	; 2
   4077 FF                  840 	.db #0xff	; 255
   4078 FF                  841 	.db #0xff	; 255
   4079 AB                  842 	.db #0xab	; 171
   407A FF                  843 	.db #0xff	; 255
   407B 02                  844 	.db #0x02	; 2
   407C AB                  845 	.db #0xab	; 171
   407D FF                  846 	.db #0xff	; 255
   407E 02                  847 	.db #0x02	; 2
   407F AB                  848 	.db #0xab	; 171
   4080 0F                  849 	.db #0x0f	; 15
   4081 02                  850 	.db #0x02	; 2
   4082 0B                  851 	.db #0x0b	; 11
   4083 0F                  852 	.db #0x0f	; 15
   4084 07                  853 	.db #0x07	; 7
   4085 0B                  854 	.db #0x0b	; 11
   4086 C3                  855 	.db #0xc3	; 195
   4087 C3                  856 	.db #0xc3	; 195
   4088 83                  857 	.db #0x83	; 131
   4089 41                  858 	.db #0x41	; 65	'A'
   408A C3                  859 	.db #0xc3	; 195
   408B C3                  860 	.db #0xc3	; 195
   408C CC                  861 	.db #0xcc	; 204
   408D CC                  862 	.db #0xcc	; 204
   408E 02                  863 	.db #0x02	; 2
   408F FF                  864 	.db #0xff	; 255
   4090 FF                  865 	.db #0xff	; 255
   4091 AB                  866 	.db #0xab	; 171
   4092 FF                  867 	.db #0xff	; 255
   4093 57                  868 	.db #0x57	; 87	'W'
   4094 AB                  869 	.db #0xab	; 171
   4095 FF                  870 	.db #0xff	; 255
   4096 FF                  871 	.db #0xff	; 255
   4097 AB                  872 	.db #0xab	; 171
   4098 0F                  873 	.db #0x0f	; 15
   4099 0F                  874 	.db #0x0f	; 15
   409A 02                  875 	.db #0x02	; 2
   409B 0B                  876 	.db #0x0b	; 11
   409C 0B                  877 	.db #0x0b	; 11
   409D 00                  878 	.db #0x00	; 0
   409E C3                  879 	.db #0xc3	; 195
   409F 43                  880 	.db #0x43	; 67	'C'
   40A0 02                  881 	.db #0x02	; 2
   40A1 C3                  882 	.db #0xc3	; 195
   40A2 43                  883 	.db #0x43	; 67	'C'
   40A3 83                  884 	.db #0x83	; 131
   40A4 44                  885 	.db #0x44	; 68	'D'
   40A5 CC                  886 	.db #0xcc	; 204
   40A6 89                  887 	.db #0x89	; 137
   40A7 FF                  888 	.db #0xff	; 255
   40A8 FF                  889 	.db #0xff	; 255
   40A9 AB                  890 	.db #0xab	; 171
   40AA FF                  891 	.db #0xff	; 255
   40AB 02                  892 	.db #0x02	; 2
   40AC 00                  893 	.db #0x00	; 0
   40AD FF                  894 	.db #0xff	; 255
   40AE FF                  895 	.db #0xff	; 255
   40AF 02                  896 	.db #0x02	; 2
   40B0 05                  897 	.db #0x05	; 5
   40B1 0F                  898 	.db #0x0f	; 15
   40B2 0B                  899 	.db #0x0b	; 11
   40B3 00                  900 	.db #0x00	; 0
   40B4 05                  901 	.db #0x05	; 5
   40B5 0B                  902 	.db #0x0b	; 11
   40B6 C3                  903 	.db #0xc3	; 195
   40B7 C3                  904 	.db #0xc3	; 195
   40B8 83                  905 	.db #0x83	; 131
   40B9 C3                  906 	.db #0xc3	; 195
   40BA C3                  907 	.db #0xc3	; 195
   40BB 02                  908 	.db #0x02	; 2
   40BC CC                  909 	.db #0xcc	; 204
   40BD CC                  910 	.db #0xcc	; 204
   40BE 89                  911 	.db #0x89	; 137
   40BF FF                  912 	.db #0xff	; 255
   40C0 FF                  913 	.db #0xff	; 255
   40C1 AB                  914 	.db #0xab	; 171
   40C2 00                  915 	.db #0x00	; 0
   40C3 AB                  916 	.db #0xab	; 171
   40C4 02                  917 	.db #0x02	; 2
   40C5 00                  918 	.db #0x00	; 0
   40C6 FF                  919 	.db #0xff	; 255
   40C7 02                  920 	.db #0x02	; 2
   40C8 00                  921 	.db #0x00	; 0
   40C9 0F                  922 	.db #0x0f	; 15
   40CA 02                  923 	.db #0x02	; 2
   40CB 00                  924 	.db #0x00	; 0
   40CC 0F                  925 	.db #0x0f	; 15
   40CD 02                  926 	.db #0x02	; 2
   40CE 00                  927 	.db #0x00	; 0
   40CF C3                  928 	.db #0xc3	; 195
   40D0 02                  929 	.db #0x02	; 2
   40D1 00                  930 	.db #0x00	; 0
   40D2 C3                  931 	.db #0xc3	; 195
   40D3 02                  932 	.db #0x02	; 2
   40D4 CC                  933 	.db #0xcc	; 204
   40D5 46                  934 	.db #0x46	; 70	'F'
   40D6 89                  935 	.db #0x89	; 137
   40D7 FF                  936 	.db #0xff	; 255
   40D8 57                  937 	.db #0x57	; 87	'W'
   40D9 AB                  938 	.db #0xab	; 171
   40DA FF                  939 	.db #0xff	; 255
   40DB 57                  940 	.db #0x57	; 87	'W'
   40DC AB                  941 	.db #0xab	; 171
   40DD FF                  942 	.db #0xff	; 255
   40DE 57                  943 	.db #0x57	; 87	'W'
   40DF AB                  944 	.db #0xab	; 171
   40E0 0F                  945 	.db #0x0f	; 15
   40E1 07                  946 	.db #0x07	; 7
   40E2 0B                  947 	.db #0x0b	; 11
   40E3 0F                  948 	.db #0x0f	; 15
   40E4 07                  949 	.db #0x07	; 7
   40E5 0B                  950 	.db #0x0b	; 11
   40E6 C3                  951 	.db #0xc3	; 195
   40E7 C3                  952 	.db #0xc3	; 195
   40E8 83                  953 	.db #0x83	; 131
   40E9 41                  954 	.db #0x41	; 65	'A'
   40EA C3                  955 	.db #0xc3	; 195
   40EB 02                  956 	.db #0x02	; 2
   40EC CC                  957 	.db #0xcc	; 204
   40ED 46                  958 	.db #0x46	; 70	'F'
   40EE 89                  959 	.db #0x89	; 137
   40EF FF                  960 	.db #0xff	; 255
   40F0 57                  961 	.db #0x57	; 87	'W'
   40F1 AB                  962 	.db #0xab	; 171
   40F2 FF                  963 	.db #0xff	; 255
   40F3 57                  964 	.db #0x57	; 87	'W'
   40F4 AB                  965 	.db #0xab	; 171
   40F5 FF                  966 	.db #0xff	; 255
   40F6 57                  967 	.db #0x57	; 87	'W'
   40F7 AB                  968 	.db #0xab	; 171
   40F8 0F                  969 	.db #0x0f	; 15
   40F9 07                  970 	.db #0x07	; 7
   40FA 0B                  971 	.db #0x0b	; 11
   40FB 05                  972 	.db #0x05	; 5
   40FC 07                  973 	.db #0x07	; 7
   40FD 02                  974 	.db #0x02	; 2
   40FE 41                  975 	.db #0x41	; 65	'A'
   40FF C3                  976 	.db #0xc3	; 195
   4100 02                  977 	.db #0x02	; 2
   4101 00                  978 	.db #0x00	; 0
   4102 83                  979 	.db #0x83	; 131
   4103 00                  980 	.db #0x00	; 0
   4104 89                  981 	.db #0x89	; 137
   4105 00                  982 	.db #0x00	; 0
   4106 89                  983 	.db #0x89	; 137
   4107 AB                  984 	.db #0xab	; 171
   4108 00                  985 	.db #0x00	; 0
   4109 AB                  986 	.db #0xab	; 171
   410A AB                  987 	.db #0xab	; 171
   410B 00                  988 	.db #0x00	; 0
   410C AB                  989 	.db #0xab	; 171
   410D AB                  990 	.db #0xab	; 171
   410E AB                  991 	.db #0xab	; 171
   410F AB                  992 	.db #0xab	; 171
   4110 0B                  993 	.db #0x0b	; 11
   4111 0B                  994 	.db #0x0b	; 11
   4112 0B                  995 	.db #0x0b	; 11
   4113 0F                  996 	.db #0x0f	; 15
   4114 0F                  997 	.db #0x0f	; 15
   4115 0B                  998 	.db #0x0b	; 11
   4116 C3                  999 	.db #0xc3	; 195
   4117 C3                 1000 	.db #0xc3	; 195
   4118 83                 1001 	.db #0x83	; 131
   4119 41                 1002 	.db #0x41	; 65	'A'
   411A 43                 1003 	.db #0x43	; 67	'C'
   411B 02                 1004 	.db #0x02	; 2
   411C CC                 1005 	.db #0xcc	; 204
   411D 46                 1006 	.db #0x46	; 70	'F'
   411E 89                 1007 	.db #0x89	; 137
   411F FF                 1008 	.db #0xff	; 255
   4120 57                 1009 	.db #0x57	; 87	'W'
   4121 AB                 1010 	.db #0xab	; 171
   4122 55                 1011 	.db #0x55	; 85	'U'
   4123 FF                 1012 	.db #0xff	; 255
   4124 02                 1013 	.db #0x02	; 2
   4125 00                 1014 	.db #0x00	; 0
   4126 AB                 1015 	.db #0xab	; 171
   4127 00                 1016 	.db #0x00	; 0
   4128 05                 1017 	.db #0x05	; 5
   4129 0F                 1018 	.db #0x0f	; 15
   412A 02                 1019 	.db #0x02	; 2
   412B 0F                 1020 	.db #0x0f	; 15
   412C 07                 1021 	.db #0x07	; 7
   412D 0B                 1022 	.db #0x0b	; 11
   412E C3                 1023 	.db #0xc3	; 195
   412F 43                 1024 	.db #0x43	; 67	'C'
   4130 83                 1025 	.db #0x83	; 131
   4131 C3                 1026 	.db #0xc3	; 195
   4132 43                 1027 	.db #0x43	; 67	'C'
   4133 83                 1028 	.db #0x83	; 131
   4134 CC                 1029 	.db #0xcc	; 204
   4135 46                 1030 	.db #0x46	; 70	'F'
   4136 89                 1031 	.db #0x89	; 137
   4137 FF                 1032 	.db #0xff	; 255
   4138 57                 1033 	.db #0x57	; 87	'W'
   4139 AB                 1034 	.db #0xab	; 171
   413A FF                 1035 	.db #0xff	; 255
   413B 57                 1036 	.db #0x57	; 87	'W'
   413C AB                 1037 	.db #0xab	; 171
   413D 55                 1038 	.db #0x55	; 85	'U'
   413E FF                 1039 	.db #0xff	; 255
   413F 02                 1040 	.db #0x02	; 2
   4140 05                 1041 	.db #0x05	; 5
   4141 0F                 1042 	.db #0x0f	; 15
   4142 02                 1043 	.db #0x02	; 2
   4143 00                 1044 	.db #0x00	; 0
   4144 0B                 1045 	.db #0x0b	; 11
   4145 00                 1046 	.db #0x00	; 0
   4146 00                 1047 	.db #0x00	; 0
   4147 83                 1048 	.db #0x83	; 131
   4148 00                 1049 	.db #0x00	; 0
   4149 00                 1050 	.db #0x00	; 0
   414A 83                 1051 	.db #0x83	; 131
   414B 00                 1052 	.db #0x00	; 0
   414C CC                 1053 	.db #0xcc	; 204
   414D CC                 1054 	.db #0xcc	; 204
   414E 89                 1055 	.db #0x89	; 137
   414F FF                 1056 	.db #0xff	; 255
   4150 FF                 1057 	.db #0xff	; 255
   4151 AB                 1058 	.db #0xab	; 171
   4152 00                 1059 	.db #0x00	; 0
   4153 55                 1060 	.db #0x55	; 85	'U'
   4154 AB                 1061 	.db #0xab	; 171
   4155 00                 1062 	.db #0x00	; 0
   4156 FF                 1063 	.db #0xff	; 255
   4157 02                 1064 	.db #0x02	; 2
   4158 05                 1065 	.db #0x05	; 5
   4159 0B                 1066 	.db #0x0b	; 11
   415A 00                 1067 	.db #0x00	; 0
   415B 0F                 1068 	.db #0x0f	; 15
   415C 02                 1069 	.db #0x02	; 2
   415D 00                 1070 	.db #0x00	; 0
   415E C3                 1071 	.db #0xc3	; 195
   415F C3                 1072 	.db #0xc3	; 195
   4160 83                 1073 	.db #0x83	; 131
   4161 C3                 1074 	.db #0xc3	; 195
   4162 C3                 1075 	.db #0xc3	; 195
   4163 83                 1076 	.db #0x83	; 131
   4164 00                 1077 	.db #0x00	; 0
   4165 00                 1078 	.db #0x00	; 0
   4166 00                 1079 	.db #0x00	; 0
   4167 00                 1080 	.db #0x00	; 0
   4168 00                 1081 	.db #0x00	; 0
   4169 00                 1082 	.db #0x00	; 0
   416A 00                 1083 	.db #0x00	; 0
   416B 00                 1084 	.db #0x00	; 0
   416C 00                 1085 	.db #0x00	; 0
   416D 00                 1086 	.db #0x00	; 0
   416E 00                 1087 	.db #0x00	; 0
   416F 00                 1088 	.db #0x00	; 0
   4170 05                 1089 	.db #0x05	; 5
   4171 0B                 1090 	.db #0x0b	; 11
   4172 00                 1091 	.db #0x00	; 0
   4173 05                 1092 	.db #0x05	; 5
   4174 0B                 1093 	.db #0x0b	; 11
   4175 00                 1094 	.db #0x00	; 0
   4176 41                 1095 	.db #0x41	; 65	'A'
   4177 02                 1096 	.db #0x02	; 2
   4178 00                 1097 	.db #0x00	; 0
   4179 41                 1098 	.db #0x41	; 65	'A'
   417A 02                 1099 	.db #0x02	; 2
   417B 00                 1100 	.db #0x00	; 0
                           1101 	.area _INITIALIZER
                           1102 	.area _CABS (ABS)
