                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.6.8 #9946 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module main
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _main
                             12 	.globl _InitValues
                             13 	.globl _StartMenu
                             14 	.globl _PrintObjInfo
                             15 	.globl _PrintStartMenu
                             16 	.globl _EnemyLoop
                             17 	.globl _CheckEnemyCollision
                             18 	.globl _SetEnemies
                             19 	.globl _SetEnemyParams
                             20 	.globl _MoveEnemy
                             21 	.globl _MakeWizardAnim
                             22 	.globl _WizardAnim
                             23 	.globl _PrintWizard
                             24 	.globl _MoveShot
                             25 	.globl _PrintShot
                             26 	.globl _DeleteShot
                             27 	.globl _MakeShot
                             28 	.globl _CheckDuel
                             29 	.globl _ExplodePlayerInDuel
                             30 	.globl _PlayerLoop
                             31 	.globl _RunStatus
                             32 	.globl _Walk
                             33 	.globl _WalkAnim
                             34 	.globl _Stop
                             35 	.globl _WalkIn
                             36 	.globl _MoveRight
                             37 	.globl _MoveLeft
                             38 	.globl _MoveDown
                             39 	.globl _MoveUp
                             40 	.globl _ExplodeSprite
                             41 	.globl _PrintExplosion
                             42 	.globl _SelectFrame
                             43 	.globl _AssignFrame
                             44 	.globl _DeleteSprite
                             45 	.globl _CheckActiveTile
                             46 	.globl _CompareKeys
                             47 	.globl _PrintKey
                             48 	.globl _AddObjectToScoreboard
                             49 	.globl _SetObject
                             50 	.globl _ReprintObject
                             51 	.globl _ObjectCollision
                             52 	.globl _CheckObject
                             53 	.globl _PrintObjectInStore
                             54 	.globl _DeleteObjectInStore
                             55 	.globl _PrintCoin
                             56 	.globl _PrintDust
                             57 	.globl _DeleteObject
                             58 	.globl _ResetObjData
                             59 	.globl _RefreshScoreboard
                             60 	.globl _InitScoreboard
                             61 	.globl _RefreshHighScore
                             62 	.globl _RedefineKey
                             63 	.globl _Wait4Key
                             64 	.globl _ReturnKeyPressed
                             65 	.globl _PrintTip
                             66 	.globl _PrintEndGame
                             67 	.globl _PrintLevelInfo
                             68 	.globl _PrintSmallBlueBox
                             69 	.globl _PrintFrame
                             70 	.globl _PrintText
                             71 	.globl _PrintNumber
                             72 	.globl _PrintMap
                             73 	.globl _OnBackground
                             74 	.globl _GetTileNum
                             75 	.globl _ClearScreen
                             76 	.globl _Interrupt
                             77 	.globl _Pause
                             78 	.globl _Itoa
                             79 	.globl _Strlen
                             80 	.globl _Abs
                             81 	.globl _cpct_zx7b_decrunch_s
                             82 	.globl _cpct_etm_setTileset2x4
                             83 	.globl _cpct_etm_drawTileBox2x4
                             84 	.globl _cpct_setSeed_lcg_u8
                             85 	.globl _cpct_getRandom_lcg_u8
                             86 	.globl _cpct_getScreenPtr
                             87 	.globl _cpct_setPALColour
                             88 	.globl _cpct_setPalette
                             89 	.globl _cpct_waitVSYNC
                             90 	.globl _cpct_setVideoMode
                             91 	.globl _cpct_drawSpriteMaskedAlignedTable
                             92 	.globl _cpct_drawSprite
                             93 	.globl _cpct_drawSolidBox
                             94 	.globl _cpct_px2byteM0
                             95 	.globl _cpct_isAnyKeyPressed
                             96 	.globl _cpct_isKeyPressed
                             97 	.globl _cpct_scanKeyboard_if
                             98 	.globl _cpct_scanKeyboard_f
                             99 	.globl _cpct_scanKeyboard
                            100 	.globl _cpct_memset
                            101 	.globl _cpct_setInterruptHandler
                            102 	.globl _cpct_disableFirmware
                            103 	.globl _enum_mov
                            104 	.globl _enum_sta
                            105 	.globl _enum_dir
                            106 	.globl _nPObj
                            107 	.globl _objY
                            108 	.globl _objX
                            109 	.globl _nObj
                            110 	.globl _sht
                            111 	.globl _spr
                            112 	.globl _ctlPause
                            113 	.globl _ctlMusic
                            114 	.globl _ctlAbort
                            115 	.globl _ctlRight
                            116 	.globl _ctlLeft
                            117 	.globl _ctlDown
                            118 	.globl _ctlUp
                            119 	.globl _ctMainLoop
                            120 	.globl _ctWizardAnim
                            121 	.globl _nTip
                            122 	.globl _turboMode
                            123 	.globl _ctInactivity
                            124 	.globl _enemyTurn
                            125 	.globl _storeY
                            126 	.globl _storeX
                            127 	.globl _playerKey
                            128 	.globl _doorKey
                            129 	.globl _coinScore
                            130 	.globl _potScore
                            131 	.globl _highScore
                            132 	.globl _score
                            133 	.globl _TwoPlayers
                            134 	.globl _lName
                            135 	.globl _lastNMap
                            136 	.globl _nMap
                            137 	.globl _animRight_Witch
                            138 	.globl _animLeft_Witch
                            139 	.globl _frmWitch
                            140 	.globl _anim_Bat
                            141 	.globl _frmBat
                            142 	.globl _animRight_Ghost
                            143 	.globl _animLeft_Ghost
                            144 	.globl _animDown_Ghost
                            145 	.globl _animUp_Ghost
                            146 	.globl _frmGhost
                            147 	.globl _animRight_Knight
                            148 	.globl _animLeft_Knight
                            149 	.globl _animDown_Knight
                            150 	.globl _animUp_Knight
                            151 	.globl _frmKnight
                            152 	.globl _animRight_Sentinel
                            153 	.globl _animLeft_Sentinel
                            154 	.globl _animDown_Sentinel
                            155 	.globl _animUp_Sentinel
                            156 	.globl _frmSentinel
                            157 	.globl _animRight_Sorcerer2
                            158 	.globl _animLeft_Sorcerer2
                            159 	.globl _animDown_Sorcerer2
                            160 	.globl _animUp_Sorcerer2
                            161 	.globl _frmSorcerer2
                            162 	.globl _animRight_Sorcerer1
                            163 	.globl _animLeft_Sorcerer1
                            164 	.globl _animDown_Sorcerer1
                            165 	.globl _animUp_Sorcerer1
                            166 	.globl _frmSorcerer1
                            167 	.globl _PrintObject
                            168 	.globl _PrintSprite
                            169 	.globl _SpriteCollision
                            170 	.globl _MakeDuel
                            171 	.globl _ResetData
                            172 	.globl _InitGame
                            173 	.globl _GameOver
                            174 ;--------------------------------------------------------
                            175 ; special function registers
                            176 ;--------------------------------------------------------
                            177 ;--------------------------------------------------------
                            178 ; ram data
                            179 ;--------------------------------------------------------
                            180 	.area _DATA
   48BA                     181 _nMap::
   48BA                     182 	.ds 1
   48BB                     183 _lastNMap::
   48BB                     184 	.ds 1
   48BC                     185 _lName::
   48BC                     186 	.ds 2
   48BE                     187 _TwoPlayers::
   48BE                     188 	.ds 1
   48BF                     189 _score::
   48BF                     190 	.ds 4
   48C3                     191 _highScore::
   48C3                     192 	.ds 2
   48C5                     193 _potScore::
   48C5                     194 	.ds 2
   48C7                     195 _coinScore::
   48C7                     196 	.ds 2
   48C9                     197 _doorKey::
   48C9                     198 	.ds 5
   48CE                     199 _playerKey::
   48CE                     200 	.ds 5
   48D3                     201 _storeX::
   48D3                     202 	.ds 1
   48D4                     203 _storeY::
   48D4                     204 	.ds 1
   48D5                     205 _enemyTurn::
   48D5                     206 	.ds 1
   48D6                     207 _ctInactivity::
   48D6                     208 	.ds 2
   48D8                     209 _turboMode::
   48D8                     210 	.ds 1
   48D9                     211 _nTip::
   48D9                     212 	.ds 1
   48DA                     213 _ctWizardAnim::
   48DA                     214 	.ds 1
   48DB                     215 _ctMainLoop::
   48DB                     216 	.ds 2
   48DD                     217 _ctlUp::
   48DD                     218 	.ds 4
   48E1                     219 _ctlDown::
   48E1                     220 	.ds 4
   48E5                     221 _ctlLeft::
   48E5                     222 	.ds 4
   48E9                     223 _ctlRight::
   48E9                     224 	.ds 4
   48ED                     225 _ctlAbort::
   48ED                     226 	.ds 2
   48EF                     227 _ctlMusic::
   48EF                     228 	.ds 2
   48F1                     229 _ctlPause::
   48F1                     230 	.ds 2
   48F3                     231 _spr::
   48F3                     232 	.ds 105
   495C                     233 _sht::
   495C                     234 	.ds 5
   4961                     235 _nObj::
   4961                     236 	.ds 2
   4963                     237 _objX::
   4963                     238 	.ds 2
   4965                     239 _objY::
   4965                     240 	.ds 2
   4967                     241 _nPObj::
   4967                     242 	.ds 1
   4968                     243 _enum_dir::
   4968                     244 	.ds 1
   4969                     245 _enum_sta::
   4969                     246 	.ds 1
   496A                     247 _enum_mov::
   496A                     248 	.ds 1
   496B                     249 _Interrupt_nInt_1_147:
   496B                     250 	.ds 1
                            251 ;--------------------------------------------------------
                            252 ; ram data
                            253 ;--------------------------------------------------------
                            254 	.area _INITIALIZED
                            255 ;--------------------------------------------------------
                            256 ; absolute external ram data
                            257 ;--------------------------------------------------------
                            258 	.area _DABS (ABS)
                            259 ;--------------------------------------------------------
                            260 ; global & static initialisations
                            261 ;--------------------------------------------------------
                            262 	.area _HOME
                            263 	.area _GSINIT
                            264 	.area _GSFINAL
                            265 	.area _GSINIT
                            266 ;--------------------------------------------------------
                            267 ; Home
                            268 ;--------------------------------------------------------
                            269 	.area _HOME
                            270 	.area _HOME
                            271 ;--------------------------------------------------------
                            272 ; code
                            273 ;--------------------------------------------------------
                            274 	.area _CODE
                            275 ;src/main.c:329: cpctm_createTransparentMaskTable(g_maskTable, 0x100, M0, 0);
                            276 ;	---------------------------------
                            277 ; Function dummy_cpct_transparentMaskTable0M0_container
                            278 ; ---------------------------------
   3C5C                     279 _dummy_cpct_transparentMaskTable0M0_container::
                            280 	.area _g_maskTable_ (ABS) 
   0100                     281 	.org 0x100 
   0100                     282 	 _g_maskTable::
   0100 FF AA 55 00 AA AA   283 	.db 0xFF, 0xAA, 0x55, 0x00, 0xAA, 0xAA, 0x00, 0x00 
        00 00
   0108 55 00 55 00 00 00   284 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0110 AA AA 00 00 AA AA   285 	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
        00 00
   0118 00 00 00 00 00 00   286 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0120 55 00 55 00 00 00   287 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0128 55 00 55 00 00 00   288 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0130 00 00 00 00 00 00   289 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0138 00 00 00 00 00 00   290 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0140 AA AA 00 00 AA AA   291 	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
        00 00
   0148 00 00 00 00 00 00   292 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0150 AA AA 00 00 AA AA   293 	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
        00 00
   0158 00 00 00 00 00 00   294 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0160 00 00 00 00 00 00   295 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0168 00 00 00 00 00 00   296 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0170 00 00 00 00 00 00   297 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0178 00 00 00 00 00 00   298 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0180 55 00 55 00 00 00   299 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0188 55 00 55 00 00 00   300 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0190 00 00 00 00 00 00   301 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   0198 00 00 00 00 00 00   302 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01A0 55 00 55 00 00 00   303 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01A8 55 00 55 00 00 00   304 	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01B0 00 00 00 00 00 00   305 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01B8 00 00 00 00 00 00   306 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01C0 00 00 00 00 00 00   307 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01C8 00 00 00 00 00 00   308 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01D0 00 00 00 00 00 00   309 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01D8 00 00 00 00 00 00   310 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01E0 00 00 00 00 00 00   311 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01E8 00 00 00 00 00 00   312 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01F0 00 00 00 00 00 00   313 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
   01F8 00 00 00 00 00 00   314 	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        00 00
                            315 	.area _CSEG (REL, CON) 
                            316 ;src/main.c:366: i16 Abs(i16 number) __z88dk_fastcall {
                            317 ;	---------------------------------
                            318 ; Function Abs
                            319 ; ---------------------------------
   496C                     320 _Abs::
                            321 ;src/main.c:367: if (number < 0)
   496C CB 7C         [ 8]  322 	bit	7, h
   496E C8            [11]  323 	ret	Z
                            324 ;src/main.c:368: number *= -1;
   496F AF            [ 4]  325 	xor	a, a
   4970 95            [ 4]  326 	sub	a, l
   4971 6F            [ 4]  327 	ld	l, a
   4972 3E 00         [ 7]  328 	ld	a, #0x00
   4974 9C            [ 4]  329 	sbc	a, h
   4975 67            [ 4]  330 	ld	h, a
                            331 ;src/main.c:369: return (number);
   4976 C9            [10]  332 	ret
   4977                     333 _frmSorcerer1:
   4977 6F 2C               334 	.dw _g_sorcerer1_00
   4979 AB 2C               335 	.dw _g_sorcerer1_01
   497B E7 2C               336 	.dw _g_sorcerer1_02
   497D 23 2D               337 	.dw _g_sorcerer1_03
   497F 5F 2D               338 	.dw _g_sorcerer1_04
   4981 9B 2D               339 	.dw _g_sorcerer1_05
   4983 D7 2D               340 	.dw _g_sorcerer1_06
   4985 13 2E               341 	.dw _g_sorcerer1_07
   4987                     342 _animUp_Sorcerer1:
   4987 77 49               343 	.dw (_frmSorcerer1 + 0)
   4989 79 49               344 	.dw (_frmSorcerer1 + 2)
   498B                     345 _animDown_Sorcerer1:
   498B 7B 49               346 	.dw (_frmSorcerer1 + 4)
   498D 7D 49               347 	.dw (_frmSorcerer1 + 6)
   498F                     348 _animLeft_Sorcerer1:
   498F 7F 49               349 	.dw (_frmSorcerer1 + 8)
   4991 81 49               350 	.dw (_frmSorcerer1 + 10)
   4993                     351 _animRight_Sorcerer1:
   4993 83 49               352 	.dw (_frmSorcerer1 + 12)
   4995 85 49               353 	.dw (_frmSorcerer1 + 14)
   4997                     354 _frmSorcerer2:
   4997 17 2A               355 	.dw _g_sorcerer2_00
   4999 53 2A               356 	.dw _g_sorcerer2_01
   499B 8F 2A               357 	.dw _g_sorcerer2_02
   499D CB 2A               358 	.dw _g_sorcerer2_03
   499F 07 2B               359 	.dw _g_sorcerer2_04
   49A1 43 2B               360 	.dw _g_sorcerer2_05
   49A3 7F 2B               361 	.dw _g_sorcerer2_06
   49A5 BB 2B               362 	.dw _g_sorcerer2_07
   49A7                     363 _animUp_Sorcerer2:
   49A7 97 49               364 	.dw (_frmSorcerer2 + 0)
   49A9 99 49               365 	.dw (_frmSorcerer2 + 2)
   49AB                     366 _animDown_Sorcerer2:
   49AB 9B 49               367 	.dw (_frmSorcerer2 + 4)
   49AD 9D 49               368 	.dw (_frmSorcerer2 + 6)
   49AF                     369 _animLeft_Sorcerer2:
   49AF 9F 49               370 	.dw (_frmSorcerer2 + 8)
   49B1 A1 49               371 	.dw (_frmSorcerer2 + 10)
   49B3                     372 _animRight_Sorcerer2:
   49B3 A3 49               373 	.dw (_frmSorcerer2 + 12)
   49B5 A5 49               374 	.dw (_frmSorcerer2 + 14)
   49B7                     375 _frmSentinel:
   49B7 37 28               376 	.dw _g_sentinel_0
   49B9 73 28               377 	.dw _g_sentinel_1
   49BB AF 28               378 	.dw _g_sentinel_2
   49BD EB 28               379 	.dw _g_sentinel_3
   49BF 27 29               380 	.dw _g_sentinel_4
   49C1 63 29               381 	.dw _g_sentinel_5
   49C3 9F 29               382 	.dw _g_sentinel_6
   49C5 DB 29               383 	.dw _g_sentinel_7
   49C7                     384 _animUp_Sentinel:
   49C7 B7 49               385 	.dw (_frmSentinel + 0)
   49C9 B9 49               386 	.dw (_frmSentinel + 2)
   49CB                     387 _animDown_Sentinel:
   49CB BB 49               388 	.dw (_frmSentinel + 4)
   49CD BD 49               389 	.dw (_frmSentinel + 6)
   49CF                     390 _animLeft_Sentinel:
   49CF BF 49               391 	.dw (_frmSentinel + 8)
   49D1 C1 49               392 	.dw (_frmSentinel + 10)
   49D3                     393 _animRight_Sentinel:
   49D3 C3 49               394 	.dw (_frmSentinel + 12)
   49D5 C5 49               395 	.dw (_frmSentinel + 14)
   49D7                     396 _frmKnight:
   49D7 57 26               397 	.dw _g_knight_0
   49D9 93 26               398 	.dw _g_knight_1
   49DB CF 26               399 	.dw _g_knight_2
   49DD 0B 27               400 	.dw _g_knight_3
   49DF 47 27               401 	.dw _g_knight_4
   49E1 83 27               402 	.dw _g_knight_5
   49E3 BF 27               403 	.dw _g_knight_6
   49E5 FB 27               404 	.dw _g_knight_7
   49E7                     405 _animUp_Knight:
   49E7 D7 49               406 	.dw (_frmKnight + 0)
   49E9 D9 49               407 	.dw (_frmKnight + 2)
   49EB                     408 _animDown_Knight:
   49EB DB 49               409 	.dw (_frmKnight + 4)
   49ED DD 49               410 	.dw (_frmKnight + 6)
   49EF                     411 _animLeft_Knight:
   49EF DF 49               412 	.dw (_frmKnight + 8)
   49F1 E1 49               413 	.dw (_frmKnight + 10)
   49F3                     414 _animRight_Knight:
   49F3 E3 49               415 	.dw (_frmKnight + 12)
   49F5 E5 49               416 	.dw (_frmKnight + 14)
   49F7                     417 _frmGhost:
   49F7 77 24               418 	.dw _g_ghost_0
   49F9 B3 24               419 	.dw _g_ghost_1
   49FB EF 24               420 	.dw _g_ghost_2
   49FD 2B 25               421 	.dw _g_ghost_3
   49FF 67 25               422 	.dw _g_ghost_4
   4A01 A3 25               423 	.dw _g_ghost_5
   4A03 DF 25               424 	.dw _g_ghost_6
   4A05 1B 26               425 	.dw _g_ghost_7
   4A07                     426 _animUp_Ghost:
   4A07 F7 49               427 	.dw (_frmGhost + 0)
   4A09 F9 49               428 	.dw (_frmGhost + 2)
   4A0B                     429 _animDown_Ghost:
   4A0B FB 49               430 	.dw (_frmGhost + 4)
   4A0D FD 49               431 	.dw (_frmGhost + 6)
   4A0F                     432 _animLeft_Ghost:
   4A0F FF 49               433 	.dw (_frmGhost + 8)
   4A11 01 4A               434 	.dw (_frmGhost + 10)
   4A13                     435 _animRight_Ghost:
   4A13 03 4A               436 	.dw (_frmGhost + 12)
   4A15 05 4A               437 	.dw (_frmGhost + 14)
   4A17                     438 _frmBat:
   4A17 FF 23               439 	.dw _g_bat_0
   4A19 3B 24               440 	.dw _g_bat_1
   4A1B                     441 _anim_Bat:
   4A1B 17 4A               442 	.dw (_frmBat + 0)
   4A1D 19 4A               443 	.dw (_frmBat + 2)
   4A1F                     444 _frmWitch:
   4A1F 97 22               445 	.dw _g_witch_0
   4A21 D3 22               446 	.dw _g_witch_1
   4A23 0F 23               447 	.dw _g_witch_2
   4A25 4B 23               448 	.dw _g_witch_3
   4A27                     449 _animLeft_Witch:
   4A27 1F 4A               450 	.dw (_frmWitch + 0)
   4A29 21 4A               451 	.dw (_frmWitch + 2)
   4A2B                     452 _animRight_Witch:
   4A2B 23 4A               453 	.dw (_frmWitch + 4)
   4A2D 25 4A               454 	.dw (_frmWitch + 6)
                            455 ;src/main.c:374: u8 Strlen(const unsigned char *str) __z88dk_fastcall {
                            456 ;	---------------------------------
                            457 ; Function Strlen
                            458 ; ---------------------------------
   4A2F                     459 _Strlen::
                            460 ;src/main.c:376: for (s = str; *s; ++s);
   4A2F 4D            [ 4]  461 	ld	c,l
   4A30 44            [ 4]  462 	ld	b,h
   4A31                     463 00103$:
   4A31 7E            [ 7]  464 	ld	a, (hl)
   4A32 B7            [ 4]  465 	or	a, a
   4A33 28 03         [12]  466 	jr	Z,00101$
   4A35 23            [ 6]  467 	inc	hl
   4A36 18 F9         [12]  468 	jr	00103$
   4A38                     469 00101$:
                            470 ;src/main.c:377: return (s - str);
   4A38 BF            [ 4]  471 	cp	a, a
   4A39 ED 42         [15]  472 	sbc	hl, bc
   4A3B C9            [10]  473 	ret
                            474 ;src/main.c:382: char* Itoa(u16 value, char* result, int base) {    
                            475 ;	---------------------------------
                            476 ; Function Itoa
                            477 ; ---------------------------------
   4A3C                     478 _Itoa::
   4A3C DD E5         [15]  479 	push	ix
   4A3E DD 21 00 00   [14]  480 	ld	ix,#0
   4A42 DD 39         [15]  481 	add	ix,sp
   4A44 21 F9 FF      [10]  482 	ld	hl, #-7
   4A47 39            [11]  483 	add	hl, sp
   4A48 F9            [ 6]  484 	ld	sp, hl
                            485 ;src/main.c:384: char* ptr = result, *ptr1 = result, tmp_char;
   4A49 DD 5E 06      [19]  486 	ld	e,6 (ix)
   4A4C DD 56 07      [19]  487 	ld	d,7 (ix)
   4A4F DD 73 FA      [19]  488 	ld	-6 (ix), e
   4A52 DD 72 FB      [19]  489 	ld	-5 (ix), d
                            490 ;src/main.c:386: if (base < 2 || base > 36) { 
   4A55 DD 7E 08      [19]  491 	ld	a, 8 (ix)
   4A58 D6 02         [ 7]  492 	sub	a, #0x02
   4A5A DD 7E 09      [19]  493 	ld	a, 9 (ix)
   4A5D 17            [ 4]  494 	rla
   4A5E 3F            [ 4]  495 	ccf
   4A5F 1F            [ 4]  496 	rra
   4A60 DE 80         [ 7]  497 	sbc	a, #0x80
   4A62 38 12         [12]  498 	jr	C,00101$
   4A64 3E 24         [ 7]  499 	ld	a, #0x24
   4A66 DD BE 08      [19]  500 	cp	a, 8 (ix)
   4A69 3E 00         [ 7]  501 	ld	a, #0x00
   4A6B DD 9E 09      [19]  502 	sbc	a, 9 (ix)
   4A6E E2 73 4A      [10]  503 	jp	PO, 00140$
   4A71 EE 80         [ 7]  504 	xor	a, #0x80
   4A73                     505 00140$:
   4A73 F2 7C 4A      [10]  506 	jp	P, 00115$
   4A76                     507 00101$:
                            508 ;src/main.c:387: *result = '\0'; 
   4A76 AF            [ 4]  509 	xor	a, a
   4A77 12            [ 7]  510 	ld	(de), a
                            511 ;src/main.c:388: return result; 
   4A78 EB            [ 4]  512 	ex	de,hl
   4A79 C3 1D 4B      [10]  513 	jp	00112$
                            514 ;src/main.c:391: do {
   4A7C                     515 00115$:
   4A7C DD 73 FE      [19]  516 	ld	-2 (ix), e
   4A7F DD 72 FF      [19]  517 	ld	-1 (ix), d
   4A82                     518 00104$:
                            519 ;src/main.c:392: tmp_value = value;
   4A82 DD 7E 04      [19]  520 	ld	a, 4 (ix)
   4A85 DD 77 FC      [19]  521 	ld	-4 (ix), a
   4A88 DD 7E 05      [19]  522 	ld	a, 5 (ix)
   4A8B DD 77 FD      [19]  523 	ld	-3 (ix), a
                            524 ;src/main.c:393: value /= base;
   4A8E DD 4E 08      [19]  525 	ld	c,8 (ix)
   4A91 DD 46 09      [19]  526 	ld	b,9 (ix)
   4A94 C5            [11]  527 	push	bc
   4A95 DD 6E 04      [19]  528 	ld	l,4 (ix)
   4A98 DD 66 05      [19]  529 	ld	h,5 (ix)
   4A9B E5            [11]  530 	push	hl
   4A9C CD 7C 43      [17]  531 	call	__divuint
   4A9F F1            [10]  532 	pop	af
   4AA0 F1            [10]  533 	pop	af
   4AA1 DD 75 04      [19]  534 	ld	4 (ix), l
   4AA4 DD 74 05      [19]  535 	ld	5 (ix), h
                            536 ;src/main.c:394: *ptr++ = "zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmnopqrstuvwxyz" [35 + (tmp_value - value * base)];
   4AA7 DD 4E FC      [19]  537 	ld	c, -4 (ix)
   4AAA DD 5E 04      [19]  538 	ld	e, 4 (ix)
   4AAD DD 66 08      [19]  539 	ld	h, 8 (ix)
   4AB0 2E 00         [ 7]  540 	ld	l, #0x00
   4AB2 55            [ 4]  541 	ld	d, l
   4AB3 06 08         [ 7]  542 	ld	b, #0x08
   4AB5                     543 00141$:
   4AB5 29            [11]  544 	add	hl, hl
   4AB6 30 01         [12]  545 	jr	NC,00142$
   4AB8 19            [11]  546 	add	hl, de
   4AB9                     547 00142$:
   4AB9 10 FA         [13]  548 	djnz	00141$
   4ABB 79            [ 4]  549 	ld	a, c
   4ABC 95            [ 4]  550 	sub	a, l
   4ABD C6 23         [ 7]  551 	add	a, #0x23
   4ABF 4F            [ 4]  552 	ld	c, a
   4AC0 17            [ 4]  553 	rla
   4AC1 9F            [ 4]  554 	sbc	a, a
   4AC2 47            [ 4]  555 	ld	b, a
   4AC3 21 22 4B      [10]  556 	ld	hl, #___str_0
   4AC6 09            [11]  557 	add	hl, bc
   4AC7 4E            [ 7]  558 	ld	c, (hl)
   4AC8 DD 6E FE      [19]  559 	ld	l,-2 (ix)
   4ACB DD 66 FF      [19]  560 	ld	h,-1 (ix)
   4ACE 71            [ 7]  561 	ld	(hl), c
   4ACF DD 34 FE      [23]  562 	inc	-2 (ix)
   4AD2 20 03         [12]  563 	jr	NZ,00143$
   4AD4 DD 34 FF      [23]  564 	inc	-1 (ix)
   4AD7                     565 00143$:
                            566 ;src/main.c:395: } while (value);
   4AD7 DD 7E 05      [19]  567 	ld	a, 5 (ix)
   4ADA DD B6 04      [19]  568 	or	a,4 (ix)
   4ADD 20 A3         [12]  569 	jr	NZ,00104$
                            570 ;src/main.c:397: if (tmp_value < 0) 
   4ADF DD 4E FE      [19]  571 	ld	c,-2 (ix)
   4AE2 DD 46 FF      [19]  572 	ld	b,-1 (ix)
   4AE5 DD CB FD 7E   [20]  573 	bit	7, -3 (ix)
   4AE9 28 0F         [12]  574 	jr	Z,00108$
                            575 ;src/main.c:398: *ptr++ = '-';
   4AEB DD 6E FE      [19]  576 	ld	l,-2 (ix)
   4AEE DD 66 FF      [19]  577 	ld	h,-1 (ix)
   4AF1 36 2D         [10]  578 	ld	(hl), #0x2d
   4AF3 DD 4E FE      [19]  579 	ld	c,-2 (ix)
   4AF6 DD 46 FF      [19]  580 	ld	b,-1 (ix)
   4AF9 03            [ 6]  581 	inc	bc
   4AFA                     582 00108$:
                            583 ;src/main.c:399: *ptr-- = '\0';
   4AFA AF            [ 4]  584 	xor	a, a
   4AFB 02            [ 7]  585 	ld	(bc), a
   4AFC 0B            [ 6]  586 	dec	bc
                            587 ;src/main.c:401: while(ptr1 < ptr) {
   4AFD DD 5E FA      [19]  588 	ld	e,-6 (ix)
   4B00 DD 56 FB      [19]  589 	ld	d,-5 (ix)
   4B03                     590 00109$:
   4B03 7B            [ 4]  591 	ld	a, e
   4B04 91            [ 4]  592 	sub	a, c
   4B05 7A            [ 4]  593 	ld	a, d
   4B06 98            [ 4]  594 	sbc	a, b
   4B07 30 0E         [12]  595 	jr	NC,00111$
                            596 ;src/main.c:402: tmp_char = *ptr;
   4B09 0A            [ 7]  597 	ld	a, (bc)
   4B0A DD 77 F9      [19]  598 	ld	-7 (ix), a
                            599 ;src/main.c:403: *ptr--= *ptr1;
   4B0D 1A            [ 7]  600 	ld	a, (de)
   4B0E 02            [ 7]  601 	ld	(bc), a
   4B0F 0B            [ 6]  602 	dec	bc
                            603 ;src/main.c:404: *ptr1++ = tmp_char;
   4B10 DD 7E F9      [19]  604 	ld	a, -7 (ix)
   4B13 12            [ 7]  605 	ld	(de), a
   4B14 13            [ 6]  606 	inc	de
   4B15 18 EC         [12]  607 	jr	00109$
   4B17                     608 00111$:
                            609 ;src/main.c:407: return result;
   4B17 DD 6E 06      [19]  610 	ld	l,6 (ix)
   4B1A DD 66 07      [19]  611 	ld	h,7 (ix)
   4B1D                     612 00112$:
   4B1D DD F9         [10]  613 	ld	sp, ix
   4B1F DD E1         [14]  614 	pop	ix
   4B21 C9            [10]  615 	ret
   4B22                     616 ___str_0:
   4B22 7A 79 78 77 76 75   617 	.ascii "zyxwvutsrqponmlkjihgfedcba9876543210123456789abcdefghijklmno"
        74 73 72 71 70 6F
        6E 6D 6C 6B 6A 69
        68 67 66 65 64 63
        62 61 39 38 37 36
        35 34 33 32 31 30
        31 32 33 34 35 36
        37 38 39 61 62 63
        64 65 66 67 68 69
        6A 6B 6C 6D 6E 6F
   4B5E 70 71 72 73 74 75   618 	.ascii "pqrstuvwxyz"
        76 77 78 79 7A
   4B69 00                  619 	.db 0x00
                            620 ;src/main.c:412: void Pause(u16 value) __z88dk_fastcall {
                            621 ;	---------------------------------
                            622 ; Function Pause
                            623 ; ---------------------------------
   4B6A                     624 _Pause::
                            625 ;src/main.c:414: for(i=0; i < value; i++) {
   4B6A 01 00 00      [10]  626 	ld	bc, #0x0000
   4B6D                     627 00103$:
   4B6D 79            [ 4]  628 	ld	a, c
   4B6E 95            [ 4]  629 	sub	a, l
   4B6F 78            [ 4]  630 	ld	a, b
   4B70 9C            [ 4]  631 	sbc	a, h
   4B71 D0            [11]  632 	ret	NC
                            633 ;src/main.c:417: __endasm;
   4B72 76            [ 4]  634 	halt
                            635 ;src/main.c:414: for(i=0; i < value; i++) {
   4B73 03            [ 6]  636 	inc	bc
   4B74 18 F7         [12]  637 	jr	00103$
                            638 ;src/main.c:424: void Interrupt() {
                            639 ;	---------------------------------
                            640 ; Function Interrupt
                            641 ; ---------------------------------
   4B76                     642 _Interrupt::
                            643 ;src/main.c:427: if (++nInt == 6) {
   4B76 FD 21 6B 49   [14]  644 	ld	iy, #_Interrupt_nInt_1_147
   4B7A FD 34 00      [23]  645 	inc	0 (iy)
   4B7D FD 7E 00      [19]  646 	ld	a, 0 (iy)
   4B80 D6 06         [ 7]  647 	sub	a, #0x06
   4B82 C0            [11]  648 	ret	NZ
                            649 ;src/main.c:428: cpct_scanKeyboard_if();
   4B83 CD DC 45      [17]  650 	call	_cpct_scanKeyboard_if
                            651 ;src/main.c:429: nInt = 0;
   4B86 21 6B 49      [10]  652 	ld	hl,#_Interrupt_nInt_1_147 + 0
   4B89 36 00         [10]  653 	ld	(hl), #0x00
   4B8B C9            [10]  654 	ret
                            655 ;src/main.c:447: void ClearScreen() {
                            656 ;	---------------------------------
                            657 ; Function ClearScreen
                            658 ; ---------------------------------
   4B8C                     659 _ClearScreen::
                            660 ;src/main.c:448: cpct_memset(CPCT_VMEM_START, cpct_px2byteM0(BG_COLOR, BG_COLOR), 16384);
   4B8C 21 01 01      [10]  661 	ld	hl, #0x0101
   4B8F E5            [11]  662 	push	hl
   4B90 CD 9D 46      [17]  663 	call	_cpct_px2byteM0
   4B93 45            [ 4]  664 	ld	b, l
   4B94 21 00 40      [10]  665 	ld	hl, #0x4000
   4B97 E5            [11]  666 	push	hl
   4B98 C5            [11]  667 	push	bc
   4B99 33            [ 6]  668 	inc	sp
   4B9A 26 C0         [ 7]  669 	ld	h, #0xc0
   4B9C E5            [11]  670 	push	hl
   4B9D CD B9 46      [17]  671 	call	_cpct_memset
   4BA0 C9            [10]  672 	ret
                            673 ;src/main.c:453: u8* GetTileNum(u8 x, u8 y) {
                            674 ;	---------------------------------
                            675 ; Function GetTileNum
                            676 ; ---------------------------------
   4BA1                     677 _GetTileNum::
   4BA1 DD E5         [15]  678 	push	ix
   4BA3 DD 21 00 00   [14]  679 	ld	ix,#0
   4BA7 DD 39         [15]  680 	add	ix,sp
                            681 ;src/main.c:454: return UNPACKED_MAP_INI + (y - ORIG_MAP_Y) / 4 * MAP_W + x / 2;	
   4BA9 DD 4E 05      [19]  682 	ld	c, 5 (ix)
   4BAC 06 00         [ 7]  683 	ld	b, #0x00
   4BAE 79            [ 4]  684 	ld	a, c
   4BAF C6 E0         [ 7]  685 	add	a, #0xe0
   4BB1 5F            [ 4]  686 	ld	e, a
   4BB2 78            [ 4]  687 	ld	a, b
   4BB3 CE FF         [ 7]  688 	adc	a, #0xff
   4BB5 57            [ 4]  689 	ld	d, a
   4BB6 6B            [ 4]  690 	ld	l, e
   4BB7 62            [ 4]  691 	ld	h, d
   4BB8 CB 7A         [ 8]  692 	bit	7, d
   4BBA 28 04         [12]  693 	jr	Z,00103$
   4BBC 21 E3 FF      [10]  694 	ld	hl, #0xffe3
   4BBF 09            [11]  695 	add	hl, bc
   4BC0                     696 00103$:
   4BC0 CB 2C         [ 8]  697 	sra	h
   4BC2 CB 1D         [ 8]  698 	rr	l
   4BC4 CB 2C         [ 8]  699 	sra	h
   4BC6 CB 1D         [ 8]  700 	rr	l
   4BC8 4D            [ 4]  701 	ld	c, l
   4BC9 44            [ 4]  702 	ld	b, h
   4BCA 29            [11]  703 	add	hl, hl
   4BCB 29            [11]  704 	add	hl, hl
   4BCC 09            [11]  705 	add	hl, bc
   4BCD 29            [11]  706 	add	hl, hl
   4BCE 29            [11]  707 	add	hl, hl
   4BCF 29            [11]  708 	add	hl, hl
   4BD0 01 71 0F      [10]  709 	ld	bc, #0x0f71
   4BD3 09            [11]  710 	add	hl, bc
   4BD4 DD 4E 04      [19]  711 	ld	c, 4 (ix)
   4BD7 CB 39         [ 8]  712 	srl	c
   4BD9 59            [ 4]  713 	ld	e,c
   4BDA 16 00         [ 7]  714 	ld	d,#0x00
   4BDC 19            [11]  715 	add	hl, de
   4BDD DD E1         [14]  716 	pop	ix
   4BDF C9            [10]  717 	ret
                            718 ;src/main.c:459: u8 OnBackground(u8 x, u8 y) {
                            719 ;	---------------------------------
                            720 ; Function OnBackground
                            721 ; ---------------------------------
   4BE0                     722 _OnBackground::
                            723 ;src/main.c:460: if (*GetTileNum(x+3, y+8) >= TILESET_BLOCKERS) 
   4BE0 21 03 00      [10]  724 	ld	hl, #3+0
   4BE3 39            [11]  725 	add	hl, sp
   4BE4 7E            [ 7]  726 	ld	a, (hl)
   4BE5 C6 08         [ 7]  727 	add	a, #0x08
   4BE7 47            [ 4]  728 	ld	b, a
   4BE8 21 02 00      [10]  729 	ld	hl, #2+0
   4BEB 39            [11]  730 	add	hl, sp
   4BEC 56            [ 7]  731 	ld	d, (hl)
   4BED 14            [ 4]  732 	inc	d
   4BEE 14            [ 4]  733 	inc	d
   4BEF 14            [ 4]  734 	inc	d
   4BF0 4A            [ 4]  735 	ld	c, d
   4BF1 C5            [11]  736 	push	bc
   4BF2 CD A1 4B      [17]  737 	call	_GetTileNum
   4BF5 F1            [10]  738 	pop	af
   4BF6 7E            [ 7]  739 	ld	a, (hl)
   4BF7 D6 2D         [ 7]  740 	sub	a, #0x2d
   4BF9 38 03         [12]  741 	jr	C,00102$
                            742 ;src/main.c:461: return FALSE;
   4BFB 2E 00         [ 7]  743 	ld	l, #0x00
   4BFD C9            [10]  744 	ret
   4BFE                     745 00102$:
                            746 ;src/main.c:462: return TRUE;
   4BFE 2E 01         [ 7]  747 	ld	l, #0x01
   4C00 C9            [10]  748 	ret
                            749 ;src/main.c:467: void PrintMap() {
                            750 ;	---------------------------------
                            751 ; Function PrintMap
                            752 ; ---------------------------------
   4C01                     753 _PrintMap::
                            754 ;src/main.c:468: cpct_etm_drawTilemap2x4(MAP_W, MAP_H, 
   4C01 21 71 0F      [10]  755 	ld	hl, #0x0f71
   4C04 E5            [11]  756 	push	hl
   4C05 21 40 C1      [10]  757 	ld	hl, #0xc140
   4C08 E5            [11]  758 	push	hl
   4C09 21 2A 28      [10]  759 	ld	hl, #0x282a
   4C0C E5            [11]  760 	push	hl
   4C0D 2E 00         [ 7]  761 	ld	l, #0x00
   4C0F E5            [11]  762 	push	hl
   4C10 AF            [ 4]  763 	xor	a, a
   4C11 F5            [11]  764 	push	af
   4C12 33            [ 6]  765 	inc	sp
   4C13 CD FB 44      [17]  766 	call	_cpct_etm_drawTileBox2x4
   4C16 C9            [10]  767 	ret
                            768 ;src/main.c:475: void PrintNumber(u16 num, u8 len, u8 x, u8 y, u8 prevDel) { 
                            769 ;	---------------------------------
                            770 ; Function PrintNumber
                            771 ; ---------------------------------
   4C17                     772 _PrintNumber::
   4C17 DD E5         [15]  773 	push	ix
   4C19 DD 21 00 00   [14]  774 	ld	ix,#0
   4C1D DD 39         [15]  775 	add	ix,sp
   4C1F 21 F5 FF      [10]  776 	ld	hl, #-11
   4C22 39            [11]  777 	add	hl, sp
   4C23 F9            [ 6]  778 	ld	sp, hl
                            779 ;src/main.c:481: Itoa(num, txt, 10);    
   4C24 21 03 00      [10]  780 	ld	hl, #0x0003
   4C27 39            [11]  781 	add	hl, sp
   4C28 4D            [ 4]  782 	ld	c, l
   4C29 44            [ 4]  783 	ld	b, h
   4C2A 59            [ 4]  784 	ld	e, c
   4C2B 50            [ 4]  785 	ld	d, b
   4C2C C5            [11]  786 	push	bc
   4C2D 21 0A 00      [10]  787 	ld	hl, #0x000a
   4C30 E5            [11]  788 	push	hl
   4C31 D5            [11]  789 	push	de
   4C32 DD 6E 04      [19]  790 	ld	l,4 (ix)
   4C35 DD 66 05      [19]  791 	ld	h,5 (ix)
   4C38 E5            [11]  792 	push	hl
   4C39 CD 3C 4A      [17]  793 	call	_Itoa
   4C3C 21 06 00      [10]  794 	ld	hl, #6
   4C3F 39            [11]  795 	add	hl, sp
   4C40 F9            [ 6]  796 	ld	sp, hl
   4C41 C1            [10]  797 	pop	bc
                            798 ;src/main.c:482: zeros = len - Strlen(txt);
   4C42 69            [ 4]  799 	ld	l, c
   4C43 60            [ 4]  800 	ld	h, b
   4C44 C5            [11]  801 	push	bc
   4C45 CD 2F 4A      [17]  802 	call	_Strlen
   4C48 C1            [10]  803 	pop	bc
   4C49 DD 7E 06      [19]  804 	ld	a, 6 (ix)
   4C4C 95            [ 4]  805 	sub	a, l
   4C4D DD 77 F7      [19]  806 	ld	-9 (ix), a
                            807 ;src/main.c:483: nAux = txt[pos];
   4C50 0A            [ 7]  808 	ld	a, (bc)
   4C51 DD 77 F5      [19]  809 	ld	-11 (ix), a
                            810 ;src/main.c:485: while(nAux != '\0')	{	
   4C54 DD 36 F6 00   [19]  811 	ld	-10 (ix), #0x00
   4C58                     812 00103$:
   4C58 DD 7E F5      [19]  813 	ld	a, -11 (ix)
   4C5B B7            [ 4]  814 	or	a, a
   4C5C CA E1 4C      [10]  815 	jp	Z, 00106$
                            816 ;src/main.c:486: u8* ptr = cpct_getScreenPtr(CPCT_VMEM_START, (zeros + pos) * FNT_W + x, y);
   4C5F DD 7E F7      [19]  817 	ld	a, -9 (ix)
   4C62 DD 86 F6      [19]  818 	add	a, -10 (ix)
   4C65 5F            [ 4]  819 	ld	e, a
   4C66 87            [ 4]  820 	add	a, a
   4C67 83            [ 4]  821 	add	a, e
   4C68 5F            [ 4]  822 	ld	e,a
   4C69 DD 86 07      [19]  823 	add	a, 7 (ix)
   4C6C 57            [ 4]  824 	ld	d, a
   4C6D C5            [11]  825 	push	bc
   4C6E DD 7E 08      [19]  826 	ld	a, 8 (ix)
   4C71 F5            [11]  827 	push	af
   4C72 33            [ 6]  828 	inc	sp
   4C73 D5            [11]  829 	push	de
   4C74 33            [ 6]  830 	inc	sp
   4C75 21 00 C0      [10]  831 	ld	hl, #0xc000
   4C78 E5            [11]  832 	push	hl
   4C79 CD B9 47      [17]  833 	call	_cpct_getScreenPtr
   4C7C C1            [10]  834 	pop	bc
                            835 ;src/main.c:488: cpct_drawSolidBox(ptr, cpct_px2byteM0(BG_COLOR, BG_COLOR), FNT_W, FNT_H); // previous deletion
   4C7D DD 75 FE      [19]  836 	ld	-2 (ix), l
   4C80 DD 74 FF      [19]  837 	ld	-1 (ix), h
                            838 ;src/main.c:487: if (prevDel) 
   4C83 DD 7E 09      [19]  839 	ld	a, 9 (ix)
   4C86 B7            [ 4]  840 	or	a, a
   4C87 28 1C         [12]  841 	jr	Z,00102$
                            842 ;src/main.c:488: cpct_drawSolidBox(ptr, cpct_px2byteM0(BG_COLOR, BG_COLOR), FNT_W, FNT_H); // previous deletion
   4C89 C5            [11]  843 	push	bc
   4C8A 21 01 01      [10]  844 	ld	hl, #0x0101
   4C8D E5            [11]  845 	push	hl
   4C8E CD 9D 46      [17]  846 	call	_cpct_px2byteM0
   4C91 C1            [10]  847 	pop	bc
   4C92 26 00         [ 7]  848 	ld	h, #0x00
   4C94 C5            [11]  849 	push	bc
   4C95 11 03 08      [10]  850 	ld	de, #0x0803
   4C98 D5            [11]  851 	push	de
   4C99 E5            [11]  852 	push	hl
   4C9A DD 6E FE      [19]  853 	ld	l,-2 (ix)
   4C9D DD 66 FF      [19]  854 	ld	h,-1 (ix)
   4CA0 E5            [11]  855 	push	hl
   4CA1 CD D7 46      [17]  856 	call	_cpct_drawSolidBox
   4CA4 C1            [10]  857 	pop	bc
   4CA5                     858 00102$:
                            859 ;src/main.c:489: cpct_drawSpriteMaskedAlignedTable(g_font[nAux - 48], ptr, FNT_W, FNT_H, g_maskTable);
   4CA5 DD 7E F5      [19]  860 	ld	a, -11 (ix)
   4CA8 16 00         [ 7]  861 	ld	d, #0x00
   4CAA C6 D0         [ 7]  862 	add	a, #0xd0
   4CAC 5F            [ 4]  863 	ld	e, a
   4CAD 7A            [ 4]  864 	ld	a, d
   4CAE CE FF         [ 7]  865 	adc	a, #0xff
   4CB0 57            [ 4]  866 	ld	d, a
   4CB1 6B            [ 4]  867 	ld	l, e
   4CB2 62            [ 4]  868 	ld	h, d
   4CB3 29            [11]  869 	add	hl, hl
   4CB4 19            [11]  870 	add	hl, de
   4CB5 29            [11]  871 	add	hl, hl
   4CB6 29            [11]  872 	add	hl, hl
   4CB7 29            [11]  873 	add	hl, hl
   4CB8 11 5C 3D      [10]  874 	ld	de, #_g_font
   4CBB 19            [11]  875 	add	hl, de
   4CBC C5            [11]  876 	push	bc
   4CBD 11 00 01      [10]  877 	ld	de, #_g_maskTable
   4CC0 D5            [11]  878 	push	de
   4CC1 11 03 08      [10]  879 	ld	de, #0x0803
   4CC4 D5            [11]  880 	push	de
   4CC5 DD 5E FE      [19]  881 	ld	e,-2 (ix)
   4CC8 DD 56 FF      [19]  882 	ld	d,-1 (ix)
   4CCB D5            [11]  883 	push	de
   4CCC E5            [11]  884 	push	hl
   4CCD CD CF 47      [17]  885 	call	_cpct_drawSpriteMaskedAlignedTable
   4CD0 C1            [10]  886 	pop	bc
                            887 ;src/main.c:490: nAux = txt[++pos];
   4CD1 DD 34 F6      [23]  888 	inc	-10 (ix)
   4CD4 DD 6E F6      [19]  889 	ld	l,-10 (ix)
   4CD7 26 00         [ 7]  890 	ld	h,#0x00
   4CD9 09            [11]  891 	add	hl, bc
   4CDA 7E            [ 7]  892 	ld	a, (hl)
   4CDB DD 77 F5      [19]  893 	ld	-11 (ix), a
   4CDE C3 58 4C      [10]  894 	jp	00103$
   4CE1                     895 00106$:
   4CE1 DD F9         [10]  896 	ld	sp, ix
   4CE3 DD E1         [14]  897 	pop	ix
   4CE5 C9            [10]  898 	ret
                            899 ;src/main.c:496: void PrintText(u8 txt[], u8 x, u8 y, u8 prevDel) {
                            900 ;	---------------------------------
                            901 ; Function PrintText
                            902 ; ---------------------------------
   4CE6                     903 _PrintText::
   4CE6 DD E5         [15]  904 	push	ix
   4CE8 DD 21 00 00   [14]  905 	ld	ix,#0
   4CEC DD 39         [15]  906 	add	ix,sp
   4CEE F5            [11]  907 	push	af
   4CEF F5            [11]  908 	push	af
                            909 ;src/main.c:498: u8 car = txt[pos];
   4CF0 DD 4E 04      [19]  910 	ld	c,4 (ix)
   4CF3 DD 46 05      [19]  911 	ld	b,5 (ix)
   4CF6 0A            [ 7]  912 	ld	a, (bc)
   4CF7 DD 77 FD      [19]  913 	ld	-3 (ix), a
                            914 ;src/main.c:500: while(car != '\0') { // "@" = blank    ";" = -   ">" = !!   "[" = ,
   4CFA DD 36 FC 00   [19]  915 	ld	-4 (ix), #0x00
   4CFE                     916 00103$:
   4CFE DD 7E FD      [19]  917 	ld	a, -3 (ix)
   4D01 B7            [ 4]  918 	or	a, a
   4D02 CA 84 4D      [10]  919 	jp	Z, 00106$
                            920 ;src/main.c:501: u8* ptr = cpct_getScreenPtr(CPCT_VMEM_START, (pos * FNT_W) + x, y);
   4D05 DD 6E FC      [19]  921 	ld	l, -4 (ix)
   4D08 5D            [ 4]  922 	ld	e, l
   4D09 29            [11]  923 	add	hl, hl
   4D0A 19            [11]  924 	add	hl, de
   4D0B 7D            [ 4]  925 	ld	a, l
   4D0C DD 86 06      [19]  926 	add	a, 6 (ix)
   4D0F 57            [ 4]  927 	ld	d, a
   4D10 C5            [11]  928 	push	bc
   4D11 DD 7E 07      [19]  929 	ld	a, 7 (ix)
   4D14 F5            [11]  930 	push	af
   4D15 33            [ 6]  931 	inc	sp
   4D16 D5            [11]  932 	push	de
   4D17 33            [ 6]  933 	inc	sp
   4D18 21 00 C0      [10]  934 	ld	hl, #0xc000
   4D1B E5            [11]  935 	push	hl
   4D1C CD B9 47      [17]  936 	call	_cpct_getScreenPtr
   4D1F C1            [10]  937 	pop	bc
                            938 ;src/main.c:503: cpct_drawSolidBox(ptr, cpct_px2byteM0(BG_COLOR, BG_COLOR), FNT_W, FNT_H); // previous deletion
   4D20 DD 75 FE      [19]  939 	ld	-2 (ix), l
   4D23 DD 74 FF      [19]  940 	ld	-1 (ix), h
                            941 ;src/main.c:502: if (prevDel) 
   4D26 DD 7E 08      [19]  942 	ld	a, 8 (ix)
   4D29 B7            [ 4]  943 	or	a, a
   4D2A 28 1C         [12]  944 	jr	Z,00102$
                            945 ;src/main.c:503: cpct_drawSolidBox(ptr, cpct_px2byteM0(BG_COLOR, BG_COLOR), FNT_W, FNT_H); // previous deletion
   4D2C C5            [11]  946 	push	bc
   4D2D 21 01 01      [10]  947 	ld	hl, #0x0101
   4D30 E5            [11]  948 	push	hl
   4D31 CD 9D 46      [17]  949 	call	_cpct_px2byteM0
   4D34 C1            [10]  950 	pop	bc
   4D35 26 00         [ 7]  951 	ld	h, #0x00
   4D37 C5            [11]  952 	push	bc
   4D38 11 03 08      [10]  953 	ld	de, #0x0803
   4D3B D5            [11]  954 	push	de
   4D3C E5            [11]  955 	push	hl
   4D3D DD 6E FE      [19]  956 	ld	l,-2 (ix)
   4D40 DD 66 FF      [19]  957 	ld	h,-1 (ix)
   4D43 E5            [11]  958 	push	hl
   4D44 CD D7 46      [17]  959 	call	_cpct_drawSolidBox
   4D47 C1            [10]  960 	pop	bc
   4D48                     961 00102$:
                            962 ;src/main.c:504: cpct_drawSpriteMaskedAlignedTable(g_font[car - 48], ptr, FNT_W, FNT_H, g_maskTable);
   4D48 DD 7E FD      [19]  963 	ld	a, -3 (ix)
   4D4B 16 00         [ 7]  964 	ld	d, #0x00
   4D4D C6 D0         [ 7]  965 	add	a, #0xd0
   4D4F 5F            [ 4]  966 	ld	e, a
   4D50 7A            [ 4]  967 	ld	a, d
   4D51 CE FF         [ 7]  968 	adc	a, #0xff
   4D53 57            [ 4]  969 	ld	d, a
   4D54 6B            [ 4]  970 	ld	l, e
   4D55 62            [ 4]  971 	ld	h, d
   4D56 29            [11]  972 	add	hl, hl
   4D57 19            [11]  973 	add	hl, de
   4D58 29            [11]  974 	add	hl, hl
   4D59 29            [11]  975 	add	hl, hl
   4D5A 29            [11]  976 	add	hl, hl
   4D5B 11 5C 3D      [10]  977 	ld	de, #_g_font
   4D5E 19            [11]  978 	add	hl, de
   4D5F C5            [11]  979 	push	bc
   4D60 11 00 01      [10]  980 	ld	de, #_g_maskTable
   4D63 D5            [11]  981 	push	de
   4D64 11 03 08      [10]  982 	ld	de, #0x0803
   4D67 D5            [11]  983 	push	de
   4D68 DD 5E FE      [19]  984 	ld	e,-2 (ix)
   4D6B DD 56 FF      [19]  985 	ld	d,-1 (ix)
   4D6E D5            [11]  986 	push	de
   4D6F E5            [11]  987 	push	hl
   4D70 CD CF 47      [17]  988 	call	_cpct_drawSpriteMaskedAlignedTable
   4D73 C1            [10]  989 	pop	bc
                            990 ;src/main.c:505: car = txt[++pos];
   4D74 DD 34 FC      [23]  991 	inc	-4 (ix)
   4D77 DD 6E FC      [19]  992 	ld	l,-4 (ix)
   4D7A 26 00         [ 7]  993 	ld	h,#0x00
   4D7C 09            [11]  994 	add	hl, bc
   4D7D 7E            [ 7]  995 	ld	a, (hl)
   4D7E DD 77 FD      [19]  996 	ld	-3 (ix), a
   4D81 C3 FE 4C      [10]  997 	jp	00103$
   4D84                     998 00106$:
   4D84 DD F9         [10]  999 	ld	sp, ix
   4D86 DD E1         [14] 1000 	pop	ix
   4D88 C9            [10] 1001 	ret
                           1002 ;src/main.c:511: void PrintFrame(u8 xIni, u8 yIni, u8 xEnd, u8 yEnd) {
                           1003 ;	---------------------------------
                           1004 ; Function PrintFrame
                           1005 ; ---------------------------------
   4D89                    1006 _PrintFrame::
   4D89 DD E5         [15] 1007 	push	ix
   4D8B DD 21 00 00   [14] 1008 	ld	ix,#0
   4D8F DD 39         [15] 1009 	add	ix,sp
   4D91 21 F4 FF      [10] 1010 	ld	hl, #-12
   4D94 39            [11] 1011 	add	hl, sp
   4D95 F9            [ 6] 1012 	ld	sp, hl
                           1013 ;src/main.c:512: int i = xIni+3;	
   4D96 DD 4E 04      [19] 1014 	ld	c, 4 (ix)
   4D99 06 00         [ 7] 1015 	ld	b, #0x00
   4D9B 03            [ 6] 1016 	inc	bc
   4D9C 03            [ 6] 1017 	inc	bc
   4D9D 03            [ 6] 1018 	inc	bc
   4D9E DD 71 FE      [19] 1019 	ld	-2 (ix), c
   4DA1 DD 70 FF      [19] 1020 	ld	-1 (ix), b
                           1021 ;src/main.c:514: while (i < xEnd) {		
   4DA4 DD 7E 05      [19] 1022 	ld	a, 5 (ix)
   4DA7 0F            [ 4] 1023 	rrca
   4DA8 0F            [ 4] 1024 	rrca
   4DA9 0F            [ 4] 1025 	rrca
   4DAA E6 1F         [ 7] 1026 	and	a, #0x1f
   4DAC DD 77 FD      [19] 1027 	ld	-3 (ix), a
   4DAF DD 7E 05      [19] 1028 	ld	a, 5 (ix)
   4DB2 E6 07         [ 7] 1029 	and	a, #0x07
   4DB4 DD 77 FC      [19] 1030 	ld	-4 (ix), a
   4DB7 DD 7E 07      [19] 1031 	ld	a, 7 (ix)
   4DBA 0F            [ 4] 1032 	rrca
   4DBB 0F            [ 4] 1033 	rrca
   4DBC 0F            [ 4] 1034 	rrca
   4DBD E6 1F         [ 7] 1035 	and	a, #0x1f
   4DBF DD 77 FB      [19] 1036 	ld	-5 (ix), a
   4DC2 DD 7E 07      [19] 1037 	ld	a, 7 (ix)
   4DC5 E6 07         [ 7] 1038 	and	a, #0x07
   4DC7 DD 77 FA      [19] 1039 	ld	-6 (ix), a
   4DCA                    1040 00101$:
   4DCA DD 7E 06      [19] 1041 	ld	a, 6 (ix)
   4DCD DD 77 F8      [19] 1042 	ld	-8 (ix), a
   4DD0 DD 36 F9 00   [19] 1043 	ld	-7 (ix), #0x00
                           1044 ;src/main.c:515: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yIni), 3, 6, g_maskTable);	
   4DD4 DD 6E FD      [19] 1045 	ld	l, -3 (ix)
   4DD7 26 00         [ 7] 1046 	ld	h, #0x00
   4DD9 DD 5E FC      [19] 1047 	ld	e, -4 (ix)
   4DDC 16 00         [ 7] 1048 	ld	d, #0x00
                           1049 ;src/main.c:516: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yEnd), 3, 6, g_maskTable);	
   4DDE DD 4E FB      [19] 1050 	ld	c, -5 (ix)
   4DE1 06 00         [ 7] 1051 	ld	b, #0x00
   4DE3 DD 7E FA      [19] 1052 	ld	a, -6 (ix)
   4DE6 DD 77 F6      [19] 1053 	ld	-10 (ix), a
   4DE9 DD 36 F7 00   [19] 1054 	ld	-9 (ix), #0x00
                           1055 ;src/main.c:515: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yIni), 3, 6, g_maskTable);	
   4DED D5            [11] 1056 	push	de
   4DEE 5D            [ 4] 1057 	ld	e, l
   4DEF 54            [ 4] 1058 	ld	d, h
   4DF0 29            [11] 1059 	add	hl, hl
   4DF1 29            [11] 1060 	add	hl, hl
   4DF2 19            [11] 1061 	add	hl, de
   4DF3 29            [11] 1062 	add	hl, hl
   4DF4 29            [11] 1063 	add	hl, hl
   4DF5 29            [11] 1064 	add	hl, hl
   4DF6 29            [11] 1065 	add	hl, hl
   4DF7 D1            [10] 1066 	pop	de
   4DF8 E3            [19] 1067 	ex	(sp), hl
   4DF9 7B            [ 4] 1068 	ld	a, e
   4DFA 07            [ 4] 1069 	rlca
   4DFB 07            [ 4] 1070 	rlca
   4DFC 07            [ 4] 1071 	rlca
   4DFD E6 F8         [ 7] 1072 	and	a, #0xf8
   4DFF 57            [ 4] 1073 	ld	d, a
   4E00 1E 00         [ 7] 1074 	ld	e, #0x00
                           1075 ;src/main.c:516: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yEnd), 3, 6, g_maskTable);	
   4E02 69            [ 4] 1076 	ld	l, c
   4E03 60            [ 4] 1077 	ld	h, b
   4E04 29            [11] 1078 	add	hl, hl
   4E05 29            [11] 1079 	add	hl, hl
   4E06 09            [11] 1080 	add	hl, bc
   4E07 29            [11] 1081 	add	hl, hl
   4E08 29            [11] 1082 	add	hl, hl
   4E09 29            [11] 1083 	add	hl, hl
   4E0A 29            [11] 1084 	add	hl, hl
   4E0B DD 7E F6      [19] 1085 	ld	a, -10 (ix)
   4E0E 07            [ 4] 1086 	rlca
   4E0F 07            [ 4] 1087 	rlca
   4E10 07            [ 4] 1088 	rlca
   4E11 E6 F8         [ 7] 1089 	and	a, #0xf8
   4E13 47            [ 4] 1090 	ld	b, a
   4E14 0E 00         [ 7] 1091 	ld	c, #0x00
                           1092 ;src/main.c:515: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yIni), 3, 6, g_maskTable);	
   4E16 DD 7E F4      [19] 1093 	ld	a, -12 (ix)
   4E19 C6 00         [ 7] 1094 	add	a, #0x00
   4E1B DD 77 F4      [19] 1095 	ld	-12 (ix), a
   4E1E DD 7E F5      [19] 1096 	ld	a, -11 (ix)
   4E21 CE C0         [ 7] 1097 	adc	a, #0xc0
   4E23 DD 77 F5      [19] 1098 	ld	-11 (ix), a
                           1099 ;src/main.c:516: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yEnd), 3, 6, g_maskTable);	
   4E26 D5            [11] 1100 	push	de
   4E27 11 00 C0      [10] 1101 	ld	de, #0xc000
   4E2A 19            [11] 1102 	add	hl, de
   4E2B D1            [10] 1103 	pop	de
                           1104 ;src/main.c:515: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yIni), 3, 6, g_maskTable);	
   4E2C DD 7E F4      [19] 1105 	ld	a, -12 (ix)
   4E2F 83            [ 4] 1106 	add	a, e
   4E30 DD 77 F4      [19] 1107 	ld	-12 (ix), a
   4E33 DD 7E F5      [19] 1108 	ld	a, -11 (ix)
   4E36 8A            [ 4] 1109 	adc	a, d
   4E37 DD 77 F5      [19] 1110 	ld	-11 (ix), a
                           1111 ;src/main.c:516: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yEnd), 3, 6, g_maskTable);	
   4E3A 09            [11] 1112 	add	hl,bc
   4E3B DD 75 F6      [19] 1113 	ld	-10 (ix), l
   4E3E DD 74 F7      [19] 1114 	ld	-9 (ix), h
                           1115 ;src/main.c:514: while (i < xEnd) {		
   4E41 DD 7E FE      [19] 1116 	ld	a, -2 (ix)
   4E44 DD 96 F8      [19] 1117 	sub	a, -8 (ix)
   4E47 DD 7E FF      [19] 1118 	ld	a, -1 (ix)
   4E4A DD 9E F9      [19] 1119 	sbc	a, -7 (ix)
   4E4D E2 52 4E      [10] 1120 	jp	PO, 00127$
   4E50 EE 80         [ 7] 1121 	xor	a, #0x80
   4E52                    1122 00127$:
   4E52 F2 A4 4E      [10] 1123 	jp	P, 00103$
                           1124 ;src/main.c:515: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yIni), 3, 6, g_maskTable);	
   4E55 01 00 01      [10] 1125 	ld	bc, #_g_maskTable
   4E58 DD 7E F4      [19] 1126 	ld	a, -12 (ix)
   4E5B DD 86 FE      [19] 1127 	add	a, -2 (ix)
   4E5E 5F            [ 4] 1128 	ld	e, a
   4E5F DD 7E F5      [19] 1129 	ld	a, -11 (ix)
   4E62 DD 8E FF      [19] 1130 	adc	a, -1 (ix)
   4E65 57            [ 4] 1131 	ld	d, a
   4E66 C5            [11] 1132 	push	bc
   4E67 21 03 06      [10] 1133 	ld	hl, #0x0603
   4E6A E5            [11] 1134 	push	hl
   4E6B D5            [11] 1135 	push	de
   4E6C 21 A5 16      [10] 1136 	ld	hl, #_g_goldframe_2
   4E6F E5            [11] 1137 	push	hl
   4E70 CD CF 47      [17] 1138 	call	_cpct_drawSpriteMaskedAlignedTable
                           1139 ;src/main.c:516: cpct_drawSpriteMaskedAlignedTable(g_goldframe_2, cpctm_screenPtr(CPCT_VMEM_START, i, yEnd), 3, 6, g_maskTable);	
   4E73 DD 7E F6      [19] 1140 	ld	a, -10 (ix)
   4E76 DD 86 FE      [19] 1141 	add	a, -2 (ix)
   4E79 4F            [ 4] 1142 	ld	c, a
   4E7A DD 7E F7      [19] 1143 	ld	a, -9 (ix)
   4E7D DD 8E FF      [19] 1144 	adc	a, -1 (ix)
   4E80 47            [ 4] 1145 	ld	b, a
   4E81 21 00 01      [10] 1146 	ld	hl, #_g_maskTable
   4E84 E5            [11] 1147 	push	hl
   4E85 21 03 06      [10] 1148 	ld	hl, #0x0603
   4E88 E5            [11] 1149 	push	hl
   4E89 C5            [11] 1150 	push	bc
   4E8A 21 A5 16      [10] 1151 	ld	hl, #_g_goldframe_2
   4E8D E5            [11] 1152 	push	hl
   4E8E CD CF 47      [17] 1153 	call	_cpct_drawSpriteMaskedAlignedTable
                           1154 ;src/main.c:517: i += 3;
   4E91 DD 7E FE      [19] 1155 	ld	a, -2 (ix)
   4E94 C6 03         [ 7] 1156 	add	a, #0x03
   4E96 DD 77 FE      [19] 1157 	ld	-2 (ix), a
   4E99 DD 7E FF      [19] 1158 	ld	a, -1 (ix)
   4E9C CE 00         [ 7] 1159 	adc	a, #0x00
   4E9E DD 77 FF      [19] 1160 	ld	-1 (ix), a
   4EA1 C3 CA 4D      [10] 1161 	jp	00101$
   4EA4                    1162 00103$:
                           1163 ;src/main.c:520: i = yIni+6;
   4EA4 DD 4E 05      [19] 1164 	ld	c, 5 (ix)
   4EA7 06 00         [ 7] 1165 	ld	b, #0x00
   4EA9 21 06 00      [10] 1166 	ld	hl, #0x0006
   4EAC 09            [11] 1167 	add	hl,bc
   4EAD DD 75 F8      [19] 1168 	ld	-8 (ix), l
   4EB0 DD 74 F9      [19] 1169 	ld	-7 (ix), h
                           1170 ;src/main.c:521: while (i < yEnd) {		
   4EB3                    1171 00104$:
   4EB3 DD 4E 07      [19] 1172 	ld	c, 7 (ix)
   4EB6 06 00         [ 7] 1173 	ld	b, #0x00
   4EB8 DD 7E F8      [19] 1174 	ld	a, -8 (ix)
   4EBB 91            [ 4] 1175 	sub	a, c
   4EBC DD 7E F9      [19] 1176 	ld	a, -7 (ix)
   4EBF 98            [ 4] 1177 	sbc	a, b
   4EC0 E2 C5 4E      [10] 1178 	jp	PO, 00128$
   4EC3 EE 80         [ 7] 1179 	xor	a, #0x80
   4EC5                    1180 00128$:
   4EC5 F2 4F 4F      [10] 1181 	jp	P, 00106$
                           1182 ;src/main.c:522: cpct_drawSpriteMaskedAlignedTable(g_goldframe_1, cpctm_screenPtr(CPCT_VMEM_START, xIni, i), 3, 6, g_maskTable);	
   4EC8 DD 7E F8      [19] 1183 	ld	a, -8 (ix)
   4ECB DD 77 FE      [19] 1184 	ld	-2 (ix), a
   4ECE DD 7E F9      [19] 1185 	ld	a, -7 (ix)
   4ED1 DD 77 FF      [19] 1186 	ld	-1 (ix), a
   4ED4 DD CB FF 2E   [23] 1187 	sra	-1 (ix)
   4ED8 DD CB FE 1E   [23] 1188 	rr	-2 (ix)
   4EDC DD CB FF 2E   [23] 1189 	sra	-1 (ix)
   4EE0 DD CB FE 1E   [23] 1190 	rr	-2 (ix)
   4EE4 DD CB FF 2E   [23] 1191 	sra	-1 (ix)
   4EE8 DD CB FE 1E   [23] 1192 	rr	-2 (ix)
   4EEC DD 4E FE      [19] 1193 	ld	c,-2 (ix)
   4EEF DD 46 FF      [19] 1194 	ld	b,-1 (ix)
   4EF2 69            [ 4] 1195 	ld	l, c
   4EF3 60            [ 4] 1196 	ld	h, b
   4EF4 29            [11] 1197 	add	hl, hl
   4EF5 29            [11] 1198 	add	hl, hl
   4EF6 09            [11] 1199 	add	hl, bc
   4EF7 29            [11] 1200 	add	hl, hl
   4EF8 29            [11] 1201 	add	hl, hl
   4EF9 29            [11] 1202 	add	hl, hl
   4EFA 29            [11] 1203 	add	hl, hl
   4EFB 01 00 C0      [10] 1204 	ld	bc, #0xc000
   4EFE 09            [11] 1205 	add	hl, bc
   4EFF DD 7E F8      [19] 1206 	ld	a, -8 (ix)
   4F02 E6 07         [ 7] 1207 	and	a, #0x07
   4F04 07            [ 4] 1208 	rlca
   4F05 07            [ 4] 1209 	rlca
   4F06 07            [ 4] 1210 	rlca
   4F07 E6 F8         [ 7] 1211 	and	a, #0xf8
   4F09 47            [ 4] 1212 	ld	b, a
   4F0A 0E 00         [ 7] 1213 	ld	c, #0x00
   4F0C 09            [11] 1214 	add	hl,bc
   4F0D EB            [ 4] 1215 	ex	de,hl
   4F0E DD 6E 04      [19] 1216 	ld	l,4 (ix)
   4F11 26 00         [ 7] 1217 	ld	h,#0x00
   4F13 19            [11] 1218 	add	hl, de
   4F14 D5            [11] 1219 	push	de
   4F15 01 00 01      [10] 1220 	ld	bc, #_g_maskTable
   4F18 C5            [11] 1221 	push	bc
   4F19 01 03 06      [10] 1222 	ld	bc, #0x0603
   4F1C C5            [11] 1223 	push	bc
   4F1D E5            [11] 1224 	push	hl
   4F1E 21 93 16      [10] 1225 	ld	hl, #_g_goldframe_1
   4F21 E5            [11] 1226 	push	hl
   4F22 CD CF 47      [17] 1227 	call	_cpct_drawSpriteMaskedAlignedTable
   4F25 D1            [10] 1228 	pop	de
                           1229 ;src/main.c:523: cpct_drawSpriteMaskedAlignedTable(g_goldframe_1, cpctm_screenPtr(CPCT_VMEM_START, xEnd, i), 3, 6, g_maskTable);	
   4F26 01 00 01      [10] 1230 	ld	bc, #_g_maskTable
   4F29 DD 6E 06      [19] 1231 	ld	l,6 (ix)
   4F2C 26 00         [ 7] 1232 	ld	h,#0x00
   4F2E 19            [11] 1233 	add	hl, de
   4F2F C5            [11] 1234 	push	bc
   4F30 01 03 06      [10] 1235 	ld	bc, #0x0603
   4F33 C5            [11] 1236 	push	bc
   4F34 E5            [11] 1237 	push	hl
   4F35 21 93 16      [10] 1238 	ld	hl, #_g_goldframe_1
   4F38 E5            [11] 1239 	push	hl
   4F39 CD CF 47      [17] 1240 	call	_cpct_drawSpriteMaskedAlignedTable
                           1241 ;src/main.c:524: i += 6;
   4F3C DD 7E F8      [19] 1242 	ld	a, -8 (ix)
   4F3F C6 06         [ 7] 1243 	add	a, #0x06
   4F41 DD 77 F8      [19] 1244 	ld	-8 (ix), a
   4F44 DD 7E F9      [19] 1245 	ld	a, -7 (ix)
   4F47 CE 00         [ 7] 1246 	adc	a, #0x00
   4F49 DD 77 F9      [19] 1247 	ld	-7 (ix), a
   4F4C C3 B3 4E      [10] 1248 	jp	00104$
   4F4F                    1249 00106$:
                           1250 ;src/main.c:528: cpct_drawSpriteMaskedAlignedTable(g_goldframe_0, cpctm_screenPtr(CPCT_VMEM_START, xIni, yIni), 3, 6, g_maskTable);
   4F4F DD 7E F4      [19] 1251 	ld	a, -12 (ix)
   4F52 DD 86 04      [19] 1252 	add	a, 4 (ix)
   4F55 4F            [ 4] 1253 	ld	c, a
   4F56 DD 7E F5      [19] 1254 	ld	a, -11 (ix)
   4F59 CE 00         [ 7] 1255 	adc	a, #0x00
   4F5B 47            [ 4] 1256 	ld	b, a
   4F5C 21 00 01      [10] 1257 	ld	hl, #_g_maskTable
   4F5F E5            [11] 1258 	push	hl
   4F60 21 03 06      [10] 1259 	ld	hl, #0x0603
   4F63 E5            [11] 1260 	push	hl
   4F64 C5            [11] 1261 	push	bc
   4F65 21 81 16      [10] 1262 	ld	hl, #_g_goldframe_0
   4F68 E5            [11] 1263 	push	hl
   4F69 CD CF 47      [17] 1264 	call	_cpct_drawSpriteMaskedAlignedTable
                           1265 ;src/main.c:530: cpct_drawSpriteMaskedAlignedTable(g_goldframe_0, cpctm_screenPtr(CPCT_VMEM_START, xEnd, yIni), 3, 6, g_maskTable);
   4F6C DD 7E F4      [19] 1266 	ld	a, -12 (ix)
   4F6F DD 86 06      [19] 1267 	add	a, 6 (ix)
   4F72 4F            [ 4] 1268 	ld	c, a
   4F73 DD 7E F5      [19] 1269 	ld	a, -11 (ix)
   4F76 CE 00         [ 7] 1270 	adc	a, #0x00
   4F78 47            [ 4] 1271 	ld	b, a
   4F79 21 00 01      [10] 1272 	ld	hl, #_g_maskTable
   4F7C E5            [11] 1273 	push	hl
   4F7D 21 03 06      [10] 1274 	ld	hl, #0x0603
   4F80 E5            [11] 1275 	push	hl
   4F81 C5            [11] 1276 	push	bc
   4F82 21 81 16      [10] 1277 	ld	hl, #_g_goldframe_0
   4F85 E5            [11] 1278 	push	hl
   4F86 CD CF 47      [17] 1279 	call	_cpct_drawSpriteMaskedAlignedTable
                           1280 ;src/main.c:532: cpct_drawSpriteMaskedAlignedTable(g_goldframe_0, cpctm_screenPtr(CPCT_VMEM_START, xIni, yEnd), 3, 6, g_maskTable);
   4F89 DD 7E F6      [19] 1281 	ld	a, -10 (ix)
   4F8C DD 86 04      [19] 1282 	add	a, 4 (ix)
   4F8F 4F            [ 4] 1283 	ld	c, a
   4F90 DD 7E F7      [19] 1284 	ld	a, -9 (ix)
   4F93 CE 00         [ 7] 1285 	adc	a, #0x00
   4F95 47            [ 4] 1286 	ld	b, a
   4F96 21 00 01      [10] 1287 	ld	hl, #_g_maskTable
   4F99 E5            [11] 1288 	push	hl
   4F9A 21 03 06      [10] 1289 	ld	hl, #0x0603
   4F9D E5            [11] 1290 	push	hl
   4F9E C5            [11] 1291 	push	bc
   4F9F 21 81 16      [10] 1292 	ld	hl, #_g_goldframe_0
   4FA2 E5            [11] 1293 	push	hl
   4FA3 CD CF 47      [17] 1294 	call	_cpct_drawSpriteMaskedAlignedTable
                           1295 ;src/main.c:534: cpct_drawSpriteMaskedAlignedTable(g_goldframe_0, cpctm_screenPtr(CPCT_VMEM_START, xEnd, yEnd), 3, 6, g_maskTable);									
   4FA6 DD 7E F6      [19] 1296 	ld	a, -10 (ix)
   4FA9 DD 86 06      [19] 1297 	add	a, 6 (ix)
   4FAC 4F            [ 4] 1298 	ld	c, a
   4FAD DD 7E F7      [19] 1299 	ld	a, -9 (ix)
   4FB0 CE 00         [ 7] 1300 	adc	a, #0x00
   4FB2 47            [ 4] 1301 	ld	b, a
   4FB3 21 00 01      [10] 1302 	ld	hl, #_g_maskTable
   4FB6 E5            [11] 1303 	push	hl
   4FB7 21 03 06      [10] 1304 	ld	hl, #0x0603
   4FBA E5            [11] 1305 	push	hl
   4FBB C5            [11] 1306 	push	bc
   4FBC 21 81 16      [10] 1307 	ld	hl, #_g_goldframe_0
   4FBF E5            [11] 1308 	push	hl
   4FC0 CD CF 47      [17] 1309 	call	_cpct_drawSpriteMaskedAlignedTable
   4FC3 DD F9         [10] 1310 	ld	sp, ix
   4FC5 DD E1         [14] 1311 	pop	ix
   4FC7 C9            [10] 1312 	ret
                           1313 ;src/main.c:550: void PrintSmallBlueBox() {
                           1314 ;	---------------------------------
                           1315 ; Function PrintSmallBlueBox
                           1316 ; ---------------------------------
   4FC8                    1317 _PrintSmallBlueBox::
                           1318 ;src/main.c:551: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START,  6, 80), cpct_px2byteM0(4, 4), 34, 60);
   4FC8 21 04 04      [10] 1319 	ld	hl, #0x0404
   4FCB E5            [11] 1320 	push	hl
   4FCC CD 9D 46      [17] 1321 	call	_cpct_px2byteM0
   4FCF 26 00         [ 7] 1322 	ld	h, #0x00
   4FD1 01 22 3C      [10] 1323 	ld	bc, #0x3c22
   4FD4 C5            [11] 1324 	push	bc
   4FD5 E5            [11] 1325 	push	hl
   4FD6 21 26 C3      [10] 1326 	ld	hl, #0xc326
   4FD9 E5            [11] 1327 	push	hl
   4FDA CD D7 46      [17] 1328 	call	_cpct_drawSolidBox
                           1329 ;src/main.c:552: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 40, 80), cpct_px2byteM0(4, 4), 34, 60);
   4FDD 21 04 04      [10] 1330 	ld	hl, #0x0404
   4FE0 E5            [11] 1331 	push	hl
   4FE1 CD 9D 46      [17] 1332 	call	_cpct_px2byteM0
   4FE4 26 00         [ 7] 1333 	ld	h, #0x00
   4FE6 01 22 3C      [10] 1334 	ld	bc, #0x3c22
   4FE9 C5            [11] 1335 	push	bc
   4FEA E5            [11] 1336 	push	hl
   4FEB 21 48 C3      [10] 1337 	ld	hl, #0xc348
   4FEE E5            [11] 1338 	push	hl
   4FEF CD D7 46      [17] 1339 	call	_cpct_drawSolidBox
                           1340 ;src/main.c:553: PrintFrame(6,80,71,134);
   4FF2 21 47 86      [10] 1341 	ld	hl, #0x8647
   4FF5 E5            [11] 1342 	push	hl
   4FF6 21 06 50      [10] 1343 	ld	hl, #0x5006
   4FF9 E5            [11] 1344 	push	hl
   4FFA CD 89 4D      [17] 1345 	call	_PrintFrame
   4FFD F1            [10] 1346 	pop	af
   4FFE F1            [10] 1347 	pop	af
   4FFF C9            [10] 1348 	ret
                           1349 ;src/main.c:558: void PrintLevelInfo() {
                           1350 ;	---------------------------------
                           1351 ; Function PrintLevelInfo
                           1352 ; ---------------------------------
   5000                    1353 _PrintLevelInfo::
                           1354 ;src/main.c:559: PrintSmallBlueBox();	
   5000 CD C8 4F      [17] 1355 	call	_PrintSmallBlueBox
                           1356 ;src/main.c:561: if (TwoPlayers) {
   5003 3A BE 48      [13] 1357 	ld	a,(#_TwoPlayers + 0)
   5006 B7            [ 4] 1358 	or	a, a
   5007 28 49         [12] 1359 	jr	Z,00102$
                           1360 ;src/main.c:562: PrintText("LEVEL", 13, 95, 0);
   5009 21 5F 00      [10] 1361 	ld	hl, #0x005f
   500C E5            [11] 1362 	push	hl
   500D 3E 0D         [ 7] 1363 	ld	a, #0x0d
   500F F5            [11] 1364 	push	af
   5010 33            [ 6] 1365 	inc	sp
   5011 21 7B 50      [10] 1366 	ld	hl, #___str_1
   5014 E5            [11] 1367 	push	hl
   5015 CD E6 4C      [17] 1368 	call	_PrintText
   5018 F1            [10] 1369 	pop	af
                           1370 ;src/main.c:563: PrintText(lName, 31, 95, 0);
   5019 33            [ 6] 1371 	inc	sp
   501A 21 5F 00      [10] 1372 	ld	hl,#0x005f
   501D E3            [19] 1373 	ex	(sp),hl
   501E 3E 1F         [ 7] 1374 	ld	a, #0x1f
   5020 F5            [11] 1375 	push	af
   5021 33            [ 6] 1376 	inc	sp
   5022 2A BC 48      [16] 1377 	ld	hl, (_lName)
   5025 E5            [11] 1378 	push	hl
   5026 CD E6 4C      [17] 1379 	call	_PrintText
   5029 F1            [10] 1380 	pop	af
                           1381 ;src/main.c:564: PrintText("HIGH@SCORE:", 16, 118, 0);
   502A 33            [ 6] 1382 	inc	sp
   502B 21 76 00      [10] 1383 	ld	hl,#0x0076
   502E E3            [19] 1384 	ex	(sp),hl
   502F 3E 10         [ 7] 1385 	ld	a, #0x10
   5031 F5            [11] 1386 	push	af
   5032 33            [ 6] 1387 	inc	sp
   5033 21 81 50      [10] 1388 	ld	hl, #___str_2
   5036 E5            [11] 1389 	push	hl
   5037 CD E6 4C      [17] 1390 	call	_PrintText
   503A F1            [10] 1391 	pop	af
                           1392 ;src/main.c:565: PrintNumber(highScore, 4, 52, 118, 0);
   503B 33            [ 6] 1393 	inc	sp
   503C 21 76 00      [10] 1394 	ld	hl,#0x0076
   503F E3            [19] 1395 	ex	(sp),hl
   5040 21 04 34      [10] 1396 	ld	hl, #0x3404
   5043 E5            [11] 1397 	push	hl
   5044 2A C3 48      [16] 1398 	ld	hl, (_highScore)
   5047 E5            [11] 1399 	push	hl
   5048 CD 17 4C      [17] 1400 	call	_PrintNumber
   504B 21 06 00      [10] 1401 	ld	hl, #6
   504E 39            [11] 1402 	add	hl, sp
   504F F9            [ 6] 1403 	ld	sp, hl
   5050 18 23         [12] 1404 	jr	00103$
   5052                    1405 00102$:
                           1406 ;src/main.c:568: PrintText("LEVEL", 13, 107, 0);
   5052 21 6B 00      [10] 1407 	ld	hl, #0x006b
   5055 E5            [11] 1408 	push	hl
   5056 3E 0D         [ 7] 1409 	ld	a, #0x0d
   5058 F5            [11] 1410 	push	af
   5059 33            [ 6] 1411 	inc	sp
   505A 21 7B 50      [10] 1412 	ld	hl, #___str_1
   505D E5            [11] 1413 	push	hl
   505E CD E6 4C      [17] 1414 	call	_PrintText
   5061 F1            [10] 1415 	pop	af
                           1416 ;src/main.c:569: PrintText(lName, 31, 107, 0);
   5062 33            [ 6] 1417 	inc	sp
   5063 21 6B 00      [10] 1418 	ld	hl,#0x006b
   5066 E3            [19] 1419 	ex	(sp),hl
   5067 3E 1F         [ 7] 1420 	ld	a, #0x1f
   5069 F5            [11] 1421 	push	af
   506A 33            [ 6] 1422 	inc	sp
   506B 2A BC 48      [16] 1423 	ld	hl, (_lName)
   506E E5            [11] 1424 	push	hl
   506F CD E6 4C      [17] 1425 	call	_PrintText
   5072 F1            [10] 1426 	pop	af
   5073 F1            [10] 1427 	pop	af
   5074 33            [ 6] 1428 	inc	sp
   5075                    1429 00103$:
                           1430 ;src/main.c:572: Pause(1150);
   5075 21 7E 04      [10] 1431 	ld	hl, #0x047e
   5078 C3 6A 4B      [10] 1432 	jp  _Pause
   507B                    1433 ___str_1:
   507B 4C 45 56 45 4C     1434 	.ascii "LEVEL"
   5080 00                 1435 	.db 0x00
   5081                    1436 ___str_2:
   5081 48 49 47 48 40 53  1437 	.ascii "HIGH@SCORE:"
        43 4F 52 45 3A
   508C 00                 1438 	.db 0x00
                           1439 ;src/main.c:576: void PrintEndGame(u8 player) __z88dk_fastcall {
                           1440 ;	---------------------------------
                           1441 ; Function PrintEndGame
                           1442 ; ---------------------------------
   508D                    1443 _PrintEndGame::
   508D 3B            [ 6] 1444 	dec	sp
   508E FD 21 00 00   [14] 1445 	ld	iy, #0
   5092 FD 39         [15] 1446 	add	iy, sp
   5094 FD 75 00      [19] 1447 	ld	0 (iy), l
                           1448 ;src/main.c:578: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 5, 40), cpct_px2byteM0(4, 4), 35, 144);
   5097 21 04 04      [10] 1449 	ld	hl, #0x0404
   509A E5            [11] 1450 	push	hl
   509B CD 9D 46      [17] 1451 	call	_cpct_px2byteM0
   509E 26 00         [ 7] 1452 	ld	h, #0x00
   50A0 01 23 90      [10] 1453 	ld	bc, #0x9023
   50A3 C5            [11] 1454 	push	bc
   50A4 E5            [11] 1455 	push	hl
   50A5 21 95 C1      [10] 1456 	ld	hl, #0xc195
   50A8 E5            [11] 1457 	push	hl
   50A9 CD D7 46      [17] 1458 	call	_cpct_drawSolidBox
                           1459 ;src/main.c:579: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 40, 40), cpct_px2byteM0(4, 4), 35, 144);	
   50AC 21 04 04      [10] 1460 	ld	hl, #0x0404
   50AF E5            [11] 1461 	push	hl
   50B0 CD 9D 46      [17] 1462 	call	_cpct_px2byteM0
   50B3 26 00         [ 7] 1463 	ld	h, #0x00
   50B5 01 23 90      [10] 1464 	ld	bc, #0x9023
   50B8 C5            [11] 1465 	push	bc
   50B9 E5            [11] 1466 	push	hl
   50BA 21 B8 C1      [10] 1467 	ld	hl, #0xc1b8
   50BD E5            [11] 1468 	push	hl
   50BE CD D7 46      [17] 1469 	call	_cpct_drawSolidBox
                           1470 ;src/main.c:580: PrintFrame(5,40,72,178);
   50C1 21 48 B2      [10] 1471 	ld	hl, #0xb248
   50C4 E5            [11] 1472 	push	hl
   50C5 21 05 28      [10] 1473 	ld	hl, #0x2805
   50C8 E5            [11] 1474 	push	hl
   50C9 CD 89 4D      [17] 1475 	call	_PrintFrame
   50CC F1            [10] 1476 	pop	af
                           1477 ;src/main.c:582: PrintText("CONGRATULATIONS", 12, 60, 0);
   50CD 21 3C 00      [10] 1478 	ld	hl, #0x003c
   50D0 E3            [19] 1479 	ex	(sp),hl
   50D1 3E 0C         [ 7] 1480 	ld	a, #0x0c
   50D3 F5            [11] 1481 	push	af
   50D4 33            [ 6] 1482 	inc	sp
   50D5 21 71 51      [10] 1483 	ld	hl, #___str_3
   50D8 E5            [11] 1484 	push	hl
   50D9 CD E6 4C      [17] 1485 	call	_PrintText
   50DC F1            [10] 1486 	pop	af
                           1487 ;src/main.c:583: PrintText("PLAYER@@>", 12, 70, 0);
   50DD 33            [ 6] 1488 	inc	sp
   50DE 21 46 00      [10] 1489 	ld	hl,#0x0046
   50E1 E3            [19] 1490 	ex	(sp),hl
   50E2 3E 0C         [ 7] 1491 	ld	a, #0x0c
   50E4 F5            [11] 1492 	push	af
   50E5 33            [ 6] 1493 	inc	sp
   50E6 21 81 51      [10] 1494 	ld	hl, #___str_4
   50E9 E5            [11] 1495 	push	hl
   50EA CD E6 4C      [17] 1496 	call	_PrintText
   50ED F1            [10] 1497 	pop	af
   50EE F1            [10] 1498 	pop	af
   50EF 33            [ 6] 1499 	inc	sp
                           1500 ;src/main.c:584: PrintNumber(++player, 1, 33, 70, 0);
   50F0 21 00 00      [10] 1501 	ld	hl, #0+0
   50F3 39            [11] 1502 	add	hl, sp
   50F4 4E            [ 7] 1503 	ld	c, (hl)
   50F5 0C            [ 4] 1504 	inc	c
   50F6 06 00         [ 7] 1505 	ld	b, #0x00
   50F8 21 46 00      [10] 1506 	ld	hl, #0x0046
   50FB E5            [11] 1507 	push	hl
   50FC 21 01 21      [10] 1508 	ld	hl, #0x2101
   50FF E5            [11] 1509 	push	hl
   5100 C5            [11] 1510 	push	bc
   5101 CD 17 4C      [17] 1511 	call	_PrintNumber
   5104 21 06 00      [10] 1512 	ld	hl, #6
   5107 39            [11] 1513 	add	hl, sp
   5108 F9            [ 6] 1514 	ld	sp, hl
                           1515 ;src/main.c:585: PrintText("YOU@FOUND@YOUR", 12, 90, 0);
   5109 21 5A 00      [10] 1516 	ld	hl, #0x005a
   510C E5            [11] 1517 	push	hl
   510D 3E 0C         [ 7] 1518 	ld	a, #0x0c
   510F F5            [11] 1519 	push	af
   5110 33            [ 6] 1520 	inc	sp
   5111 21 8B 51      [10] 1521 	ld	hl, #___str_5
   5114 E5            [11] 1522 	push	hl
   5115 CD E6 4C      [17] 1523 	call	_PrintText
   5118 F1            [10] 1524 	pop	af
                           1525 ;src/main.c:586: PrintText("FATHERS@SPELL@BOOK", 12, 100, 0);
   5119 33            [ 6] 1526 	inc	sp
   511A 21 64 00      [10] 1527 	ld	hl,#0x0064
   511D E3            [19] 1528 	ex	(sp),hl
   511E 3E 0C         [ 7] 1529 	ld	a, #0x0c
   5120 F5            [11] 1530 	push	af
   5121 33            [ 6] 1531 	inc	sp
   5122 21 9A 51      [10] 1532 	ld	hl, #___str_6
   5125 E5            [11] 1533 	push	hl
   5126 CD E6 4C      [17] 1534 	call	_PrintText
   5129 F1            [10] 1535 	pop	af
                           1536 ;src/main.c:587: PrintText("NOW@YOUR@POWER@WILL", 12, 120, 0);
   512A 33            [ 6] 1537 	inc	sp
   512B 21 78 00      [10] 1538 	ld	hl,#0x0078
   512E E3            [19] 1539 	ex	(sp),hl
   512F 3E 0C         [ 7] 1540 	ld	a, #0x0c
   5131 F5            [11] 1541 	push	af
   5132 33            [ 6] 1542 	inc	sp
   5133 21 AD 51      [10] 1543 	ld	hl, #___str_7
   5136 E5            [11] 1544 	push	hl
   5137 CD E6 4C      [17] 1545 	call	_PrintText
   513A F1            [10] 1546 	pop	af
                           1547 ;src/main.c:588: PrintText("BE@UNSURPASSED", 12, 130, 0);
   513B 33            [ 6] 1548 	inc	sp
   513C 21 82 00      [10] 1549 	ld	hl,#0x0082
   513F E3            [19] 1550 	ex	(sp),hl
   5140 3E 0C         [ 7] 1551 	ld	a, #0x0c
   5142 F5            [11] 1552 	push	af
   5143 33            [ 6] 1553 	inc	sp
   5144 21 C1 51      [10] 1554 	ld	hl, #___str_8
   5147 E5            [11] 1555 	push	hl
   5148 CD E6 4C      [17] 1556 	call	_PrintText
   514B F1            [10] 1557 	pop	af
                           1558 ;src/main.c:589: PrintText(";THANKS@FOR@PLAYING;", 10, 160, 0);	
   514C 33            [ 6] 1559 	inc	sp
   514D 21 A0 00      [10] 1560 	ld	hl,#0x00a0
   5150 E3            [19] 1561 	ex	(sp),hl
   5151 3E 0A         [ 7] 1562 	ld	a, #0x0a
   5153 F5            [11] 1563 	push	af
   5154 33            [ 6] 1564 	inc	sp
   5155 21 D0 51      [10] 1565 	ld	hl, #___str_9
   5158 E5            [11] 1566 	push	hl
   5159 CD E6 4C      [17] 1567 	call	_PrintText
   515C F1            [10] 1568 	pop	af
   515D F1            [10] 1569 	pop	af
   515E 33            [ 6] 1570 	inc	sp
                           1571 ;src/main.c:591: Pause(1000);
   515F 21 E8 03      [10] 1572 	ld	hl, #0x03e8
   5162 CD 6A 4B      [17] 1573 	call	_Pause
                           1574 ;src/main.c:592: while (!cpct_isAnyKeyPressed()); // wait for a key press
   5165                    1575 00101$:
   5165 CD CF 45      [17] 1576 	call	_cpct_isAnyKeyPressed
   5168 7D            [ 4] 1577 	ld	a, l
   5169 B7            [ 4] 1578 	or	a, a
   516A 28 F9         [12] 1579 	jr	Z,00101$
                           1580 ;src/main.c:593: InitGame();
   516C CD 44 8A      [17] 1581 	call	_InitGame
   516F 33            [ 6] 1582 	inc	sp
   5170 C9            [10] 1583 	ret
   5171                    1584 ___str_3:
   5171 43 4F 4E 47 52 41  1585 	.ascii "CONGRATULATIONS"
        54 55 4C 41 54 49
        4F 4E 53
   5180 00                 1586 	.db 0x00
   5181                    1587 ___str_4:
   5181 50 4C 41 59 45 52  1588 	.ascii "PLAYER@@>"
        40 40 3E
   518A 00                 1589 	.db 0x00
   518B                    1590 ___str_5:
   518B 59 4F 55 40 46 4F  1591 	.ascii "YOU@FOUND@YOUR"
        55 4E 44 40 59 4F
        55 52
   5199 00                 1592 	.db 0x00
   519A                    1593 ___str_6:
   519A 46 41 54 48 45 52  1594 	.ascii "FATHERS@SPELL@BOOK"
        53 40 53 50 45 4C
        4C 40 42 4F 4F 4B
   51AC 00                 1595 	.db 0x00
   51AD                    1596 ___str_7:
   51AD 4E 4F 57 40 59 4F  1597 	.ascii "NOW@YOUR@POWER@WILL"
        55 52 40 50 4F 57
        45 52 40 57 49 4C
        4C
   51C0 00                 1598 	.db 0x00
   51C1                    1599 ___str_8:
   51C1 42 45 40 55 4E 53  1600 	.ascii "BE@UNSURPASSED"
        55 52 50 41 53 53
        45 44
   51CF 00                 1601 	.db 0x00
   51D0                    1602 ___str_9:
   51D0 3B 54 48 41 4E 4B  1603 	.ascii ";THANKS@FOR@PLAYING;"
        53 40 46 4F 52 40
        50 4C 41 59 49 4E
        47 3B
   51E4 00                 1604 	.db 0x00
                           1605 ;src/main.c:598: void PrintTip() {
                           1606 ;	---------------------------------
                           1607 ; Function PrintTip
                           1608 ; ---------------------------------
   51E5                    1609 _PrintTip::
                           1610 ;src/main.c:599: PrintSprite(&spr[0]);
   51E5 21 F3 48      [10] 1611 	ld	hl, #_spr
   51E8 CD 0A 62      [17] 1612 	call	_PrintSprite
                           1613 ;src/main.c:600: PrintSmallBlueBox();
   51EB CD C8 4F      [17] 1614 	call	_PrintSmallBlueBox
                           1615 ;src/main.c:601: switch (nTip) {
   51EE FD 21 D9 48   [14] 1616 	ld	iy, #_nTip
   51F2 FD 7E 00      [19] 1617 	ld	a, 0 (iy)
   51F5 B7            [ 4] 1618 	or	a, a
   51F6 28 18         [12] 1619 	jr	Z,00101$
   51F8 FD 7E 00      [19] 1620 	ld	a, 0 (iy)
   51FB 3D            [ 4] 1621 	dec	a
   51FC 28 49         [12] 1622 	jr	Z,00102$
   51FE FD 7E 00      [19] 1623 	ld	a, 0 (iy)
   5201 D6 02         [ 7] 1624 	sub	a, #0x02
   5203 28 78         [12] 1625 	jr	Z,00103$
   5205 FD 7E 00      [19] 1626 	ld	a, 0 (iy)
   5208 D6 03         [ 7] 1627 	sub	a, #0x03
   520A CA B3 52      [10] 1628 	jp	Z,00104$
   520D C3 E7 52      [10] 1629 	jp	00105$
                           1630 ;src/main.c:602: case 0: {
   5210                    1631 00101$:
                           1632 ;src/main.c:603: PrintText("TIP:@TAKE@THE@EXACT", 11, 95, 0);
   5210 21 5F 00      [10] 1633 	ld	hl, #0x005f
   5213 E5            [11] 1634 	push	hl
   5214 3E 0B         [ 7] 1635 	ld	a, #0x0b
   5216 F5            [11] 1636 	push	af
   5217 33            [ 6] 1637 	inc	sp
   5218 21 FB 52      [10] 1638 	ld	hl, #___str_10
   521B E5            [11] 1639 	push	hl
   521C CD E6 4C      [17] 1640 	call	_PrintText
   521F F1            [10] 1641 	pop	af
                           1642 ;src/main.c:604: PrintText("COINS@TO@BUY@THE", 16, 105, 0);
   5220 33            [ 6] 1643 	inc	sp
   5221 21 69 00      [10] 1644 	ld	hl,#0x0069
   5224 E3            [19] 1645 	ex	(sp),hl
   5225 3E 10         [ 7] 1646 	ld	a, #0x10
   5227 F5            [11] 1647 	push	af
   5228 33            [ 6] 1648 	inc	sp
   5229 21 0F 53      [10] 1649 	ld	hl, #___str_11
   522C E5            [11] 1650 	push	hl
   522D CD E6 4C      [17] 1651 	call	_PrintText
   5230 F1            [10] 1652 	pop	af
                           1653 ;src/main.c:605: PrintText("REQUIRED@INGREDIENT", 11, 115, 0);
   5231 33            [ 6] 1654 	inc	sp
   5232 21 73 00      [10] 1655 	ld	hl,#0x0073
   5235 E3            [19] 1656 	ex	(sp),hl
   5236 3E 0B         [ 7] 1657 	ld	a, #0x0b
   5238 F5            [11] 1658 	push	af
   5239 33            [ 6] 1659 	inc	sp
   523A 21 20 53      [10] 1660 	ld	hl, #___str_12
   523D E5            [11] 1661 	push	hl
   523E CD E6 4C      [17] 1662 	call	_PrintText
   5241 F1            [10] 1663 	pop	af
   5242 F1            [10] 1664 	pop	af
   5243 33            [ 6] 1665 	inc	sp
                           1666 ;src/main.c:606: break;
   5244 C3 E7 52      [10] 1667 	jp	00105$
                           1668 ;src/main.c:608: case 1: {
   5247                    1669 00102$:
                           1670 ;src/main.c:609: PrintText("TIP:@GO@TO@THE@SHOP", 11, 95, 0);
   5247 21 5F 00      [10] 1671 	ld	hl, #0x005f
   524A E5            [11] 1672 	push	hl
   524B 3E 0B         [ 7] 1673 	ld	a, #0x0b
   524D F5            [11] 1674 	push	af
   524E 33            [ 6] 1675 	inc	sp
   524F 21 34 53      [10] 1676 	ld	hl, #___str_13
   5252 E5            [11] 1677 	push	hl
   5253 CD E6 4C      [17] 1678 	call	_PrintText
   5256 F1            [10] 1679 	pop	af
                           1680 ;src/main.c:610: PrintText("WHEN@YOU@CAN@GET@THE", 10, 105, 0);
   5257 33            [ 6] 1681 	inc	sp
   5258 21 69 00      [10] 1682 	ld	hl,#0x0069
   525B E3            [19] 1683 	ex	(sp),hl
   525C 3E 0A         [ 7] 1684 	ld	a, #0x0a
   525E F5            [11] 1685 	push	af
   525F 33            [ 6] 1686 	inc	sp
   5260 21 48 53      [10] 1687 	ld	hl, #___str_14
   5263 E5            [11] 1688 	push	hl
   5264 CD E6 4C      [17] 1689 	call	_PrintText
   5267 F1            [10] 1690 	pop	af
                           1691 ;src/main.c:611: PrintText("INGREDIENT@YOU@NEED", 11, 115, 0);
   5268 33            [ 6] 1692 	inc	sp
   5269 21 73 00      [10] 1693 	ld	hl,#0x0073
   526C E3            [19] 1694 	ex	(sp),hl
   526D 3E 0B         [ 7] 1695 	ld	a, #0x0b
   526F F5            [11] 1696 	push	af
   5270 33            [ 6] 1697 	inc	sp
   5271 21 5D 53      [10] 1698 	ld	hl, #___str_15
   5274 E5            [11] 1699 	push	hl
   5275 CD E6 4C      [17] 1700 	call	_PrintText
   5278 F1            [10] 1701 	pop	af
   5279 F1            [10] 1702 	pop	af
   527A 33            [ 6] 1703 	inc	sp
                           1704 ;src/main.c:612: break;
   527B 18 6A         [12] 1705 	jr	00105$
                           1706 ;src/main.c:614: case 2: {
   527D                    1707 00103$:
                           1708 ;src/main.c:615: PrintText("TIP:@USE@THE@WELL", 14, 95, 0);
   527D 21 5F 00      [10] 1709 	ld	hl, #0x005f
   5280 E5            [11] 1710 	push	hl
   5281 3E 0E         [ 7] 1711 	ld	a, #0x0e
   5283 F5            [11] 1712 	push	af
   5284 33            [ 6] 1713 	inc	sp
   5285 21 71 53      [10] 1714 	ld	hl, #___str_16
   5288 E5            [11] 1715 	push	hl
   5289 CD E6 4C      [17] 1716 	call	_PrintText
   528C F1            [10] 1717 	pop	af
                           1718 ;src/main.c:616: PrintText("WHEN@YOU@TAKE@MORE", 13, 105, 0);
   528D 33            [ 6] 1719 	inc	sp
   528E 21 69 00      [10] 1720 	ld	hl,#0x0069
   5291 E3            [19] 1721 	ex	(sp),hl
   5292 3E 0D         [ 7] 1722 	ld	a, #0x0d
   5294 F5            [11] 1723 	push	af
   5295 33            [ 6] 1724 	inc	sp
   5296 21 83 53      [10] 1725 	ld	hl, #___str_17
   5299 E5            [11] 1726 	push	hl
   529A CD E6 4C      [17] 1727 	call	_PrintText
   529D F1            [10] 1728 	pop	af
                           1729 ;src/main.c:617: PrintText("COINS@THAN@YOU@NEED", 11, 115, 0);
   529E 33            [ 6] 1730 	inc	sp
   529F 21 73 00      [10] 1731 	ld	hl,#0x0073
   52A2 E3            [19] 1732 	ex	(sp),hl
   52A3 3E 0B         [ 7] 1733 	ld	a, #0x0b
   52A5 F5            [11] 1734 	push	af
   52A6 33            [ 6] 1735 	inc	sp
   52A7 21 96 53      [10] 1736 	ld	hl, #___str_18
   52AA E5            [11] 1737 	push	hl
   52AB CD E6 4C      [17] 1738 	call	_PrintText
   52AE F1            [10] 1739 	pop	af
   52AF F1            [10] 1740 	pop	af
   52B0 33            [ 6] 1741 	inc	sp
                           1742 ;src/main.c:618: break;
   52B1 18 34         [12] 1743 	jr	00105$
                           1744 ;src/main.c:620: case 3: {
   52B3                    1745 00104$:
                           1746 ;src/main.c:621: PrintText("TIP:@GO@TO@THE@EXIT", 11, 95, 0);
   52B3 21 5F 00      [10] 1747 	ld	hl, #0x005f
   52B6 E5            [11] 1748 	push	hl
   52B7 3E 0B         [ 7] 1749 	ld	a, #0x0b
   52B9 F5            [11] 1750 	push	af
   52BA 33            [ 6] 1751 	inc	sp
   52BB 21 AA 53      [10] 1752 	ld	hl, #___str_19
   52BE E5            [11] 1753 	push	hl
   52BF CD E6 4C      [17] 1754 	call	_PrintText
   52C2 F1            [10] 1755 	pop	af
                           1756 ;src/main.c:622: PrintText("DOOR@WHEN@YOU@HAVE", 13, 105, 0);
   52C3 33            [ 6] 1757 	inc	sp
   52C4 21 69 00      [10] 1758 	ld	hl,#0x0069
   52C7 E3            [19] 1759 	ex	(sp),hl
   52C8 3E 0D         [ 7] 1760 	ld	a, #0x0d
   52CA F5            [11] 1761 	push	af
   52CB 33            [ 6] 1762 	inc	sp
   52CC 21 BE 53      [10] 1763 	ld	hl, #___str_20
   52CF E5            [11] 1764 	push	hl
   52D0 CD E6 4C      [17] 1765 	call	_PrintText
   52D3 F1            [10] 1766 	pop	af
                           1767 ;src/main.c:623: PrintText("THE@RIGHT@POTION", 15, 115, 0);
   52D4 33            [ 6] 1768 	inc	sp
   52D5 21 73 00      [10] 1769 	ld	hl,#0x0073
   52D8 E3            [19] 1770 	ex	(sp),hl
   52D9 3E 0F         [ 7] 1771 	ld	a, #0x0f
   52DB F5            [11] 1772 	push	af
   52DC 33            [ 6] 1773 	inc	sp
   52DD 21 D1 53      [10] 1774 	ld	hl, #___str_21
   52E0 E5            [11] 1775 	push	hl
   52E1 CD E6 4C      [17] 1776 	call	_PrintText
   52E4 F1            [10] 1777 	pop	af
   52E5 F1            [10] 1778 	pop	af
   52E6 33            [ 6] 1779 	inc	sp
                           1780 ;src/main.c:625: }
   52E7                    1781 00105$:
                           1782 ;src/main.c:626: Pause(400);
   52E7 21 90 01      [10] 1783 	ld	hl, #0x0190
   52EA CD 6A 4B      [17] 1784 	call	_Pause
                           1785 ;src/main.c:627: while (!cpct_isAnyKeyPressed()); // wait for a key press
   52ED                    1786 00106$:
   52ED CD CF 45      [17] 1787 	call	_cpct_isAnyKeyPressed
   52F0 7D            [ 4] 1788 	ld	a, l
   52F1 B7            [ 4] 1789 	or	a, a
   52F2 28 F9         [12] 1790 	jr	Z,00106$
                           1791 ;src/main.c:628: nTip++; // next message
   52F4 21 D9 48      [10] 1792 	ld	hl, #_nTip+0
   52F7 34            [11] 1793 	inc	(hl)
                           1794 ;src/main.c:629: PrintMap();
   52F8 C3 01 4C      [10] 1795 	jp  _PrintMap
   52FB                    1796 ___str_10:
   52FB 54 49 50 3A 40 54  1797 	.ascii "TIP:@TAKE@THE@EXACT"
        41 4B 45 40 54 48
        45 40 45 58 41 43
        54
   530E 00                 1798 	.db 0x00
   530F                    1799 ___str_11:
   530F 43 4F 49 4E 53 40  1800 	.ascii "COINS@TO@BUY@THE"
        54 4F 40 42 55 59
        40 54 48 45
   531F 00                 1801 	.db 0x00
   5320                    1802 ___str_12:
   5320 52 45 51 55 49 52  1803 	.ascii "REQUIRED@INGREDIENT"
        45 44 40 49 4E 47
        52 45 44 49 45 4E
        54
   5333 00                 1804 	.db 0x00
   5334                    1805 ___str_13:
   5334 54 49 50 3A 40 47  1806 	.ascii "TIP:@GO@TO@THE@SHOP"
        4F 40 54 4F 40 54
        48 45 40 53 48 4F
        50
   5347 00                 1807 	.db 0x00
   5348                    1808 ___str_14:
   5348 57 48 45 4E 40 59  1809 	.ascii "WHEN@YOU@CAN@GET@THE"
        4F 55 40 43 41 4E
        40 47 45 54 40 54
        48 45
   535C 00                 1810 	.db 0x00
   535D                    1811 ___str_15:
   535D 49 4E 47 52 45 44  1812 	.ascii "INGREDIENT@YOU@NEED"
        49 45 4E 54 40 59
        4F 55 40 4E 45 45
        44
   5370 00                 1813 	.db 0x00
   5371                    1814 ___str_16:
   5371 54 49 50 3A 40 55  1815 	.ascii "TIP:@USE@THE@WELL"
        53 45 40 54 48 45
        40 57 45 4C 4C
   5382 00                 1816 	.db 0x00
   5383                    1817 ___str_17:
   5383 57 48 45 4E 40 59  1818 	.ascii "WHEN@YOU@TAKE@MORE"
        4F 55 40 54 41 4B
        45 40 4D 4F 52 45
   5395 00                 1819 	.db 0x00
   5396                    1820 ___str_18:
   5396 43 4F 49 4E 53 40  1821 	.ascii "COINS@THAN@YOU@NEED"
        54 48 41 4E 40 59
        4F 55 40 4E 45 45
        44
   53A9 00                 1822 	.db 0x00
   53AA                    1823 ___str_19:
   53AA 54 49 50 3A 40 47  1824 	.ascii "TIP:@GO@TO@THE@EXIT"
        4F 40 54 4F 40 54
        48 45 40 45 58 49
        54
   53BD 00                 1825 	.db 0x00
   53BE                    1826 ___str_20:
   53BE 44 4F 4F 52 40 57  1827 	.ascii "DOOR@WHEN@YOU@HAVE"
        48 45 4E 40 59 4F
        55 40 48 41 56 45
   53D0 00                 1828 	.db 0x00
   53D1                    1829 ___str_21:
   53D1 54 48 45 40 52 49  1830 	.ascii "THE@RIGHT@POTION"
        47 48 54 40 50 4F
        54 49 4F 4E
   53E1 00                 1831 	.db 0x00
                           1832 ;src/main.c:646: cpct_keyID ReturnKeyPressed() {
                           1833 ;	---------------------------------
                           1834 ; Function ReturnKeyPressed
                           1835 ; ---------------------------------
   53E2                    1836 _ReturnKeyPressed::
   53E2 DD E5         [15] 1837 	push	ix
   53E4 DD 21 00 00   [14] 1838 	ld	ix,#0
   53E8 DD 39         [15] 1839 	add	ix,sp
   53EA F5            [11] 1840 	push	af
                           1841 ;src/main.c:647: u8 i = 10, *keys = cpct_keyboardStatusBuffer + 9;
   53EB 0E 0A         [ 7] 1842 	ld	c, #0x0a
                           1843 ;src/main.c:650: do { cpct_scanKeyboard(); } while ( ! cpct_isAnyKeyPressed() );
   53ED                    1844 00101$:
   53ED C5            [11] 1845 	push	bc
   53EE CD 0A 48      [17] 1846 	call	_cpct_scanKeyboard
   53F1 CD CF 45      [17] 1847 	call	_cpct_isAnyKeyPressed
   53F4 C1            [10] 1848 	pop	bc
   53F5 7D            [ 4] 1849 	ld	a, l
   53F6 B7            [ 4] 1850 	or	a, a
   53F7 28 F4         [12] 1851 	jr	Z,00101$
                           1852 ;src/main.c:652: do {
   53F9 11 9C 45      [10] 1853 	ld	de, #(_cpct_keyboardStatusBuffer + 0x0009)
   53FC 06 0A         [ 7] 1854 	ld	b, #0x0a
   53FE                    1855 00106$:
                           1856 ;src/main.c:653: keypressed = *keys ^ 0xFF;
   53FE 1A            [ 7] 1857 	ld	a, (de)
   53FF EE FF         [ 7] 1858 	xor	a, #0xff
   5401 6F            [ 4] 1859 	ld	l, a
   5402 26 00         [ 7] 1860 	ld	h, #0x00
   5404 33            [ 6] 1861 	inc	sp
   5405 33            [ 6] 1862 	inc	sp
   5406 E5            [11] 1863 	push	hl
                           1864 ;src/main.c:654: if (keypressed)
   5407 7C            [ 4] 1865 	ld	a, h
   5408 B5            [ 4] 1866 	or	a,l
   5409 28 0B         [12] 1867 	jr	Z,00105$
                           1868 ;src/main.c:655: return (keypressed << 8) + (i - 1); 
   540B DD 66 FE      [19] 1869 	ld	h, -2 (ix)
   540E 2E 00         [ 7] 1870 	ld	l, #0x00
   5410 06 00         [ 7] 1871 	ld	b, #0x00
   5412 0B            [ 6] 1872 	dec	bc
   5413 09            [11] 1873 	add	hl, bc
   5414 18 0A         [12] 1874 	jr	00109$
   5416                    1875 00105$:
                           1876 ;src/main.c:656: keys--;
   5416 1B            [ 6] 1877 	dec	de
                           1878 ;src/main.c:657: } while(--i);    
   5417 05            [ 4] 1879 	dec	b
   5418 78            [ 4] 1880 	ld	a,b
   5419 4F            [ 4] 1881 	ld	c,a
   541A B7            [ 4] 1882 	or	a, a
   541B 20 E1         [12] 1883 	jr	NZ,00106$
                           1884 ;src/main.c:658: return 0;
   541D 21 00 00      [10] 1885 	ld	hl, #0x0000
   5420                    1886 00109$:
   5420 DD F9         [10] 1887 	ld	sp, ix
   5422 DD E1         [14] 1888 	pop	ix
   5424 C9            [10] 1889 	ret
                           1890 ;src/main.c:664: void Wait4Key(cpct_keyID key) {
                           1891 ;	---------------------------------
                           1892 ; Function Wait4Key
                           1893 ; ---------------------------------
   5425                    1894 _Wait4Key::
                           1895 ;src/main.c:665: do cpct_scanKeyboard_f();
   5425                    1896 00101$:
   5425 CD E0 43      [17] 1897 	call	_cpct_scanKeyboard_f
                           1898 ;src/main.c:666: while(!cpct_isKeyPressed(key));
   5428 C1            [10] 1899 	pop	bc
   5429 E1            [10] 1900 	pop	hl
   542A E5            [11] 1901 	push	hl
   542B C5            [11] 1902 	push	bc
   542C CD D4 43      [17] 1903 	call	_cpct_isKeyPressed
   542F 7D            [ 4] 1904 	ld	a, l
   5430 B7            [ 4] 1905 	or	a, a
   5431 28 F2         [12] 1906 	jr	Z,00101$
                           1907 ;src/main.c:667: do cpct_scanKeyboard_f();
   5433                    1908 00104$:
   5433 CD E0 43      [17] 1909 	call	_cpct_scanKeyboard_f
                           1910 ;src/main.c:668: while(cpct_isKeyPressed(key));
   5436 C1            [10] 1911 	pop	bc
   5437 E1            [10] 1912 	pop	hl
   5438 E5            [11] 1913 	push	hl
   5439 C5            [11] 1914 	push	bc
   543A CD D4 43      [17] 1915 	call	_cpct_isKeyPressed
   543D 7D            [ 4] 1916 	ld	a, l
   543E B7            [ 4] 1917 	or	a, a
   543F 20 F2         [12] 1918 	jr	NZ,00104$
   5441 C9            [10] 1919 	ret
                           1920 ;src/main.c:673: cpct_keyID RedefineKey(u8 *info) {
                           1921 ;	---------------------------------
                           1922 ; Function RedefineKey
                           1923 ; ---------------------------------
   5442                    1924 _RedefineKey::
                           1925 ;src/main.c:675: PrintText(info, 28, 120, 1);       
   5442 21 78 01      [10] 1926 	ld	hl, #0x0178
   5445 E5            [11] 1927 	push	hl
   5446 3E 1C         [ 7] 1928 	ld	a, #0x1c
   5448 F5            [11] 1929 	push	af
   5449 33            [ 6] 1930 	inc	sp
   544A 21 05 00      [10] 1931 	ld	hl, #5
   544D 39            [11] 1932 	add	hl, sp
   544E 4E            [ 7] 1933 	ld	c, (hl)
   544F 23            [ 6] 1934 	inc	hl
   5450 46            [ 7] 1935 	ld	b, (hl)
   5451 C5            [11] 1936 	push	bc
   5452 CD E6 4C      [17] 1937 	call	_PrintText
   5455 F1            [10] 1938 	pop	af
   5456 F1            [10] 1939 	pop	af
   5457 33            [ 6] 1940 	inc	sp
                           1941 ;src/main.c:676: key = ReturnKeyPressed();
   5458 CD E2 53      [17] 1942 	call	_ReturnKeyPressed
                           1943 ;src/main.c:677: Wait4Key(key);
   545B E5            [11] 1944 	push	hl
   545C E5            [11] 1945 	push	hl
   545D CD 25 54      [17] 1946 	call	_Wait4Key
   5460 F1            [10] 1947 	pop	af
   5461 E1            [10] 1948 	pop	hl
                           1949 ;src/main.c:678: return key;    
   5462 C9            [10] 1950 	ret
                           1951 ;src/main.c:695: void RefreshHighScore(u8 player) __z88dk_fastcall {
                           1952 ;	---------------------------------
                           1953 ; Function RefreshHighScore
                           1954 ; ---------------------------------
   5463                    1955 _RefreshHighScore::
   5463 5D            [ 4] 1956 	ld	e, l
                           1957 ;src/main.c:696: if (highScore < score[player])
   5464 01 BF 48      [10] 1958 	ld	bc, #_score+0
   5467 6B            [ 4] 1959 	ld	l, e
   5468 26 00         [ 7] 1960 	ld	h, #0x00
   546A 29            [11] 1961 	add	hl, hl
   546B 09            [11] 1962 	add	hl, bc
   546C 4E            [ 7] 1963 	ld	c, (hl)
   546D 23            [ 6] 1964 	inc	hl
   546E 46            [ 7] 1965 	ld	b, (hl)
   546F FD 21 C3 48   [14] 1966 	ld	iy, #_highScore
   5473 FD 7E 00      [19] 1967 	ld	a, 0 (iy)
   5476 91            [ 4] 1968 	sub	a, c
   5477 FD 7E 01      [19] 1969 	ld	a, 1 (iy)
   547A 98            [ 4] 1970 	sbc	a, b
   547B D0            [11] 1971 	ret	NC
                           1972 ;src/main.c:697: highScore = score[player];
   547C ED 43 C3 48   [20] 1973 	ld	(_highScore), bc
   5480 C9            [10] 1974 	ret
                           1975 ;src/main.c:702: void InitScoreboard() {
                           1976 ;	---------------------------------
                           1977 ; Function InitScoreboard
                           1978 ; ---------------------------------
   5481                    1979 _InitScoreboard::
                           1980 ;src/main.c:703: nPObj = 0;
   5481 21 67 49      [10] 1981 	ld	hl,#_nPObj + 0
   5484 36 00         [10] 1982 	ld	(hl), #0x00
                           1983 ;src/main.c:704: PrintFrame(0,0,77,24);	
   5486 21 4D 18      [10] 1984 	ld	hl, #0x184d
   5489 E5            [11] 1985 	push	hl
   548A 21 00 00      [10] 1986 	ld	hl, #0x0000
   548D E5            [11] 1987 	push	hl
   548E CD 89 4D      [17] 1988 	call	_PrintFrame
   5491 F1            [10] 1989 	pop	af
                           1990 ;src/main.c:707: cpct_drawSpriteMaskedAlignedTable(g_sorcerer1_06, cpct_getScreenPtr(CPCT_VMEM_START,  3, 4), SPR_W, SPR_H, g_maskTable);
   5492 21 03 04      [10] 1991 	ld	hl, #0x0403
   5495 E3            [19] 1992 	ex	(sp),hl
   5496 21 00 C0      [10] 1993 	ld	hl, #0xc000
   5499 E5            [11] 1994 	push	hl
   549A CD B9 47      [17] 1995 	call	_cpct_getScreenPtr
   549D 01 D7 2D      [10] 1996 	ld	bc, #_g_sorcerer1_06+0
   54A0 11 00 01      [10] 1997 	ld	de, #_g_maskTable
   54A3 D5            [11] 1998 	push	de
   54A4 11 05 0C      [10] 1999 	ld	de, #0x0c05
   54A7 D5            [11] 2000 	push	de
   54A8 E5            [11] 2001 	push	hl
   54A9 C5            [11] 2002 	push	bc
   54AA CD CF 47      [17] 2003 	call	_cpct_drawSpriteMaskedAlignedTable
                           2004 ;src/main.c:708: PrintText("0000", 14, 6, 1); // player score
   54AD 21 06 01      [10] 2005 	ld	hl, #0x0106
   54B0 E5            [11] 2006 	push	hl
   54B1 3E 0E         [ 7] 2007 	ld	a, #0x0e
   54B3 F5            [11] 2008 	push	af
   54B4 33            [ 6] 2009 	inc	sp
   54B5 21 D1 55      [10] 2010 	ld	hl, #___str_22
   54B8 E5            [11] 2011 	push	hl
   54B9 CD E6 4C      [17] 2012 	call	_PrintText
   54BC F1            [10] 2013 	pop	af
                           2014 ;src/main.c:709: PrintObject(nPObj, 28, 6); PrintText("00", 32, 6, 1);	// coins score	
   54BD 33            [ 6] 2015 	inc	sp
   54BE 21 1C 06      [10] 2016 	ld	hl,#0x061c
   54C1 E3            [19] 2017 	ex	(sp),hl
   54C2 3A 67 49      [13] 2018 	ld	a, (_nPObj)
   54C5 F5            [11] 2019 	push	af
   54C6 33            [ 6] 2020 	inc	sp
   54C7 CD 5C 57      [17] 2021 	call	_PrintObject
   54CA 33            [ 6] 2022 	inc	sp
   54CB 21 06 01      [10] 2023 	ld	hl,#0x0106
   54CE E3            [19] 2024 	ex	(sp),hl
   54CF 3E 20         [ 7] 2025 	ld	a, #0x20
   54D1 F5            [11] 2026 	push	af
   54D2 33            [ 6] 2027 	inc	sp
   54D3 21 D6 55      [10] 2028 	ld	hl, #___str_23
   54D6 E5            [11] 2029 	push	hl
   54D7 CD E6 4C      [17] 2030 	call	_PrintText
   54DA F1            [10] 2031 	pop	af
                           2032 ;src/main.c:710: PrintText("<", 28, 15, 1); PrintText("00", 32, 15, 1);	// potion score
   54DB 33            [ 6] 2033 	inc	sp
   54DC 21 0F 01      [10] 2034 	ld	hl,#0x010f
   54DF E3            [19] 2035 	ex	(sp),hl
   54E0 3E 1C         [ 7] 2036 	ld	a, #0x1c
   54E2 F5            [11] 2037 	push	af
   54E3 33            [ 6] 2038 	inc	sp
   54E4 21 D9 55      [10] 2039 	ld	hl, #___str_24
   54E7 E5            [11] 2040 	push	hl
   54E8 CD E6 4C      [17] 2041 	call	_PrintText
   54EB F1            [10] 2042 	pop	af
   54EC 33            [ 6] 2043 	inc	sp
   54ED 21 0F 01      [10] 2044 	ld	hl,#0x010f
   54F0 E3            [19] 2045 	ex	(sp),hl
   54F1 3E 20         [ 7] 2046 	ld	a, #0x20
   54F3 F5            [11] 2047 	push	af
   54F4 33            [ 6] 2048 	inc	sp
   54F5 21 D6 55      [10] 2049 	ld	hl, #___str_23
   54F8 E5            [11] 2050 	push	hl
   54F9 CD E6 4C      [17] 2051 	call	_PrintText
   54FC F1            [10] 2052 	pop	af
   54FD F1            [10] 2053 	pop	af
   54FE 33            [ 6] 2054 	inc	sp
                           2055 ;src/main.c:713: if (TwoPlayers) {
   54FF 3A BE 48      [13] 2056 	ld	a,(#_TwoPlayers + 0)
   5502 B7            [ 4] 2057 	or	a, a
   5503 28 6E         [12] 2058 	jr	Z,00102$
                           2059 ;src/main.c:714: cpct_drawSpriteMaskedAlignedTable(g_sorcerer2_06, cpct_getScreenPtr(CPCT_VMEM_START, 42, 4), SPR_W, SPR_H, g_maskTable);
   5505 21 2A 04      [10] 2060 	ld	hl, #0x042a
   5508 E5            [11] 2061 	push	hl
   5509 21 00 C0      [10] 2062 	ld	hl, #0xc000
   550C E5            [11] 2063 	push	hl
   550D CD B9 47      [17] 2064 	call	_cpct_getScreenPtr
   5510 01 7F 2B      [10] 2065 	ld	bc, #_g_sorcerer2_06+0
   5513 11 00 01      [10] 2066 	ld	de, #_g_maskTable
   5516 D5            [11] 2067 	push	de
   5517 11 05 0C      [10] 2068 	ld	de, #0x0c05
   551A D5            [11] 2069 	push	de
   551B E5            [11] 2070 	push	hl
   551C C5            [11] 2071 	push	bc
   551D CD CF 47      [17] 2072 	call	_cpct_drawSpriteMaskedAlignedTable
                           2073 ;src/main.c:715: PrintText("0000", 53, 6, 1); // player score
   5520 21 06 01      [10] 2074 	ld	hl, #0x0106
   5523 E5            [11] 2075 	push	hl
   5524 3E 35         [ 7] 2076 	ld	a, #0x35
   5526 F5            [11] 2077 	push	af
   5527 33            [ 6] 2078 	inc	sp
   5528 21 D1 55      [10] 2079 	ld	hl, #___str_22
   552B E5            [11] 2080 	push	hl
   552C CD E6 4C      [17] 2081 	call	_PrintText
   552F F1            [10] 2082 	pop	af
                           2083 ;src/main.c:716: PrintObject(nPObj, 67, 6); PrintText("00", 71, 6, 1);	// coins score
   5530 33            [ 6] 2084 	inc	sp
   5531 21 43 06      [10] 2085 	ld	hl,#0x0643
   5534 E3            [19] 2086 	ex	(sp),hl
   5535 3A 67 49      [13] 2087 	ld	a, (_nPObj)
   5538 F5            [11] 2088 	push	af
   5539 33            [ 6] 2089 	inc	sp
   553A CD 5C 57      [17] 2090 	call	_PrintObject
   553D 33            [ 6] 2091 	inc	sp
   553E 21 06 01      [10] 2092 	ld	hl,#0x0106
   5541 E3            [19] 2093 	ex	(sp),hl
   5542 3E 47         [ 7] 2094 	ld	a, #0x47
   5544 F5            [11] 2095 	push	af
   5545 33            [ 6] 2096 	inc	sp
   5546 21 D6 55      [10] 2097 	ld	hl, #___str_23
   5549 E5            [11] 2098 	push	hl
   554A CD E6 4C      [17] 2099 	call	_PrintText
   554D F1            [10] 2100 	pop	af
                           2101 ;src/main.c:717: PrintText("<", 67, 15, 1); PrintText("00", 71, 15, 1);	// potion score
   554E 33            [ 6] 2102 	inc	sp
   554F 21 0F 01      [10] 2103 	ld	hl,#0x010f
   5552 E3            [19] 2104 	ex	(sp),hl
   5553 3E 43         [ 7] 2105 	ld	a, #0x43
   5555 F5            [11] 2106 	push	af
   5556 33            [ 6] 2107 	inc	sp
   5557 21 D9 55      [10] 2108 	ld	hl, #___str_24
   555A E5            [11] 2109 	push	hl
   555B CD E6 4C      [17] 2110 	call	_PrintText
   555E F1            [10] 2111 	pop	af
   555F 33            [ 6] 2112 	inc	sp
   5560 21 0F 01      [10] 2113 	ld	hl,#0x010f
   5563 E3            [19] 2114 	ex	(sp),hl
   5564 3E 47         [ 7] 2115 	ld	a, #0x47
   5566 F5            [11] 2116 	push	af
   5567 33            [ 6] 2117 	inc	sp
   5568 21 D6 55      [10] 2118 	ld	hl, #___str_23
   556B E5            [11] 2119 	push	hl
   556C CD E6 4C      [17] 2120 	call	_PrintText
   556F F1            [10] 2121 	pop	af
   5570 F1            [10] 2122 	pop	af
   5571 33            [ 6] 2123 	inc	sp
   5572 C9            [10] 2124 	ret
   5573                    2125 00102$:
                           2126 ;src/main.c:720: PrintText("HIGH:", 44, 6 , 1);
   5573 21 06 01      [10] 2127 	ld	hl, #0x0106
   5576 E5            [11] 2128 	push	hl
   5577 3E 2C         [ 7] 2129 	ld	a, #0x2c
   5579 F5            [11] 2130 	push	af
   557A 33            [ 6] 2131 	inc	sp
   557B 21 DB 55      [10] 2132 	ld	hl, #___str_25
   557E E5            [11] 2133 	push	hl
   557F CD E6 4C      [17] 2134 	call	_PrintText
   5582 F1            [10] 2135 	pop	af
                           2136 ;src/main.c:721: PrintText("00000", 61, 6, 1); 
   5583 33            [ 6] 2137 	inc	sp
   5584 21 06 01      [10] 2138 	ld	hl,#0x0106
   5587 E3            [19] 2139 	ex	(sp),hl
   5588 3E 3D         [ 7] 2140 	ld	a, #0x3d
   558A F5            [11] 2141 	push	af
   558B 33            [ 6] 2142 	inc	sp
   558C 21 E1 55      [10] 2143 	ld	hl, #___str_26
   558F E5            [11] 2144 	push	hl
   5590 CD E6 4C      [17] 2145 	call	_PrintText
   5593 F1            [10] 2146 	pop	af
                           2147 ;src/main.c:722: PrintNumber(highScore, 5, 61, 6, 1); // high score
   5594 33            [ 6] 2148 	inc	sp
   5595 21 06 01      [10] 2149 	ld	hl,#0x0106
   5598 E3            [19] 2150 	ex	(sp),hl
   5599 21 05 3D      [10] 2151 	ld	hl, #0x3d05
   559C E5            [11] 2152 	push	hl
   559D 2A C3 48      [16] 2153 	ld	hl, (_highScore)
   55A0 E5            [11] 2154 	push	hl
   55A1 CD 17 4C      [17] 2155 	call	_PrintNumber
   55A4 21 06 00      [10] 2156 	ld	hl, #6
   55A7 39            [11] 2157 	add	hl, sp
   55A8 F9            [ 6] 2158 	ld	sp, hl
                           2159 ;src/main.c:723: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 60, 16), cpct_px2byteM0(BG_COLOR, BG_COLOR), 16, 8); // key
   55A9 21 01 01      [10] 2160 	ld	hl, #0x0101
   55AC E5            [11] 2161 	push	hl
   55AD CD 9D 46      [17] 2162 	call	_cpct_px2byteM0
   55B0 26 00         [ 7] 2163 	ld	h, #0x00
   55B2 01 10 08      [10] 2164 	ld	bc, #0x0810
   55B5 C5            [11] 2165 	push	bc
   55B6 E5            [11] 2166 	push	hl
   55B7 21 DC C0      [10] 2167 	ld	hl, #0xc0dc
   55BA E5            [11] 2168 	push	hl
   55BB CD D7 46      [17] 2169 	call	_cpct_drawSolidBox
                           2170 ;src/main.c:724: PrintText("KEY:", 47, 15, 1);
   55BE 21 0F 01      [10] 2171 	ld	hl, #0x010f
   55C1 E5            [11] 2172 	push	hl
   55C2 3E 2F         [ 7] 2173 	ld	a, #0x2f
   55C4 F5            [11] 2174 	push	af
   55C5 33            [ 6] 2175 	inc	sp
   55C6 21 E7 55      [10] 2176 	ld	hl, #___str_27
   55C9 E5            [11] 2177 	push	hl
   55CA CD E6 4C      [17] 2178 	call	_PrintText
   55CD F1            [10] 2179 	pop	af
   55CE F1            [10] 2180 	pop	af
   55CF 33            [ 6] 2181 	inc	sp
   55D0 C9            [10] 2182 	ret
   55D1                    2183 ___str_22:
   55D1 30 30 30 30        2184 	.ascii "0000"
   55D5 00                 2185 	.db 0x00
   55D6                    2186 ___str_23:
   55D6 30 30              2187 	.ascii "00"
   55D8 00                 2188 	.db 0x00
   55D9                    2189 ___str_24:
   55D9 3C                 2190 	.ascii "<"
   55DA 00                 2191 	.db 0x00
   55DB                    2192 ___str_25:
   55DB 48 49 47 48 3A     2193 	.ascii "HIGH:"
   55E0 00                 2194 	.db 0x00
   55E1                    2195 ___str_26:
   55E1 30 30 30 30 30     2196 	.ascii "00000"
   55E6 00                 2197 	.db 0x00
   55E7                    2198 ___str_27:
   55E7 4B 45 59 3A        2199 	.ascii "KEY:"
   55EB 00                 2200 	.db 0x00
                           2201 ;src/main.c:730: void RefreshScoreboard() { 
                           2202 ;	---------------------------------
                           2203 ; Function RefreshScoreboard
                           2204 ; ---------------------------------
   55EC                    2205 _RefreshScoreboard::
                           2206 ;src/main.c:732: PrintNumber(spr[0].lives_speed,  1,  8, 6, 1); 		// lives
   55EC 21 FE 48      [10] 2207 	ld	hl, #_spr + 11
   55EF 4E            [ 7] 2208 	ld	c, (hl)
   55F0 06 00         [ 7] 2209 	ld	b, #0x00
   55F2 21 06 01      [10] 2210 	ld	hl, #0x0106
   55F5 E5            [11] 2211 	push	hl
   55F6 21 01 08      [10] 2212 	ld	hl, #0x0801
   55F9 E5            [11] 2213 	push	hl
   55FA C5            [11] 2214 	push	bc
   55FB CD 17 4C      [17] 2215 	call	_PrintNumber
   55FE 21 06 00      [10] 2216 	ld	hl, #6
   5601 39            [11] 2217 	add	hl, sp
   5602 F9            [ 6] 2218 	ld	sp, hl
                           2219 ;src/main.c:733: PrintNumber(score[0], 4, 14, 6, 1);		 			// current score
   5603 2A BF 48      [16] 2220 	ld	hl, (#_score + 0)
   5606 01 06 01      [10] 2221 	ld	bc, #0x0106
   5609 C5            [11] 2222 	push	bc
   560A 01 04 0E      [10] 2223 	ld	bc, #0x0e04
   560D C5            [11] 2224 	push	bc
   560E E5            [11] 2225 	push	hl
   560F CD 17 4C      [17] 2226 	call	_PrintNumber
   5612 21 06 00      [10] 2227 	ld	hl, #6
   5615 39            [11] 2228 	add	hl, sp
   5616 F9            [ 6] 2229 	ld	sp, hl
                           2230 ;src/main.c:734: PrintText("0", 32, 6, 1);
   5617 21 06 01      [10] 2231 	ld	hl, #0x0106
   561A E5            [11] 2232 	push	hl
   561B 3E 20         [ 7] 2233 	ld	a, #0x20
   561D F5            [11] 2234 	push	af
   561E 33            [ 6] 2235 	inc	sp
   561F 21 03 57      [10] 2236 	ld	hl, #___str_28
   5622 E5            [11] 2237 	push	hl
   5623 CD E6 4C      [17] 2238 	call	_PrintText
   5626 F1            [10] 2239 	pop	af
   5627 F1            [10] 2240 	pop	af
   5628 33            [ 6] 2241 	inc	sp
                           2242 ;src/main.c:735: PrintNumber(coinScore[0], 2, 32, 6, 1); 			// coin score
   5629 21 C7 48      [10] 2243 	ld	hl, #_coinScore + 0
   562C 4E            [ 7] 2244 	ld	c, (hl)
   562D 06 00         [ 7] 2245 	ld	b, #0x00
   562F 21 06 01      [10] 2246 	ld	hl, #0x0106
   5632 E5            [11] 2247 	push	hl
   5633 21 02 20      [10] 2248 	ld	hl, #0x2002
   5636 E5            [11] 2249 	push	hl
   5637 C5            [11] 2250 	push	bc
   5638 CD 17 4C      [17] 2251 	call	_PrintNumber
   563B 21 06 00      [10] 2252 	ld	hl, #6
   563E 39            [11] 2253 	add	hl, sp
   563F F9            [ 6] 2254 	ld	sp, hl
                           2255 ;src/main.c:736: PrintText("0", 32, 15, 1);
   5640 21 0F 01      [10] 2256 	ld	hl, #0x010f
   5643 E5            [11] 2257 	push	hl
   5644 3E 20         [ 7] 2258 	ld	a, #0x20
   5646 F5            [11] 2259 	push	af
   5647 33            [ 6] 2260 	inc	sp
   5648 21 03 57      [10] 2261 	ld	hl, #___str_28
   564B E5            [11] 2262 	push	hl
   564C CD E6 4C      [17] 2263 	call	_PrintText
   564F F1            [10] 2264 	pop	af
   5650 F1            [10] 2265 	pop	af
   5651 33            [ 6] 2266 	inc	sp
                           2267 ;src/main.c:737: PrintNumber(potScore[0], 2, 32, 15, 1); 			// potion score
   5652 21 C5 48      [10] 2268 	ld	hl, #_potScore + 0
   5655 4E            [ 7] 2269 	ld	c, (hl)
   5656 06 00         [ 7] 2270 	ld	b, #0x00
   5658 21 0F 01      [10] 2271 	ld	hl, #0x010f
   565B E5            [11] 2272 	push	hl
   565C 21 02 20      [10] 2273 	ld	hl, #0x2002
   565F E5            [11] 2274 	push	hl
   5660 C5            [11] 2275 	push	bc
   5661 CD 17 4C      [17] 2276 	call	_PrintNumber
   5664 21 06 00      [10] 2277 	ld	hl, #6
   5667 39            [11] 2278 	add	hl, sp
   5668 F9            [ 6] 2279 	ld	sp, hl
                           2280 ;src/main.c:739: if (TwoPlayers) {
   5669 3A BE 48      [13] 2281 	ld	a,(#_TwoPlayers + 0)
   566C B7            [ 4] 2282 	or	a, a
   566D CA EE 56      [10] 2283 	jp	Z, 00102$
                           2284 ;src/main.c:740: PrintNumber(spr[1].lives_speed,  1, 47, 6, 1); 	// lives
   5670 21 0D 49      [10] 2285 	ld	hl, #_spr + 26
   5673 4E            [ 7] 2286 	ld	c, (hl)
   5674 06 00         [ 7] 2287 	ld	b, #0x00
   5676 21 06 01      [10] 2288 	ld	hl, #0x0106
   5679 E5            [11] 2289 	push	hl
   567A 21 01 2F      [10] 2290 	ld	hl, #0x2f01
   567D E5            [11] 2291 	push	hl
   567E C5            [11] 2292 	push	bc
   567F CD 17 4C      [17] 2293 	call	_PrintNumber
   5682 21 06 00      [10] 2294 	ld	hl, #6
   5685 39            [11] 2295 	add	hl, sp
   5686 F9            [ 6] 2296 	ld	sp, hl
                           2297 ;src/main.c:741: PrintNumber(score[1], 4, 53, 6, 1);		 		// current score
   5687 2A C1 48      [16] 2298 	ld	hl, (#_score + 2)
   568A 01 06 01      [10] 2299 	ld	bc, #0x0106
   568D C5            [11] 2300 	push	bc
   568E 01 04 35      [10] 2301 	ld	bc, #0x3504
   5691 C5            [11] 2302 	push	bc
   5692 E5            [11] 2303 	push	hl
   5693 CD 17 4C      [17] 2304 	call	_PrintNumber
   5696 21 06 00      [10] 2305 	ld	hl, #6
   5699 39            [11] 2306 	add	hl, sp
   569A F9            [ 6] 2307 	ld	sp, hl
                           2308 ;src/main.c:742: PrintText("0", 71, 6, 1);
   569B 21 06 01      [10] 2309 	ld	hl, #0x0106
   569E E5            [11] 2310 	push	hl
   569F 3E 47         [ 7] 2311 	ld	a, #0x47
   56A1 F5            [11] 2312 	push	af
   56A2 33            [ 6] 2313 	inc	sp
   56A3 21 03 57      [10] 2314 	ld	hl, #___str_28
   56A6 E5            [11] 2315 	push	hl
   56A7 CD E6 4C      [17] 2316 	call	_PrintText
   56AA F1            [10] 2317 	pop	af
   56AB F1            [10] 2318 	pop	af
   56AC 33            [ 6] 2319 	inc	sp
                           2320 ;src/main.c:743: PrintNumber(coinScore[1], 2, 71, 6, 1); 		// coin score
   56AD 21 C8 48      [10] 2321 	ld	hl, #_coinScore + 1
   56B0 4E            [ 7] 2322 	ld	c, (hl)
   56B1 06 00         [ 7] 2323 	ld	b, #0x00
   56B3 21 06 01      [10] 2324 	ld	hl, #0x0106
   56B6 E5            [11] 2325 	push	hl
   56B7 21 02 47      [10] 2326 	ld	hl, #0x4702
   56BA E5            [11] 2327 	push	hl
   56BB C5            [11] 2328 	push	bc
   56BC CD 17 4C      [17] 2329 	call	_PrintNumber
   56BF 21 06 00      [10] 2330 	ld	hl, #6
   56C2 39            [11] 2331 	add	hl, sp
   56C3 F9            [ 6] 2332 	ld	sp, hl
                           2333 ;src/main.c:744: PrintText("0", 71, 15, 1);
   56C4 21 0F 01      [10] 2334 	ld	hl, #0x010f
   56C7 E5            [11] 2335 	push	hl
   56C8 3E 47         [ 7] 2336 	ld	a, #0x47
   56CA F5            [11] 2337 	push	af
   56CB 33            [ 6] 2338 	inc	sp
   56CC 21 03 57      [10] 2339 	ld	hl, #___str_28
   56CF E5            [11] 2340 	push	hl
   56D0 CD E6 4C      [17] 2341 	call	_PrintText
   56D3 F1            [10] 2342 	pop	af
   56D4 F1            [10] 2343 	pop	af
   56D5 33            [ 6] 2344 	inc	sp
                           2345 ;src/main.c:745: PrintNumber(potScore[1], 2, 71, 15, 1); 		// potion score
   56D6 21 C6 48      [10] 2346 	ld	hl, #_potScore + 1
   56D9 4E            [ 7] 2347 	ld	c, (hl)
   56DA 06 00         [ 7] 2348 	ld	b, #0x00
   56DC 21 0F 01      [10] 2349 	ld	hl, #0x010f
   56DF E5            [11] 2350 	push	hl
   56E0 21 02 47      [10] 2351 	ld	hl, #0x4702
   56E3 E5            [11] 2352 	push	hl
   56E4 C5            [11] 2353 	push	bc
   56E5 CD 17 4C      [17] 2354 	call	_PrintNumber
   56E8 21 06 00      [10] 2355 	ld	hl, #6
   56EB 39            [11] 2356 	add	hl, sp
   56EC F9            [ 6] 2357 	ld	sp, hl
   56ED C9            [10] 2358 	ret
   56EE                    2359 00102$:
                           2360 ;src/main.c:748: PrintNumber(highScore, 5, 61, 6, 1);
   56EE 21 06 01      [10] 2361 	ld	hl, #0x0106
   56F1 E5            [11] 2362 	push	hl
   56F2 21 05 3D      [10] 2363 	ld	hl, #0x3d05
   56F5 E5            [11] 2364 	push	hl
   56F6 2A C3 48      [16] 2365 	ld	hl, (_highScore)
   56F9 E5            [11] 2366 	push	hl
   56FA CD 17 4C      [17] 2367 	call	_PrintNumber
   56FD 21 06 00      [10] 2368 	ld	hl, #6
   5700 39            [11] 2369 	add	hl, sp
   5701 F9            [ 6] 2370 	ld	sp, hl
   5702 C9            [10] 2371 	ret
   5703                    2372 ___str_28:
   5703 30                 2373 	.ascii "0"
   5704 00                 2374 	.db 0x00
                           2375 ;src/main.c:765: void ResetObjData(u8 player) __z88dk_fastcall {
                           2376 ;	---------------------------------
                           2377 ; Function ResetObjData
                           2378 ; ---------------------------------
   5705                    2379 _ResetObjData::
   5705 4D            [ 4] 2380 	ld	c, l
                           2381 ;src/main.c:766: spr[player].objNum_mov = 0; // number of objects
   5706 11 F3 48      [10] 2382 	ld	de, #_spr+0
   5709 06 00         [ 7] 2383 	ld	b,#0x00
   570B 69            [ 4] 2384 	ld	l, c
   570C 60            [ 4] 2385 	ld	h, b
   570D 29            [11] 2386 	add	hl, hl
   570E 09            [11] 2387 	add	hl, bc
   570F 29            [11] 2388 	add	hl, hl
   5710 09            [11] 2389 	add	hl, bc
   5711 29            [11] 2390 	add	hl, hl
   5712 09            [11] 2391 	add	hl, bc
   5713 19            [11] 2392 	add	hl, de
   5714 11 0C 00      [10] 2393 	ld	de, #0x000c
   5717 19            [11] 2394 	add	hl, de
   5718 36 00         [10] 2395 	ld	(hl), #0x00
                           2396 ;src/main.c:767: potScore[player] = 0; // potion value
   571A 11 C5 48      [10] 2397 	ld	de, #_potScore+0
   571D 69            [ 4] 2398 	ld	l,c
   571E 26 00         [ 7] 2399 	ld	h,#0x00
   5720 19            [11] 2400 	add	hl, de
   5721 36 00         [10] 2401 	ld	(hl), #0x00
                           2402 ;src/main.c:768: coinScore[player] = 0; // money
   5723 11 C7 48      [10] 2403 	ld	de, #_coinScore+0
   5726 69            [ 4] 2404 	ld	l,c
   5727 26 00         [ 7] 2405 	ld	h,#0x00
   5729 19            [11] 2406 	add	hl, de
   572A 36 00         [10] 2407 	ld	(hl), #0x00
                           2408 ;src/main.c:770: if (player == 0)
   572C 79            [ 4] 2409 	ld	a, c
   572D B7            [ 4] 2410 	or	a, a
   572E 20 16         [12] 2411 	jr	NZ,00102$
                           2412 ;src/main.c:771: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 7, 16), cpct_px2byteM0(BG_COLOR, BG_COLOR), 20, 8);
   5730 21 01 01      [10] 2413 	ld	hl, #0x0101
   5733 E5            [11] 2414 	push	hl
   5734 CD 9D 46      [17] 2415 	call	_cpct_px2byteM0
   5737 26 00         [ 7] 2416 	ld	h, #0x00
   5739 01 14 08      [10] 2417 	ld	bc, #0x0814
   573C C5            [11] 2418 	push	bc
   573D E5            [11] 2419 	push	hl
   573E 21 A7 C0      [10] 2420 	ld	hl, #0xc0a7
   5741 E5            [11] 2421 	push	hl
   5742 CD D7 46      [17] 2422 	call	_cpct_drawSolidBox
   5745 C9            [10] 2423 	ret
   5746                    2424 00102$:
                           2425 ;src/main.c:773: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 46, 16), cpct_px2byteM0(BG_COLOR, BG_COLOR), 20, 8);
   5746 21 01 01      [10] 2426 	ld	hl, #0x0101
   5749 E5            [11] 2427 	push	hl
   574A CD 9D 46      [17] 2428 	call	_cpct_px2byteM0
   574D 26 00         [ 7] 2429 	ld	h, #0x00
   574F 01 14 08      [10] 2430 	ld	bc, #0x0814
   5752 C5            [11] 2431 	push	bc
   5753 E5            [11] 2432 	push	hl
   5754 21 CE C0      [10] 2433 	ld	hl, #0xc0ce
   5757 E5            [11] 2434 	push	hl
   5758 CD D7 46      [17] 2435 	call	_cpct_drawSolidBox
   575B C9            [10] 2436 	ret
                           2437 ;src/main.c:778: void PrintObject(u8 nObj, u8 objX, u8 objY) {
                           2438 ;	---------------------------------
                           2439 ; Function PrintObject
                           2440 ; ---------------------------------
   575C                    2441 _PrintObject::
   575C DD E5         [15] 2442 	push	ix
   575E DD 21 00 00   [14] 2443 	ld	ix,#0
   5762 DD 39         [15] 2444 	add	ix,sp
                           2445 ;src/main.c:780: OBJ_W, OBJ_H, g_maskTable);
                           2446 ;src/main.c:779: cpct_drawSpriteMaskedAlignedTable(g_objects[nObj], cpct_getScreenPtr(CPCT_VMEM_START, objX, objY),
   5764 DD 66 06      [19] 2447 	ld	h, 6 (ix)
   5767 DD 6E 05      [19] 2448 	ld	l, 5 (ix)
   576A E5            [11] 2449 	push	hl
   576B 21 00 C0      [10] 2450 	ld	hl, #0xc000
   576E E5            [11] 2451 	push	hl
   576F CD B9 47      [17] 2452 	call	_cpct_getScreenPtr
   5772 4D            [ 4] 2453 	ld	c, l
   5773 44            [ 4] 2454 	ld	b, h
   5774 11 7C 41      [10] 2455 	ld	de, #_g_objects+0
   5777 DD 6E 04      [19] 2456 	ld	l, 4 (ix)
   577A 26 00         [ 7] 2457 	ld	h, #0x00
   577C 29            [11] 2458 	add	hl, hl
   577D 29            [11] 2459 	add	hl, hl
   577E 29            [11] 2460 	add	hl, hl
   577F 29            [11] 2461 	add	hl, hl
   5780 29            [11] 2462 	add	hl, hl
   5781 19            [11] 2463 	add	hl, de
   5782 11 00 01      [10] 2464 	ld	de, #_g_maskTable
   5785 D5            [11] 2465 	push	de
   5786 11 04 08      [10] 2466 	ld	de, #0x0804
   5789 D5            [11] 2467 	push	de
   578A C5            [11] 2468 	push	bc
   578B E5            [11] 2469 	push	hl
   578C CD CF 47      [17] 2470 	call	_cpct_drawSpriteMaskedAlignedTable
   578F DD E1         [14] 2471 	pop	ix
   5791 C9            [10] 2472 	ret
                           2473 ;src/main.c:785: void DeleteObject(u8 index) __z88dk_fastcall {
                           2474 ;	---------------------------------
                           2475 ; Function DeleteObject
                           2476 ; ---------------------------------
   5792                    2477 _DeleteObject::
   5792 DD E5         [15] 2478 	push	ix
   5794 DD 21 00 00   [14] 2479 	ld	ix,#0
   5798 DD 39         [15] 2480 	add	ix,sp
   579A F5            [11] 2481 	push	af
   579B 3B            [ 6] 2482 	dec	sp
   579C 4D            [ 4] 2483 	ld	c, l
                           2484 ;src/main.c:787: 2 + (objX[index] & 1), 2 + (objY[index] & 3 ? 1 : 0), MAP_W, 
   579D 11 65 49      [10] 2485 	ld	de, #_objY+0
   57A0 69            [ 4] 2486 	ld	l,c
   57A1 26 00         [ 7] 2487 	ld	h,#0x00
   57A3 19            [11] 2488 	add	hl, de
   57A4 46            [ 7] 2489 	ld	b, (hl)
   57A5 78            [ 4] 2490 	ld	a, b
   57A6 E6 03         [ 7] 2491 	and	a, #0x03
   57A8 28 04         [12] 2492 	jr	Z,00103$
   57AA 3E 01         [ 7] 2493 	ld	a, #0x01
   57AC 18 02         [12] 2494 	jr	00104$
   57AE                    2495 00103$:
   57AE 3E 00         [ 7] 2496 	ld	a, #0x00
   57B0                    2497 00104$:
   57B0 C6 02         [ 7] 2498 	add	a, #0x02
   57B2 DD 77 FF      [19] 2499 	ld	-1 (ix), a
   57B5 11 63 49      [10] 2500 	ld	de, #_objX+0
   57B8 69            [ 4] 2501 	ld	l,c
   57B9 26 00         [ 7] 2502 	ld	h,#0x00
   57BB 19            [11] 2503 	add	hl, de
   57BC 5E            [ 7] 2504 	ld	e, (hl)
   57BD 7B            [ 4] 2505 	ld	a, e
   57BE E6 01         [ 7] 2506 	and	a, #0x01
   57C0 57            [ 4] 2507 	ld	d, a
   57C1 14            [ 4] 2508 	inc	d
   57C2 14            [ 4] 2509 	inc	d
                           2510 ;src/main.c:786: cpct_etm_drawTileBox2x4(objX[index] / 2, (objY[index] - ORIG_MAP_Y) / 4,
   57C3 48            [ 4] 2511 	ld	c, b
   57C4 06 00         [ 7] 2512 	ld	b, #0x00
   57C6 79            [ 4] 2513 	ld	a, c
   57C7 C6 E0         [ 7] 2514 	add	a, #0xe0
   57C9 DD 77 FD      [19] 2515 	ld	-3 (ix), a
   57CC 78            [ 4] 2516 	ld	a, b
   57CD CE FF         [ 7] 2517 	adc	a, #0xff
   57CF DD 77 FE      [19] 2518 	ld	-2 (ix), a
   57D2 E1            [10] 2519 	pop	hl
   57D3 E5            [11] 2520 	push	hl
   57D4 DD CB FE 7E   [20] 2521 	bit	7, -2 (ix)
   57D8 28 04         [12] 2522 	jr	Z,00105$
   57DA 21 E3 FF      [10] 2523 	ld	hl, #0xffe3
   57DD 09            [11] 2524 	add	hl, bc
   57DE                    2525 00105$:
   57DE CB 2C         [ 8] 2526 	sra	h
   57E0 CB 1D         [ 8] 2527 	rr	l
   57E2 CB 2C         [ 8] 2528 	sra	h
   57E4 CB 1D         [ 8] 2529 	rr	l
   57E6 4D            [ 4] 2530 	ld	c, l
   57E7 CB 3B         [ 8] 2531 	srl	e
   57E9 21 71 0F      [10] 2532 	ld	hl, #0x0f71
   57EC E5            [11] 2533 	push	hl
   57ED 21 40 C1      [10] 2534 	ld	hl, #0xc140
   57F0 E5            [11] 2535 	push	hl
   57F1 3E 28         [ 7] 2536 	ld	a, #0x28
   57F3 F5            [11] 2537 	push	af
   57F4 33            [ 6] 2538 	inc	sp
   57F5 DD 7E FF      [19] 2539 	ld	a, -1 (ix)
   57F8 F5            [11] 2540 	push	af
   57F9 33            [ 6] 2541 	inc	sp
   57FA D5            [11] 2542 	push	de
   57FB 33            [ 6] 2543 	inc	sp
   57FC 51            [ 4] 2544 	ld	d, c
   57FD D5            [11] 2545 	push	de
   57FE CD FB 44      [17] 2546 	call	_cpct_etm_drawTileBox2x4
   5801 DD F9         [10] 2547 	ld	sp, ix
   5803 DD E1         [14] 2548 	pop	ix
   5805 C9            [10] 2549 	ret
                           2550 ;src/main.c:793: void PrintDust(u8 nFrame, u8 index) {
                           2551 ;	---------------------------------
                           2552 ; Function PrintDust
                           2553 ; ---------------------------------
   5806                    2554 _PrintDust::
   5806 DD E5         [15] 2555 	push	ix
   5808 DD 21 00 00   [14] 2556 	ld	ix,#0
   580C DD 39         [15] 2557 	add	ix,sp
                           2558 ;src/main.c:796: OBJ_W, OBJ_H, g_maskTable);
                           2559 ;src/main.c:795: cpct_getScreenPtr(CPCT_VMEM_START, objX[index], objY[index]), 
   580E 01 65 49      [10] 2560 	ld	bc, #_objY+0
   5811 DD 6E 05      [19] 2561 	ld	l,5 (ix)
   5814 26 00         [ 7] 2562 	ld	h,#0x00
   5816 09            [11] 2563 	add	hl, bc
   5817 56            [ 7] 2564 	ld	d, (hl)
   5818 01 63 49      [10] 2565 	ld	bc, #_objX+0
   581B DD 6E 05      [19] 2566 	ld	l,5 (ix)
   581E 26 00         [ 7] 2567 	ld	h,#0x00
   5820 09            [11] 2568 	add	hl, bc
   5821 5E            [ 7] 2569 	ld	e, (hl)
   5822 D5            [11] 2570 	push	de
   5823 21 00 C0      [10] 2571 	ld	hl, #0xc000
   5826 E5            [11] 2572 	push	hl
   5827 CD B9 47      [17] 2573 	call	_cpct_getScreenPtr
   582A 4D            [ 4] 2574 	ld	c, l
   582B 44            [ 4] 2575 	ld	b, h
                           2576 ;src/main.c:794: cpct_drawSpriteMaskedAlignedTable(g_dust[nFrame], 
   582C 11 A4 3C      [10] 2577 	ld	de, #_g_dust+0
   582F DD 6E 04      [19] 2578 	ld	l, 4 (ix)
   5832 26 00         [ 7] 2579 	ld	h, #0x00
   5834 29            [11] 2580 	add	hl, hl
   5835 29            [11] 2581 	add	hl, hl
   5836 29            [11] 2582 	add	hl, hl
   5837 29            [11] 2583 	add	hl, hl
   5838 29            [11] 2584 	add	hl, hl
   5839 19            [11] 2585 	add	hl, de
   583A 11 00 01      [10] 2586 	ld	de, #_g_maskTable
   583D D5            [11] 2587 	push	de
   583E 11 04 08      [10] 2588 	ld	de, #0x0804
   5841 D5            [11] 2589 	push	de
   5842 C5            [11] 2590 	push	bc
   5843 E5            [11] 2591 	push	hl
   5844 CD CF 47      [17] 2592 	call	_cpct_drawSpriteMaskedAlignedTable
   5847 DD E1         [14] 2593 	pop	ix
   5849 C9            [10] 2594 	ret
                           2595 ;src/main.c:801: void PrintCoin(u8 nFrame, u8 index) {
                           2596 ;	---------------------------------
                           2597 ; Function PrintCoin
                           2598 ; ---------------------------------
   584A                    2599 _PrintCoin::
   584A DD E5         [15] 2600 	push	ix
   584C DD 21 00 00   [14] 2601 	ld	ix,#0
   5850 DD 39         [15] 2602 	add	ix,sp
                           2603 ;src/main.c:804: 3, OBJ_H, g_maskTable);
                           2604 ;src/main.c:803: cpct_getScreenPtr(CPCT_VMEM_START, objX[index], objY[index]), 
   5852 01 65 49      [10] 2605 	ld	bc, #_objY+0
   5855 DD 6E 05      [19] 2606 	ld	l,5 (ix)
   5858 26 00         [ 7] 2607 	ld	h,#0x00
   585A 09            [11] 2608 	add	hl, bc
   585B 56            [ 7] 2609 	ld	d, (hl)
   585C 01 63 49      [10] 2610 	ld	bc, #_objX+0
   585F DD 6E 05      [19] 2611 	ld	l,5 (ix)
   5862 26 00         [ 7] 2612 	ld	h,#0x00
   5864 09            [11] 2613 	add	hl, bc
   5865 5E            [ 7] 2614 	ld	e, (hl)
   5866 D5            [11] 2615 	push	de
   5867 21 00 C0      [10] 2616 	ld	hl, #0xc000
   586A E5            [11] 2617 	push	hl
   586B CD B9 47      [17] 2618 	call	_cpct_getScreenPtr
   586E 4D            [ 4] 2619 	ld	c, l
   586F 44            [ 4] 2620 	ld	b, h
                           2621 ;src/main.c:802: cpct_drawSpriteMaskedAlignedTable(g_coin[nFrame], 
   5870 DD 5E 04      [19] 2622 	ld	e,4 (ix)
   5873 16 00         [ 7] 2623 	ld	d,#0x00
   5875 6B            [ 4] 2624 	ld	l, e
   5876 62            [ 4] 2625 	ld	h, d
   5877 29            [11] 2626 	add	hl, hl
   5878 19            [11] 2627 	add	hl, de
   5879 29            [11] 2628 	add	hl, hl
   587A 29            [11] 2629 	add	hl, hl
   587B 29            [11] 2630 	add	hl, hl
   587C 11 5C 3C      [10] 2631 	ld	de, #_g_coin
   587F 19            [11] 2632 	add	hl, de
   5880 11 00 01      [10] 2633 	ld	de, #_g_maskTable
   5883 D5            [11] 2634 	push	de
   5884 11 03 08      [10] 2635 	ld	de, #0x0803
   5887 D5            [11] 2636 	push	de
   5888 C5            [11] 2637 	push	bc
   5889 E5            [11] 2638 	push	hl
   588A CD CF 47      [17] 2639 	call	_cpct_drawSpriteMaskedAlignedTable
   588D DD E1         [14] 2640 	pop	ix
   588F C9            [10] 2641 	ret
                           2642 ;src/main.c:809: void DeleteObjectInStore() {
                           2643 ;	---------------------------------
                           2644 ; Function DeleteObjectInStore
                           2645 ; ---------------------------------
   5890                    2646 _DeleteObjectInStore::
                           2647 ;src/main.c:810: if (TwoPlayers) return;
   5890 3A BE 48      [13] 2648 	ld	a,(#_TwoPlayers + 0)
   5893 B7            [ 4] 2649 	or	a, a
   5894 C0            [11] 2650 	ret	NZ
                           2651 ;src/main.c:812: 2 + (storeX & 1), 2 + (storeY & 3 ? 1 : 0),	MAP_W, 
   5895 3A D4 48      [13] 2652 	ld	a,(#_storeY + 0)
   5898 E6 03         [ 7] 2653 	and	a, #0x03
   589A 28 04         [12] 2654 	jr	Z,00105$
   589C 16 01         [ 7] 2655 	ld	d, #0x01
   589E 18 02         [12] 2656 	jr	00106$
   58A0                    2657 00105$:
   58A0 16 00         [ 7] 2658 	ld	d, #0x00
   58A2                    2659 00106$:
   58A2 14            [ 4] 2660 	inc	d
   58A3 14            [ 4] 2661 	inc	d
   58A4 3A D3 48      [13] 2662 	ld	a,(#_storeX + 0)
   58A7 E6 01         [ 7] 2663 	and	a, #0x01
   58A9 5F            [ 4] 2664 	ld	e, a
   58AA 1C            [ 4] 2665 	inc	e
   58AB 1C            [ 4] 2666 	inc	e
                           2667 ;src/main.c:811: cpct_etm_drawTileBox2x4(storeX / 2, storeY / 4,
   58AC 21 D4 48      [10] 2668 	ld	hl,#_storeY + 0
   58AF 46            [ 7] 2669 	ld	b, (hl)
   58B0 CB 38         [ 8] 2670 	srl	b
   58B2 CB 38         [ 8] 2671 	srl	b
   58B4 21 D3 48      [10] 2672 	ld	hl,#_storeX + 0
   58B7 4E            [ 7] 2673 	ld	c, (hl)
   58B8 CB 39         [ 8] 2674 	srl	c
   58BA 21 71 0F      [10] 2675 	ld	hl, #0x0f71
   58BD E5            [11] 2676 	push	hl
   58BE 21 40 C1      [10] 2677 	ld	hl, #0xc140
   58C1 E5            [11] 2678 	push	hl
   58C2 3E 28         [ 7] 2679 	ld	a, #0x28
   58C4 F5            [11] 2680 	push	af
   58C5 33            [ 6] 2681 	inc	sp
   58C6 D5            [11] 2682 	push	de
   58C7 C5            [11] 2683 	push	bc
   58C8 CD FB 44      [17] 2684 	call	_cpct_etm_drawTileBox2x4
   58CB C9            [10] 2685 	ret
                           2686 ;src/main.c:818: void PrintObjectInStore() {
                           2687 ;	---------------------------------
                           2688 ; Function PrintObjectInStore
                           2689 ; ---------------------------------
   58CC                    2690 _PrintObjectInStore::
                           2691 ;src/main.c:819: if (TwoPlayers) return;
   58CC 3A BE 48      [13] 2692 	ld	a,(#_TwoPlayers + 0)
   58CF B7            [ 4] 2693 	or	a, a
   58D0 C0            [11] 2694 	ret	NZ
                           2695 ;src/main.c:820: if (coinScore[0] == 0) return;
   58D1 3A C7 48      [13] 2696 	ld	a, (#_coinScore + 0)
   58D4 B7            [ 4] 2697 	or	a, a
   58D5 C8            [11] 2698 	ret	Z
                           2699 ;src/main.c:822: if (coinScore[0] < 13)
   58D6 FE 0D         [ 7] 2700 	cp	a, #0x0d
   58D8 30 08         [12] 2701 	jr	NC,00106$
                           2702 ;src/main.c:823: nPObj = coinScore[0] + 3; // assign the corresponding object to the available money
   58DA 21 67 49      [10] 2703 	ld	hl, #_nPObj
   58DD C6 03         [ 7] 2704 	add	a, #0x03
   58DF 77            [ 7] 2705 	ld	(hl), a
   58E0 18 05         [12] 2706 	jr	00107$
   58E2                    2707 00106$:
                           2708 ;src/main.c:825: nPObj = 15; // assign the most expensive object
   58E2 21 67 49      [10] 2709 	ld	hl,#_nPObj + 0
   58E5 36 0F         [10] 2710 	ld	(hl), #0x0f
   58E7                    2711 00107$:
                           2712 ;src/main.c:827: PrintObject(nPObj, storeX, storeY + ORIG_MAP_Y);
   58E7 3A D4 48      [13] 2713 	ld	a,(#_storeY + 0)
   58EA C6 20         [ 7] 2714 	add	a, #0x20
   58EC 47            [ 4] 2715 	ld	b, a
   58ED C5            [11] 2716 	push	bc
   58EE 33            [ 6] 2717 	inc	sp
   58EF 3A D3 48      [13] 2718 	ld	a, (_storeX)
   58F2 F5            [11] 2719 	push	af
   58F3 33            [ 6] 2720 	inc	sp
   58F4 3A 67 49      [13] 2721 	ld	a, (_nPObj)
   58F7 F5            [11] 2722 	push	af
   58F8 33            [ 6] 2723 	inc	sp
   58F9 CD 5C 57      [17] 2724 	call	_PrintObject
   58FC F1            [10] 2725 	pop	af
   58FD 33            [ 6] 2726 	inc	sp
   58FE C9            [10] 2727 	ret
                           2728 ;src/main.c:833: void CheckObject(u8 index) {	
                           2729 ;	---------------------------------
                           2730 ; Function CheckObject
                           2731 ; ---------------------------------
   58FF                    2732 _CheckObject::
   58FF DD E5         [15] 2733 	push	ix
   5901 DD 21 00 00   [14] 2734 	ld	ix,#0
   5905 DD 39         [15] 2735 	add	ix,sp
   5907 21 F9 FF      [10] 2736 	ld	hl, #-7
   590A 39            [11] 2737 	add	hl, sp
   590B F9            [ 6] 2738 	ld	sp, hl
                           2739 ;src/main.c:834: i8 player = -1;
   590C DD 36 F9 FF   [19] 2740 	ld	-7 (ix), #0xff
                           2741 ;src/main.c:836: if (nObj[index] != -1)	{
   5910 DD 7E 04      [19] 2742 	ld	a, 4 (ix)
   5913 C6 61         [ 7] 2743 	add	a, #<(_nObj)
   5915 DD 77 FC      [19] 2744 	ld	-4 (ix), a
   5918 3E 00         [ 7] 2745 	ld	a, #0x00
   591A CE 49         [ 7] 2746 	adc	a, #>(_nObj)
   591C DD 77 FD      [19] 2747 	ld	-3 (ix), a
   591F DD 6E FC      [19] 2748 	ld	l,-4 (ix)
   5922 DD 66 FD      [19] 2749 	ld	h,-3 (ix)
   5925 4E            [ 7] 2750 	ld	c, (hl)
   5926 0C            [ 4] 2751 	inc	c
   5927 CA AB 5A      [10] 2752 	jp	Z,00124$
                           2753 ;src/main.c:837: if (SpriteCollision(objX[index], objY[index], &spr[0], 0)) player = 0; // player 1
   592A DD 7E 04      [19] 2754 	ld	a, 4 (ix)
   592D C6 65         [ 7] 2755 	add	a, #<(_objY)
   592F DD 77 FA      [19] 2756 	ld	-6 (ix), a
   5932 3E 00         [ 7] 2757 	ld	a, #0x00
   5934 CE 49         [ 7] 2758 	adc	a, #>(_objY)
   5936 DD 77 FB      [19] 2759 	ld	-5 (ix), a
   5939 DD 6E FA      [19] 2760 	ld	l,-6 (ix)
   593C DD 66 FB      [19] 2761 	ld	h,-5 (ix)
   593F 56            [ 7] 2762 	ld	d, (hl)
   5940 DD 7E 04      [19] 2763 	ld	a, 4 (ix)
   5943 C6 63         [ 7] 2764 	add	a, #<(_objX)
   5945 DD 77 FE      [19] 2765 	ld	-2 (ix), a
   5948 3E 00         [ 7] 2766 	ld	a, #0x00
   594A CE 49         [ 7] 2767 	adc	a, #>(_objX)
   594C DD 77 FF      [19] 2768 	ld	-1 (ix), a
   594F DD 6E FE      [19] 2769 	ld	l,-2 (ix)
   5952 DD 66 FF      [19] 2770 	ld	h,-1 (ix)
   5955 46            [ 7] 2771 	ld	b, (hl)
   5956 AF            [ 4] 2772 	xor	a, a
   5957 F5            [11] 2773 	push	af
   5958 33            [ 6] 2774 	inc	sp
   5959 21 F3 48      [10] 2775 	ld	hl, #_spr
   595C E5            [11] 2776 	push	hl
   595D 58            [ 4] 2777 	ld	e, b
   595E D5            [11] 2778 	push	de
   595F CD 6F 66      [17] 2779 	call	_SpriteCollision
   5962 F1            [10] 2780 	pop	af
   5963 F1            [10] 2781 	pop	af
   5964 33            [ 6] 2782 	inc	sp
   5965 7D            [ 4] 2783 	ld	a, l
   5966 B7            [ 4] 2784 	or	a, a
   5967 28 06         [12] 2785 	jr	Z,00105$
   5969 DD 36 F9 00   [19] 2786 	ld	-7 (ix), #0x00
   596D 18 2B         [12] 2787 	jr	00106$
   596F                    2788 00105$:
                           2789 ;src/main.c:838: else if (TwoPlayers && SpriteCollision(objX[index], objY[index], &spr[1], 0)) player = 1; // player 2
   596F 3A BE 48      [13] 2790 	ld	a,(#_TwoPlayers + 0)
   5972 B7            [ 4] 2791 	or	a, a
   5973 28 25         [12] 2792 	jr	Z,00106$
   5975 DD 6E FA      [19] 2793 	ld	l,-6 (ix)
   5978 DD 66 FB      [19] 2794 	ld	h,-5 (ix)
   597B 56            [ 7] 2795 	ld	d, (hl)
   597C DD 6E FE      [19] 2796 	ld	l,-2 (ix)
   597F DD 66 FF      [19] 2797 	ld	h,-1 (ix)
   5982 46            [ 7] 2798 	ld	b, (hl)
   5983 AF            [ 4] 2799 	xor	a, a
   5984 F5            [11] 2800 	push	af
   5985 33            [ 6] 2801 	inc	sp
   5986 21 02 49      [10] 2802 	ld	hl, #(_spr + 0x000f)
   5989 E5            [11] 2803 	push	hl
   598A 58            [ 4] 2804 	ld	e, b
   598B D5            [11] 2805 	push	de
   598C CD 6F 66      [17] 2806 	call	_SpriteCollision
   598F F1            [10] 2807 	pop	af
   5990 F1            [10] 2808 	pop	af
   5991 33            [ 6] 2809 	inc	sp
   5992 7D            [ 4] 2810 	ld	a, l
   5993 B7            [ 4] 2811 	or	a, a
   5994 28 04         [12] 2812 	jr	Z,00106$
   5996 DD 36 F9 01   [19] 2813 	ld	-7 (ix), #0x01
   599A                    2814 00106$:
                           2815 ;src/main.c:840: if (player >= 0)	{									
   599A DD CB F9 7E   [20] 2816 	bit	7, -7 (ix)
   599E C2 AB 5A      [10] 2817 	jp	NZ, 00124$
                           2818 ;src/main.c:841: DeleteObject(index);
   59A1 DD 6E 04      [19] 2819 	ld	l, 4 (ix)
   59A4 CD 92 57      [17] 2820 	call	_DeleteObject
                           2821 ;src/main.c:844: if (nObj[index] <= 1) {
   59A7 DD 6E FC      [19] 2822 	ld	l,-4 (ix)
   59AA DD 66 FD      [19] 2823 	ld	h,-3 (ix)
   59AD 4E            [ 7] 2824 	ld	c, (hl)
   59AE 3E 01         [ 7] 2825 	ld	a, #0x01
   59B0 91            [ 4] 2826 	sub	a, c
   59B1 E2 B6 59      [10] 2827 	jp	PO, 00183$
   59B4 EE 80         [ 7] 2828 	xor	a, #0x80
   59B6                    2829 00183$:
   59B6 FA CF 59      [10] 2830 	jp	M, 00112$
                           2831 ;src/main.c:845: if (nMap == 0 && !TwoPlayers && nTip<2) 
   59B9 3A BA 48      [13] 2832 	ld	a,(#_nMap + 0)
   59BC B7            [ 4] 2833 	or	a, a
   59BD 20 10         [12] 2834 	jr	NZ,00112$
   59BF 3A BE 48      [13] 2835 	ld	a,(#_TwoPlayers + 0)
   59C2 B7            [ 4] 2836 	or	a, a
   59C3 20 0A         [12] 2837 	jr	NZ,00112$
   59C5 3A D9 48      [13] 2838 	ld	a,(#_nTip + 0)
   59C8 D6 02         [ 7] 2839 	sub	a, #0x02
   59CA 30 03         [12] 2840 	jr	NC,00112$
                           2841 ;src/main.c:846: PrintTip(); // novice help
   59CC CD E5 51      [17] 2842 	call	_PrintTip
   59CF                    2843 00112$:
                           2844 ;src/main.c:849: switch (nObj[index])
   59CF DD 6E FC      [19] 2845 	ld	l,-4 (ix)
   59D2 DD 66 FD      [19] 2846 	ld	h,-3 (ix)
   59D5 7E            [ 7] 2847 	ld	a, (hl)
   59D6 DD 77 FE      [19] 2848 	ld	-2 (ix), a
                           2849 ;src/main.c:852: coinScore[player]++;
   59D9 DD 5E F9      [19] 2850 	ld	e, -7 (ix)
   59DC DD 7E F9      [19] 2851 	ld	a, -7 (ix)
   59DF 17            [ 4] 2852 	rla
   59E0 9F            [ 4] 2853 	sbc	a, a
   59E1 57            [ 4] 2854 	ld	d, a
                           2855 ;src/main.c:853: score[player] += 5;
   59E2 4B            [ 4] 2856 	ld	c, e
   59E3 42            [ 4] 2857 	ld	b, d
   59E4 CB 21         [ 8] 2858 	sla	c
   59E6 CB 10         [ 8] 2859 	rl	b
                           2860 ;src/main.c:849: switch (nObj[index])
   59E8 DD 7E FE      [19] 2861 	ld	a, -2 (ix)
   59EB B7            [ 4] 2862 	or	a, a
   59EC 28 2D         [12] 2863 	jr	Z,00113$
   59EE DD 7E FE      [19] 2864 	ld	a, -2 (ix)
   59F1 3D            [ 4] 2865 	dec	a
   59F2 28 47         [12] 2866 	jr	Z,00114$
                           2867 ;src/main.c:866: if (spr[player].lives_speed < 9)
   59F4 DD 5E F9      [19] 2868 	ld	e, -7 (ix)
   59F7 7B            [ 4] 2869 	ld	a, e
   59F8 CB 07         [ 8] 2870 	rlc	a
   59FA 9F            [ 4] 2871 	sbc	a, a
   59FB 57            [ 4] 2872 	ld	d, a
   59FC 6B            [ 4] 2873 	ld	l, e
   59FD 62            [ 4] 2874 	ld	h, d
   59FE 29            [11] 2875 	add	hl, hl
   59FF 19            [11] 2876 	add	hl, de
   5A00 29            [11] 2877 	add	hl, hl
   5A01 19            [11] 2878 	add	hl, de
   5A02 29            [11] 2879 	add	hl, hl
   5A03 19            [11] 2880 	add	hl, de
   5A04 EB            [ 4] 2881 	ex	de,hl
   5A05 21 F3 48      [10] 2882 	ld	hl, #_spr
   5A08 19            [11] 2883 	add	hl,de
   5A09 EB            [ 4] 2884 	ex	de,hl
                           2885 ;src/main.c:849: switch (nObj[index])
   5A0A DD 7E FE      [19] 2886 	ld	a, -2 (ix)
   5A0D D6 02         [ 7] 2887 	sub	a, #0x02
   5A0F 28 4E         [12] 2888 	jr	Z,00115$
   5A11 DD 7E FE      [19] 2889 	ld	a, -2 (ix)
   5A14 D6 03         [ 7] 2890 	sub	a, #0x03
   5A16 28 68         [12] 2891 	jr	Z,00118$
   5A18 C3 9A 5A      [10] 2892 	jp	00119$
                           2893 ;src/main.c:851: case 0:	{	// coin
   5A1B                    2894 00113$:
                           2895 ;src/main.c:852: coinScore[player]++;
   5A1B 21 C7 48      [10] 2896 	ld	hl, #_coinScore+0
   5A1E 19            [11] 2897 	add	hl, de
   5A1F 5E            [ 7] 2898 	ld	e, (hl)
   5A20 1C            [ 4] 2899 	inc	e
   5A21 73            [ 7] 2900 	ld	(hl), e
                           2901 ;src/main.c:853: score[player] += 5;
   5A22 21 BF 48      [10] 2902 	ld	hl, #_score+0
   5A25 09            [11] 2903 	add	hl, bc
   5A26 E5            [11] 2904 	push	hl
   5A27 4E            [ 7] 2905 	ld	c, (hl)
   5A28 23            [ 6] 2906 	inc	hl
   5A29 46            [ 7] 2907 	ld	b, (hl)
   5A2A E1            [10] 2908 	pop	hl
   5A2B 03            [ 6] 2909 	inc	bc
   5A2C 03            [ 6] 2910 	inc	bc
   5A2D 03            [ 6] 2911 	inc	bc
   5A2E 03            [ 6] 2912 	inc	bc
   5A2F 03            [ 6] 2913 	inc	bc
   5A30 71            [ 7] 2914 	ld	(hl), c
   5A31 23            [ 6] 2915 	inc	hl
   5A32 70            [ 7] 2916 	ld	(hl), b
                           2917 ;src/main.c:854: DeleteObjectInStore();
   5A33 CD 90 58      [17] 2918 	call	_DeleteObjectInStore
                           2919 ;src/main.c:855: PrintObjectInStore();
   5A36 CD CC 58      [17] 2920 	call	_PrintObjectInStore
                           2921 ;src/main.c:856: break;
   5A39 18 5F         [12] 2922 	jr	00119$
                           2923 ;src/main.c:858: case 1: {	// coin x5
   5A3B                    2924 00114$:
                           2925 ;src/main.c:859: coinScore[player] += 5;
   5A3B 21 C7 48      [10] 2926 	ld	hl, #_coinScore
   5A3E 19            [11] 2927 	add	hl, de
   5A3F 7E            [ 7] 2928 	ld	a, (hl)
   5A40 C6 05         [ 7] 2929 	add	a, #0x05
   5A42 77            [ 7] 2930 	ld	(hl), a
                           2931 ;src/main.c:860: score[player] += 20;
   5A43 21 BF 48      [10] 2932 	ld	hl, #_score
   5A46 09            [11] 2933 	add	hl, bc
   5A47 E5            [11] 2934 	push	hl
   5A48 4E            [ 7] 2935 	ld	c, (hl)
   5A49 23            [ 6] 2936 	inc	hl
   5A4A 46            [ 7] 2937 	ld	b, (hl)
   5A4B E1            [10] 2938 	pop	hl
   5A4C 79            [ 4] 2939 	ld	a, c
   5A4D C6 14         [ 7] 2940 	add	a, #0x14
   5A4F 4F            [ 4] 2941 	ld	c, a
   5A50 78            [ 4] 2942 	ld	a, b
   5A51 CE 00         [ 7] 2943 	adc	a, #0x00
   5A53 47            [ 4] 2944 	ld	b, a
   5A54 71            [ 7] 2945 	ld	(hl), c
   5A55 23            [ 6] 2946 	inc	hl
   5A56 70            [ 7] 2947 	ld	(hl), b
                           2948 ;src/main.c:861: DeleteObjectInStore();
   5A57 CD 90 58      [17] 2949 	call	_DeleteObjectInStore
                           2950 ;src/main.c:862: PrintObjectInStore();
   5A5A CD CC 58      [17] 2951 	call	_PrintObjectInStore
                           2952 ;src/main.c:863: break;
   5A5D 18 3B         [12] 2953 	jr	00119$
                           2954 ;src/main.c:865: case 2: {	// extra life
   5A5F                    2955 00115$:
                           2956 ;src/main.c:866: if (spr[player].lives_speed < 9)
   5A5F 21 0B 00      [10] 2957 	ld	hl, #0x000b
   5A62 19            [11] 2958 	add	hl, de
   5A63 7E            [ 7] 2959 	ld	a, (hl)
   5A64 FE 09         [ 7] 2960 	cp	a, #0x09
   5A66 30 02         [12] 2961 	jr	NC,00117$
                           2962 ;src/main.c:867: spr[player].lives_speed++;
   5A68 3C            [ 4] 2963 	inc	a
   5A69 77            [ 7] 2964 	ld	(hl), a
   5A6A                    2965 00117$:
                           2966 ;src/main.c:868: score[player] += 30;
   5A6A 21 BF 48      [10] 2967 	ld	hl, #_score
   5A6D 09            [11] 2968 	add	hl, bc
   5A6E E5            [11] 2969 	push	hl
   5A6F 4E            [ 7] 2970 	ld	c, (hl)
   5A70 23            [ 6] 2971 	inc	hl
   5A71 46            [ 7] 2972 	ld	b, (hl)
   5A72 E1            [10] 2973 	pop	hl
   5A73 79            [ 4] 2974 	ld	a, c
   5A74 C6 1E         [ 7] 2975 	add	a, #0x1e
   5A76 4F            [ 4] 2976 	ld	c, a
   5A77 78            [ 4] 2977 	ld	a, b
   5A78 CE 00         [ 7] 2978 	adc	a, #0x00
   5A7A 47            [ 4] 2979 	ld	b, a
   5A7B 71            [ 7] 2980 	ld	(hl), c
   5A7C 23            [ 6] 2981 	inc	hl
   5A7D 70            [ 7] 2982 	ld	(hl), b
                           2983 ;src/main.c:869: break;
   5A7E 18 1A         [12] 2984 	jr	00119$
                           2985 ;src/main.c:871: case 3: {	// power up speed*2
   5A80                    2986 00118$:
                           2987 ;src/main.c:872: spr[player].power_maxV = 255;
   5A80 21 0E 00      [10] 2988 	ld	hl, #0x000e
   5A83 19            [11] 2989 	add	hl, de
   5A84 36 FF         [10] 2990 	ld	(hl), #0xff
                           2991 ;src/main.c:873: score[player] += 25;
   5A86 21 BF 48      [10] 2992 	ld	hl, #_score
   5A89 09            [11] 2993 	add	hl, bc
   5A8A E5            [11] 2994 	push	hl
   5A8B 4E            [ 7] 2995 	ld	c, (hl)
   5A8C 23            [ 6] 2996 	inc	hl
   5A8D 46            [ 7] 2997 	ld	b, (hl)
   5A8E E1            [10] 2998 	pop	hl
   5A8F 79            [ 4] 2999 	ld	a, c
   5A90 C6 19         [ 7] 3000 	add	a, #0x19
   5A92 4F            [ 4] 3001 	ld	c, a
   5A93 78            [ 4] 3002 	ld	a, b
   5A94 CE 00         [ 7] 3003 	adc	a, #0x00
   5A96 47            [ 4] 3004 	ld	b, a
   5A97 71            [ 7] 3005 	ld	(hl), c
   5A98 23            [ 6] 3006 	inc	hl
   5A99 70            [ 7] 3007 	ld	(hl), b
                           3008 ;src/main.c:875: }
   5A9A                    3009 00119$:
                           3010 ;src/main.c:876: RefreshHighScore(player);
   5A9A DD 6E F9      [19] 3011 	ld	l, -7 (ix)
   5A9D CD 63 54      [17] 3012 	call	_RefreshHighScore
                           3013 ;src/main.c:877: RefreshScoreboard();
   5AA0 CD EC 55      [17] 3014 	call	_RefreshScoreboard
                           3015 ;src/main.c:878: nObj[index] = -1; // object not assigned
   5AA3 DD 6E FC      [19] 3016 	ld	l,-4 (ix)
   5AA6 DD 66 FD      [19] 3017 	ld	h,-3 (ix)
   5AA9 36 FF         [10] 3018 	ld	(hl), #0xff
   5AAB                    3019 00124$:
   5AAB DD F9         [10] 3020 	ld	sp, ix
   5AAD DD E1         [14] 3021 	pop	ix
   5AAF C9            [10] 3022 	ret
                           3023 ;src/main.c:885: u8 ObjectCollision(u8 numObj) __z88dk_fastcall {	
                           3024 ;	---------------------------------
                           3025 ; Function ObjectCollision
                           3026 ; ---------------------------------
   5AB0                    3027 _ObjectCollision::
   5AB0 DD E5         [15] 3028 	push	ix
   5AB2 DD 21 00 00   [14] 3029 	ld	ix,#0
   5AB6 DD 39         [15] 3030 	add	ix,sp
   5AB8 F5            [11] 3031 	push	af
   5AB9 3B            [ 6] 3032 	dec	sp
   5ABA 4D            [ 4] 3033 	ld	c, l
                           3034 ;src/main.c:887: while(i<=5) {
   5ABB 11 65 49      [10] 3035 	ld	de, #_objY+0
   5ABE 69            [ 4] 3036 	ld	l,c
   5ABF 26 00         [ 7] 3037 	ld	h,#0x00
   5AC1 19            [11] 3038 	add	hl, de
   5AC2 7E            [ 7] 3039 	ld	a, (hl)
   5AC3 DD 77 FF      [19] 3040 	ld	-1 (ix), a
   5AC6 11 63 49      [10] 3041 	ld	de, #_objX+0
   5AC9 69            [ 4] 3042 	ld	l,c
   5ACA 26 00         [ 7] 3043 	ld	h,#0x00
   5ACC 19            [11] 3044 	add	hl, de
   5ACD 7E            [ 7] 3045 	ld	a, (hl)
   5ACE DD 77 FE      [19] 3046 	ld	-2 (ix), a
   5AD1 DD 36 FD 02   [19] 3047 	ld	-3 (ix), #0x02
   5AD5                    3048 00106$:
   5AD5 3E 05         [ 7] 3049 	ld	a, #0x05
   5AD7 DD 96 FD      [19] 3050 	sub	a, -3 (ix)
   5ADA 38 7A         [12] 3051 	jr	C,00108$
                           3052 ;src/main.c:888: if ((spr[i].x + SPR_W >= objX[numObj] && spr[i].x <= objX[numObj] + OBJ_W) && 
   5ADC DD 4E FD      [19] 3053 	ld	c,-3 (ix)
   5ADF 06 00         [ 7] 3054 	ld	b,#0x00
   5AE1 69            [ 4] 3055 	ld	l, c
   5AE2 60            [ 4] 3056 	ld	h, b
   5AE3 29            [11] 3057 	add	hl, hl
   5AE4 09            [11] 3058 	add	hl, bc
   5AE5 29            [11] 3059 	add	hl, hl
   5AE6 09            [11] 3060 	add	hl, bc
   5AE7 29            [11] 3061 	add	hl, hl
   5AE8 09            [11] 3062 	add	hl, bc
   5AE9 4D            [ 4] 3063 	ld	c, l
   5AEA 44            [ 4] 3064 	ld	b, h
   5AEB FD 21 F3 48   [14] 3065 	ld	iy, #_spr
   5AEF FD 09         [15] 3066 	add	iy, bc
   5AF1 FD E5         [15] 3067 	push	iy
   5AF3 E1            [10] 3068 	pop	hl
   5AF4 23            [ 6] 3069 	inc	hl
   5AF5 23            [ 6] 3070 	inc	hl
   5AF6 4E            [ 7] 3071 	ld	c, (hl)
   5AF7 06 00         [ 7] 3072 	ld	b, #0x00
   5AF9 21 05 00      [10] 3073 	ld	hl, #0x0005
   5AFC 09            [11] 3074 	add	hl, bc
   5AFD DD 5E FE      [19] 3075 	ld	e, -2 (ix)
   5B00 16 00         [ 7] 3076 	ld	d, #0x00
   5B02 7D            [ 4] 3077 	ld	a, l
   5B03 93            [ 4] 3078 	sub	a, e
   5B04 7C            [ 4] 3079 	ld	a, h
   5B05 9A            [ 4] 3080 	sbc	a, d
   5B06 E2 0B 5B      [10] 3081 	jp	PO, 00135$
   5B09 EE 80         [ 7] 3082 	xor	a, #0x80
   5B0B                    3083 00135$:
   5B0B FA 50 5B      [10] 3084 	jp	M, 00102$
   5B0E 13            [ 6] 3085 	inc	de
   5B0F 13            [ 6] 3086 	inc	de
   5B10 13            [ 6] 3087 	inc	de
   5B11 13            [ 6] 3088 	inc	de
   5B12 7B            [ 4] 3089 	ld	a, e
   5B13 91            [ 4] 3090 	sub	a, c
   5B14 7A            [ 4] 3091 	ld	a, d
   5B15 98            [ 4] 3092 	sbc	a, b
   5B16 E2 1B 5B      [10] 3093 	jp	PO, 00136$
   5B19 EE 80         [ 7] 3094 	xor	a, #0x80
   5B1B                    3095 00136$:
   5B1B FA 50 5B      [10] 3096 	jp	M, 00102$
                           3097 ;src/main.c:889: (spr[i].y + SPR_H >= objY[numObj] && spr[i].y <= objY[numObj] + OBJ_H)) {
   5B1E FD E5         [15] 3098 	push	iy
   5B20 E1            [10] 3099 	pop	hl
   5B21 23            [ 6] 3100 	inc	hl
   5B22 23            [ 6] 3101 	inc	hl
   5B23 23            [ 6] 3102 	inc	hl
   5B24 4E            [ 7] 3103 	ld	c, (hl)
   5B25 06 00         [ 7] 3104 	ld	b, #0x00
   5B27 21 0C 00      [10] 3105 	ld	hl, #0x000c
   5B2A 09            [11] 3106 	add	hl, bc
   5B2B DD 5E FF      [19] 3107 	ld	e, -1 (ix)
   5B2E 16 00         [ 7] 3108 	ld	d, #0x00
   5B30 7D            [ 4] 3109 	ld	a, l
   5B31 93            [ 4] 3110 	sub	a, e
   5B32 7C            [ 4] 3111 	ld	a, h
   5B33 9A            [ 4] 3112 	sbc	a, d
   5B34 E2 39 5B      [10] 3113 	jp	PO, 00137$
   5B37 EE 80         [ 7] 3114 	xor	a, #0x80
   5B39                    3115 00137$:
   5B39 FA 50 5B      [10] 3116 	jp	M, 00102$
   5B3C 21 08 00      [10] 3117 	ld	hl, #0x0008
   5B3F 19            [11] 3118 	add	hl, de
   5B40 7D            [ 4] 3119 	ld	a, l
   5B41 91            [ 4] 3120 	sub	a, c
   5B42 7C            [ 4] 3121 	ld	a, h
   5B43 98            [ 4] 3122 	sbc	a, b
   5B44 E2 49 5B      [10] 3123 	jp	PO, 00138$
   5B47 EE 80         [ 7] 3124 	xor	a, #0x80
   5B49                    3125 00138$:
   5B49 FA 50 5B      [10] 3126 	jp	M, 00102$
                           3127 ;src/main.c:890: return 1;
   5B4C 2E 01         [ 7] 3128 	ld	l, #0x01
   5B4E 18 08         [12] 3129 	jr	00109$
   5B50                    3130 00102$:
                           3131 ;src/main.c:892: i++;
   5B50 DD 34 FD      [23] 3132 	inc	-3 (ix)
   5B53 C3 D5 5A      [10] 3133 	jp	00106$
   5B56                    3134 00108$:
                           3135 ;src/main.c:894: return 0;
   5B56 2E 00         [ 7] 3136 	ld	l, #0x00
   5B58                    3137 00109$:
   5B58 DD F9         [10] 3138 	ld	sp, ix
   5B5A DD E1         [14] 3139 	pop	ix
   5B5C C9            [10] 3140 	ret
                           3141 ;src/main.c:901: void ReprintObject() {
                           3142 ;	---------------------------------
                           3143 ; Function ReprintObject
                           3144 ; ---------------------------------
   5B5D                    3145 _ReprintObject::
                           3146 ;src/main.c:903: if (nObj[0] >= 0 && !ObjectCollision(0)) {  // does not print if hidden by enemies
   5B5D 21 61 49      [10] 3147 	ld	hl, #_nObj + 0
   5B60 CB 7E         [12] 3148 	bit	7, (hl)
   5B62 C2 AF 5C      [10] 3149 	jp	NZ, 00125$
   5B65 2E 00         [ 7] 3150 	ld	l, #0x00
   5B67 CD B0 5A      [17] 3151 	call	_ObjectCollision
   5B6A 7D            [ 4] 3152 	ld	a, l
   5B6B B7            [ 4] 3153 	or	a, a
   5B6C C2 AF 5C      [10] 3154 	jp	NZ, 00125$
                           3155 ;src/main.c:904: switch(ctMainLoop) {
   5B6F FD 21 DB 48   [14] 3156 	ld	iy, #_ctMainLoop
   5B73 FD 7E 00      [19] 3157 	ld	a, 0 (iy)
   5B76 B7            [ 4] 3158 	or	a, a
   5B77 FD B6 01      [19] 3159 	or	a, 1 (iy)
   5B7A CA 20 5C      [10] 3160 	jp	Z,00102$
   5B7D FD 7E 00      [19] 3161 	ld	a, 0 (iy)
   5B80 D6 08         [ 7] 3162 	sub	a, #0x08
   5B82 FD B6 01      [19] 3163 	or	a, 1 (iy)
   5B85 CA 30 5C      [10] 3164 	jp	Z,00104$
   5B88 FD 7E 00      [19] 3165 	ld	a, 0 (iy)
   5B8B D6 10         [ 7] 3166 	sub	a, #0x10
   5B8D FD B6 01      [19] 3167 	or	a, 1 (iy)
   5B90 CA 3F 5C      [10] 3168 	jp	Z,00105$
   5B93 FD 7E 00      [19] 3169 	ld	a, 0 (iy)
   5B96 D6 18         [ 7] 3170 	sub	a, #0x18
   5B98 FD B6 01      [19] 3171 	or	a, 1 (iy)
   5B9B CA 5A 5C      [10] 3172 	jp	Z,00108$
   5B9E FD 7E 00      [19] 3173 	ld	a, 0 (iy)
   5BA1 D6 20         [ 7] 3174 	sub	a, #0x20
   5BA3 FD B6 01      [19] 3175 	or	a, 1 (iy)
   5BA6 CA 6E 5C      [10] 3176 	jp	Z,00113$
   5BA9 FD 7E 00      [19] 3177 	ld	a, 0 (iy)
   5BAC D6 28         [ 7] 3178 	sub	a, #0x28
   5BAE FD B6 01      [19] 3179 	or	a, 1 (iy)
   5BB1 CA 82 5C      [10] 3180 	jp	Z,00118$
   5BB4 FD 7E 00      [19] 3181 	ld	a, 0 (iy)
   5BB7 D6 38         [ 7] 3182 	sub	a, #0x38
   5BB9 FD B6 01      [19] 3183 	or	a, 1 (iy)
   5BBC CA 5A 5C      [10] 3184 	jp	Z,00108$
   5BBF FD 7E 00      [19] 3185 	ld	a, 0 (iy)
   5BC2 D6 40         [ 7] 3186 	sub	a, #0x40
   5BC4 FD B6 01      [19] 3187 	or	a, 1 (iy)
   5BC7 CA 6E 5C      [10] 3188 	jp	Z,00113$
   5BCA FD 7E 00      [19] 3189 	ld	a, 0 (iy)
   5BCD D6 48         [ 7] 3190 	sub	a, #0x48
   5BCF FD B6 01      [19] 3191 	or	a, 1 (iy)
   5BD2 CA 82 5C      [10] 3192 	jp	Z,00118$
   5BD5 FD 7E 00      [19] 3193 	ld	a, 0 (iy)
   5BD8 D6 58         [ 7] 3194 	sub	a, #0x58
   5BDA FD B6 01      [19] 3195 	or	a, 1 (iy)
   5BDD CA 5A 5C      [10] 3196 	jp	Z,00108$
   5BE0 FD 7E 00      [19] 3197 	ld	a, 0 (iy)
   5BE3 D6 60         [ 7] 3198 	sub	a, #0x60
   5BE5 FD B6 01      [19] 3199 	or	a, 1 (iy)
   5BE8 CA 6E 5C      [10] 3200 	jp	Z,00113$
   5BEB FD 7E 00      [19] 3201 	ld	a, 0 (iy)
   5BEE D6 68         [ 7] 3202 	sub	a, #0x68
   5BF0 FD B6 01      [19] 3203 	or	a, 1 (iy)
   5BF3 CA 82 5C      [10] 3204 	jp	Z,00118$
   5BF6 FD 7E 00      [19] 3205 	ld	a, 0 (iy)
   5BF9 D6 48         [ 7] 3206 	sub	a, #0x48
   5BFB 20 07         [12] 3207 	jr	NZ,00323$
   5BFD FD 7E 01      [19] 3208 	ld	a, 1 (iy)
   5C00 3D            [ 4] 3209 	dec	a
   5C01 CA 96 5C      [10] 3210 	jp	Z,00121$
   5C04                    3211 00323$:
   5C04 FD 7E 00      [19] 3212 	ld	a, 0 (iy)
   5C07 D6 50         [ 7] 3213 	sub	a, #0x50
   5C09 20 06         [12] 3214 	jr	NZ,00324$
   5C0B FD 7E 01      [19] 3215 	ld	a, 1 (iy)
   5C0E 3D            [ 4] 3216 	dec	a
   5C0F 28 1F         [12] 3217 	jr	Z,00104$
   5C11                    3218 00324$:
   5C11 FD 7E 00      [19] 3219 	ld	a, 0 (iy)
   5C14 D6 58         [ 7] 3220 	sub	a, #0x58
   5C16 C2 9B 5C      [10] 3221 	jp	NZ,00122$
   5C19 FD 7E 01      [19] 3222 	ld	a, 1 (iy)
   5C1C 3D            [ 4] 3223 	dec	a
   5C1D C2 9B 5C      [10] 3224 	jp	NZ,00122$
                           3225 ;src/main.c:907: case 344:	{ DeleteObject(0); PrintDust(0,0); break; }
   5C20                    3226 00102$:
   5C20 2E 00         [ 7] 3227 	ld	l, #0x00
   5C22 CD 92 57      [17] 3228 	call	_DeleteObject
   5C25 21 00 00      [10] 3229 	ld	hl, #0x0000
   5C28 E5            [11] 3230 	push	hl
   5C29 CD 06 58      [17] 3231 	call	_PrintDust
   5C2C F1            [10] 3232 	pop	af
   5C2D C3 AF 5C      [10] 3233 	jp	00125$
                           3234 ;src/main.c:910: case 336:	{ DeleteObject(0); PrintDust(1,0); break; }
   5C30                    3235 00104$:
   5C30 2E 00         [ 7] 3236 	ld	l, #0x00
   5C32 CD 92 57      [17] 3237 	call	_DeleteObject
   5C35 21 01 00      [10] 3238 	ld	hl, #0x0001
   5C38 E5            [11] 3239 	push	hl
   5C39 CD 06 58      [17] 3240 	call	_PrintDust
   5C3C F1            [10] 3241 	pop	af
   5C3D 18 70         [12] 3242 	jr	00125$
                           3243 ;src/main.c:913: case 16:	{ DeleteObject(0); PrintObject(nObj[0], objX[0], objY[0]); break; }
   5C3F                    3244 00105$:
   5C3F 2E 00         [ 7] 3245 	ld	l, #0x00
   5C41 CD 92 57      [17] 3246 	call	_DeleteObject
   5C44 21 65 49      [10] 3247 	ld	hl, #_objY+0
   5C47 56            [ 7] 3248 	ld	d, (hl)
   5C48 3A 63 49      [13] 3249 	ld	a, (#_objX + 0)
   5C4B 21 61 49      [10] 3250 	ld	hl, #_nObj + 0
   5C4E 46            [ 7] 3251 	ld	b, (hl)
   5C4F 5F            [ 4] 3252 	ld	e, a
   5C50 D5            [11] 3253 	push	de
   5C51 C5            [11] 3254 	push	bc
   5C52 33            [ 6] 3255 	inc	sp
   5C53 CD 5C 57      [17] 3256 	call	_PrintObject
   5C56 F1            [10] 3257 	pop	af
   5C57 33            [ 6] 3258 	inc	sp
   5C58 18 55         [12] 3259 	jr	00125$
                           3260 ;src/main.c:918: case 88: { if (nObj[0] == 0) {DeleteObject(0); PrintCoin(0,0); break; }}
   5C5A                    3261 00108$:
   5C5A 3A 61 49      [13] 3262 	ld	a, (#_nObj + 0)
   5C5D B7            [ 4] 3263 	or	a,a
   5C5E 20 0E         [12] 3264 	jr	NZ,00113$
   5C60 6F            [ 4] 3265 	ld	l,a
   5C61 CD 92 57      [17] 3266 	call	_DeleteObject
   5C64 21 00 00      [10] 3267 	ld	hl, #0x0000
   5C67 E5            [11] 3268 	push	hl
   5C68 CD 4A 58      [17] 3269 	call	_PrintCoin
   5C6B F1            [10] 3270 	pop	af
   5C6C 18 41         [12] 3271 	jr	00125$
                           3272 ;src/main.c:921: case 96: { if (nObj[0] == 0) {DeleteObject(0); PrintCoin(1,0); break; }}
   5C6E                    3273 00113$:
   5C6E 3A 61 49      [13] 3274 	ld	a, (#_nObj + 0)
   5C71 B7            [ 4] 3275 	or	a,a
   5C72 20 0E         [12] 3276 	jr	NZ,00118$
   5C74 6F            [ 4] 3277 	ld	l,a
   5C75 CD 92 57      [17] 3278 	call	_DeleteObject
   5C78 21 01 00      [10] 3279 	ld	hl, #0x0001
   5C7B E5            [11] 3280 	push	hl
   5C7C CD 4A 58      [17] 3281 	call	_PrintCoin
   5C7F F1            [10] 3282 	pop	af
   5C80 18 2D         [12] 3283 	jr	00125$
                           3284 ;src/main.c:924: case 104: { if (nObj[0] == 0) {DeleteObject(0); PrintCoin(2,0); break; }}
   5C82                    3285 00118$:
   5C82 3A 61 49      [13] 3286 	ld	a, (#_nObj + 0)
   5C85 B7            [ 4] 3287 	or	a,a
   5C86 20 0E         [12] 3288 	jr	NZ,00121$
   5C88 6F            [ 4] 3289 	ld	l,a
   5C89 CD 92 57      [17] 3290 	call	_DeleteObject
   5C8C 21 02 00      [10] 3291 	ld	hl, #0x0002
   5C8F E5            [11] 3292 	push	hl
   5C90 CD 4A 58      [17] 3293 	call	_PrintCoin
   5C93 F1            [10] 3294 	pop	af
   5C94 18 19         [12] 3295 	jr	00125$
                           3296 ;src/main.c:927: case 328:	{ DeleteObject(0); }
   5C96                    3297 00121$:
   5C96 2E 00         [ 7] 3298 	ld	l, #0x00
   5C98 CD 92 57      [17] 3299 	call	_DeleteObject
                           3300 ;src/main.c:929: default:	{ PrintObject(nObj[0], objX[0], objY[0]); }			
   5C9B                    3301 00122$:
   5C9B 21 65 49      [10] 3302 	ld	hl, #_objY+0
   5C9E 56            [ 7] 3303 	ld	d, (hl)
   5C9F 3A 63 49      [13] 3304 	ld	a, (#_objX + 0)
   5CA2 21 61 49      [10] 3305 	ld	hl, #_nObj + 0
   5CA5 46            [ 7] 3306 	ld	b, (hl)
   5CA6 5F            [ 4] 3307 	ld	e, a
   5CA7 D5            [11] 3308 	push	de
   5CA8 C5            [11] 3309 	push	bc
   5CA9 33            [ 6] 3310 	inc	sp
   5CAA CD 5C 57      [17] 3311 	call	_PrintObject
   5CAD F1            [10] 3312 	pop	af
   5CAE 33            [ 6] 3313 	inc	sp
                           3314 ;src/main.c:930: }
   5CAF                    3315 00125$:
                           3316 ;src/main.c:933: if (nObj[1] >= 0 && !ObjectCollision(1)) {
   5CAF 21 62 49      [10] 3317 	ld	hl, #(_nObj + 0x0001) + 0
   5CB2 CB 7E         [12] 3318 	bit	7, (hl)
   5CB4 C0            [11] 3319 	ret	NZ
   5CB5 2E 01         [ 7] 3320 	ld	l, #0x01
   5CB7 CD B0 5A      [17] 3321 	call	_ObjectCollision
   5CBA 7D            [ 4] 3322 	ld	a, l
   5CBB B7            [ 4] 3323 	or	a, a
   5CBC C0            [11] 3324 	ret	NZ
                           3325 ;src/main.c:934: switch(ctMainLoop) {
   5CBD FD 21 DB 48   [14] 3326 	ld	iy, #_ctMainLoop
   5CC1 FD 7E 00      [19] 3327 	ld	a, 0 (iy)
   5CC4 D6 9A         [ 7] 3328 	sub	a, #0x9a
   5CC6 FD B6 01      [19] 3329 	or	a, 1 (iy)
   5CC9 CA DD 5D      [10] 3330 	jp	Z,00147$
   5CCC FD 7E 00      [19] 3331 	ld	a, 0 (iy)
   5CCF D6 A0         [ 7] 3332 	sub	a, #0xa0
   5CD1 FD B6 01      [19] 3333 	or	a, 1 (iy)
   5CD4 CA 7F 5D      [10] 3334 	jp	Z,00130$
   5CD7 FD 7E 00      [19] 3335 	ld	a, 0 (iy)
   5CDA D6 A8         [ 7] 3336 	sub	a, #0xa8
   5CDC FD B6 01      [19] 3337 	or	a, 1 (iy)
   5CDF CA 71 5D      [10] 3338 	jp	Z,00128$
   5CE2 FD 7E 00      [19] 3339 	ld	a, 0 (iy)
   5CE5 D6 B0         [ 7] 3340 	sub	a, #0xb0
   5CE7 FD B6 01      [19] 3341 	or	a, 1 (iy)
   5CEA CA 71 5D      [10] 3342 	jp	Z,00128$
   5CED FD 7E 00      [19] 3343 	ld	a, 0 (iy)
   5CF0 D6 B8         [ 7] 3344 	sub	a, #0xb8
   5CF2 FD B6 01      [19] 3345 	or	a, 1 (iy)
   5CF5 CA 7F 5D      [10] 3346 	jp	Z,00130$
   5CF8 FD 7E 00      [19] 3347 	ld	a, 0 (iy)
   5CFB D6 C0         [ 7] 3348 	sub	a, #0xc0
   5CFD FD B6 01      [19] 3349 	or	a, 1 (iy)
   5D00 CA 8D 5D      [10] 3350 	jp	Z,00131$
                           3351 ;src/main.c:933: if (nObj[1] >= 0 && !ObjectCollision(1)) {
   5D03 21 62 49      [10] 3352 	ld	hl, #(_nObj + 0x0001) + 0
   5D06 4E            [ 7] 3353 	ld	c, (hl)
                           3354 ;src/main.c:934: switch(ctMainLoop) {
   5D07 FD 7E 00      [19] 3355 	ld	a, 0 (iy)
   5D0A D6 C8         [ 7] 3356 	sub	a, #0xc8
   5D0C FD B6 01      [19] 3357 	or	a, 1 (iy)
   5D0F CA A7 5D      [10] 3358 	jp	Z,00134$
   5D12 FD 7E 00      [19] 3359 	ld	a, 0 (iy)
   5D15 D6 D0         [ 7] 3360 	sub	a, #0xd0
   5D17 FD B6 01      [19] 3361 	or	a, 1 (iy)
   5D1A CA B9 5D      [10] 3362 	jp	Z,00139$
   5D1D FD 7E 00      [19] 3363 	ld	a, 0 (iy)
   5D20 D6 D8         [ 7] 3364 	sub	a, #0xd8
   5D22 FD B6 01      [19] 3365 	or	a, 1 (iy)
   5D25 CA CB 5D      [10] 3366 	jp	Z,00144$
   5D28 FD 7E 00      [19] 3367 	ld	a, 0 (iy)
   5D2B D6 E8         [ 7] 3368 	sub	a, #0xe8
   5D2D FD B6 01      [19] 3369 	or	a, 1 (iy)
   5D30 28 75         [12] 3370 	jr	Z,00134$
   5D32 FD 7E 00      [19] 3371 	ld	a, 0 (iy)
   5D35 D6 F0         [ 7] 3372 	sub	a, #0xf0
   5D37 FD B6 01      [19] 3373 	or	a, 1 (iy)
   5D3A CA B9 5D      [10] 3374 	jp	Z,00139$
   5D3D FD 7E 00      [19] 3375 	ld	a, 0 (iy)
   5D40 D6 F8         [ 7] 3376 	sub	a, #0xf8
   5D42 FD B6 01      [19] 3377 	or	a, 1 (iy)
   5D45 CA CB 5D      [10] 3378 	jp	Z,00144$
   5D48 FD 7E 00      [19] 3379 	ld	a, 0 (iy)
   5D4B D6 08         [ 7] 3380 	sub	a, #0x08
   5D4D 20 06         [12] 3381 	jr	NZ,00339$
   5D4F FD 7E 01      [19] 3382 	ld	a, 1 (iy)
   5D52 3D            [ 4] 3383 	dec	a
   5D53 28 52         [12] 3384 	jr	Z,00134$
   5D55                    3385 00339$:
   5D55 FD 7E 00      [19] 3386 	ld	a, 0 (iy)
   5D58 D6 10         [ 7] 3387 	sub	a, #0x10
   5D5A 20 06         [12] 3388 	jr	NZ,00340$
   5D5C FD 7E 01      [19] 3389 	ld	a, 1 (iy)
   5D5F 3D            [ 4] 3390 	dec	a
   5D60 28 57         [12] 3391 	jr	Z,00139$
   5D62                    3392 00340$:
   5D62 FD 7E 00      [19] 3393 	ld	a, 0 (iy)
   5D65 D6 18         [ 7] 3394 	sub	a, #0x18
   5D67 20 79         [12] 3395 	jr	NZ,00148$
   5D69 FD 7E 01      [19] 3396 	ld	a, 1 (iy)
   5D6C 3D            [ 4] 3397 	dec	a
   5D6D 28 5C         [12] 3398 	jr	Z,00144$
   5D6F 18 71         [12] 3399 	jr	00148$
                           3400 ;src/main.c:937: case 168:	{ DeleteObject(1); PrintDust(0,1); break; }
   5D71                    3401 00128$:
   5D71 2E 01         [ 7] 3402 	ld	l, #0x01
   5D73 CD 92 57      [17] 3403 	call	_DeleteObject
   5D76 21 00 01      [10] 3404 	ld	hl, #0x0100
   5D79 E5            [11] 3405 	push	hl
   5D7A CD 06 58      [17] 3406 	call	_PrintDust
   5D7D F1            [10] 3407 	pop	af
   5D7E C9            [10] 3408 	ret
                           3409 ;src/main.c:940: case 160:	{ DeleteObject(1); PrintDust(1,1); break; }
   5D7F                    3410 00130$:
   5D7F 2E 01         [ 7] 3411 	ld	l, #0x01
   5D81 CD 92 57      [17] 3412 	call	_DeleteObject
   5D84 21 01 01      [10] 3413 	ld	hl, #0x0101
   5D87 E5            [11] 3414 	push	hl
   5D88 CD 06 58      [17] 3415 	call	_PrintDust
   5D8B F1            [10] 3416 	pop	af
   5D8C C9            [10] 3417 	ret
                           3418 ;src/main.c:942: case 192:	{ DeleteObject(1); PrintObject(nObj[1], objX[1], objY[1]); break; }
   5D8D                    3419 00131$:
   5D8D 2E 01         [ 7] 3420 	ld	l, #0x01
   5D8F CD 92 57      [17] 3421 	call	_DeleteObject
   5D92 21 66 49      [10] 3422 	ld	hl, #_objY+1
   5D95 56            [ 7] 3423 	ld	d, (hl)
   5D96 3A 64 49      [13] 3424 	ld	a, (#(_objX + 0x0001) + 0)
   5D99 21 62 49      [10] 3425 	ld	hl, #(_nObj + 0x0001) + 0
   5D9C 46            [ 7] 3426 	ld	b, (hl)
   5D9D 5F            [ 4] 3427 	ld	e, a
   5D9E D5            [11] 3428 	push	de
   5D9F C5            [11] 3429 	push	bc
   5DA0 33            [ 6] 3430 	inc	sp
   5DA1 CD 5C 57      [17] 3431 	call	_PrintObject
   5DA4 F1            [10] 3432 	pop	af
   5DA5 33            [ 6] 3433 	inc	sp
   5DA6 C9            [10] 3434 	ret
                           3435 ;src/main.c:947: case 264: { if (nObj[1] == 0) {DeleteObject(1); PrintCoin(0,1); break; }}
   5DA7                    3436 00134$:
   5DA7 79            [ 4] 3437 	ld	a, c
   5DA8 B7            [ 4] 3438 	or	a, a
   5DA9 20 0E         [12] 3439 	jr	NZ,00139$
   5DAB 2E 01         [ 7] 3440 	ld	l, #0x01
   5DAD CD 92 57      [17] 3441 	call	_DeleteObject
   5DB0 21 00 01      [10] 3442 	ld	hl, #0x0100
   5DB3 E5            [11] 3443 	push	hl
   5DB4 CD 4A 58      [17] 3444 	call	_PrintCoin
   5DB7 F1            [10] 3445 	pop	af
   5DB8 C9            [10] 3446 	ret
                           3447 ;src/main.c:950: case 272: { if (nObj[1] == 0) {DeleteObject(1); PrintCoin(1,1); break; }}
   5DB9                    3448 00139$:
   5DB9 79            [ 4] 3449 	ld	a, c
   5DBA B7            [ 4] 3450 	or	a, a
   5DBB 20 0E         [12] 3451 	jr	NZ,00144$
   5DBD 2E 01         [ 7] 3452 	ld	l, #0x01
   5DBF CD 92 57      [17] 3453 	call	_DeleteObject
   5DC2 21 01 01      [10] 3454 	ld	hl, #0x0101
   5DC5 E5            [11] 3455 	push	hl
   5DC6 CD 4A 58      [17] 3456 	call	_PrintCoin
   5DC9 F1            [10] 3457 	pop	af
   5DCA C9            [10] 3458 	ret
                           3459 ;src/main.c:953: case 280: { if (nObj[1] == 0) {DeleteObject(1); PrintCoin(2,1); break; }}
   5DCB                    3460 00144$:
   5DCB 79            [ 4] 3461 	ld	a, c
   5DCC B7            [ 4] 3462 	or	a, a
   5DCD 20 0E         [12] 3463 	jr	NZ,00147$
   5DCF 2E 01         [ 7] 3464 	ld	l, #0x01
   5DD1 CD 92 57      [17] 3465 	call	_DeleteObject
   5DD4 21 02 01      [10] 3466 	ld	hl, #0x0102
   5DD7 E5            [11] 3467 	push	hl
   5DD8 CD 4A 58      [17] 3468 	call	_PrintCoin
   5DDB F1            [10] 3469 	pop	af
   5DDC C9            [10] 3470 	ret
                           3471 ;src/main.c:956: case 154:	{ DeleteObject(1); }
   5DDD                    3472 00147$:
   5DDD 2E 01         [ 7] 3473 	ld	l, #0x01
   5DDF CD 92 57      [17] 3474 	call	_DeleteObject
                           3475 ;src/main.c:958: default:	{ PrintObject(nObj[1], objX[1], objY[1]); }			
   5DE2                    3476 00148$:
   5DE2 21 66 49      [10] 3477 	ld	hl, #_objY+1
   5DE5 56            [ 7] 3478 	ld	d, (hl)
   5DE6 3A 64 49      [13] 3479 	ld	a, (#(_objX + 0x0001) + 0)
   5DE9 21 62 49      [10] 3480 	ld	hl, #(_nObj + 0x0001) + 0
   5DEC 46            [ 7] 3481 	ld	b, (hl)
   5DED 5F            [ 4] 3482 	ld	e, a
   5DEE D5            [11] 3483 	push	de
   5DEF C5            [11] 3484 	push	bc
   5DF0 33            [ 6] 3485 	inc	sp
   5DF1 CD 5C 57      [17] 3486 	call	_PrintObject
   5DF4 F1            [10] 3487 	pop	af
   5DF5 33            [ 6] 3488 	inc	sp
                           3489 ;src/main.c:959: }
   5DF6 C9            [10] 3490 	ret
                           3491 ;src/main.c:964: void SetObject(u8 index) __z88dk_fastcall {
                           3492 ;	---------------------------------
                           3493 ; Function SetObject
                           3494 ; ---------------------------------
   5DF7                    3495 _SetObject::
   5DF7 DD E5         [15] 3496 	push	ix
   5DF9 DD 21 00 00   [14] 3497 	ld	ix,#0
   5DFD DD 39         [15] 3498 	add	ix,sp
   5DFF F5            [11] 3499 	push	af
   5E00 F5            [11] 3500 	push	af
   5E01 3B            [ 6] 3501 	dec	sp
                           3502 ;src/main.c:967: if (nObj[index] >= 0) DeleteObject(index); 
   5E02 DD 75 FF      [19] 3503 	ld	-1 (ix), l
   5E05 7D            [ 4] 3504 	ld	a, l
   5E06 C6 61         [ 7] 3505 	add	a, #<(_nObj)
   5E08 4F            [ 4] 3506 	ld	c, a
   5E09 3E 00         [ 7] 3507 	ld	a, #0x00
   5E0B CE 49         [ 7] 3508 	adc	a, #>(_nObj)
   5E0D 47            [ 4] 3509 	ld	b, a
   5E0E 0A            [ 7] 3510 	ld	a, (bc)
   5E0F CB 7F         [ 8] 3511 	bit	7,a
   5E11 20 08         [12] 3512 	jr	NZ,00102$
   5E13 C5            [11] 3513 	push	bc
   5E14 DD 6E FF      [19] 3514 	ld	l, -1 (ix)
   5E17 CD 92 57      [17] 3515 	call	_DeleteObject
   5E1A C1            [10] 3516 	pop	bc
   5E1B                    3517 00102$:
                           3518 ;src/main.c:969: nObj[index] = cpct_getRandom_lcg_u8(0) / 11;	// obj = 0 a 22
   5E1B C5            [11] 3519 	push	bc
   5E1C 2E 00         [ 7] 3520 	ld	l, #0x00
   5E1E CD BE 45      [17] 3521 	call	_cpct_getRandom_lcg_u8
   5E21 55            [ 4] 3522 	ld	d, l
   5E22 3E 0B         [ 7] 3523 	ld	a, #0x0b
   5E24 F5            [11] 3524 	push	af
   5E25 33            [ 6] 3525 	inc	sp
   5E26 D5            [11] 3526 	push	de
   5E27 33            [ 6] 3527 	inc	sp
   5E28 CD 84 43      [17] 3528 	call	__divuchar
   5E2B F1            [10] 3529 	pop	af
   5E2C 7D            [ 4] 3530 	ld	a, l
   5E2D C1            [10] 3531 	pop	bc
   5E2E 02            [ 7] 3532 	ld	(bc), a
                           3533 ;src/main.c:971: do {
   5E2F                    3534 00107$:
                           3535 ;src/main.c:972: objX[index] = 4 + (cpct_getRandom_lcg_u8(0)*10/36); 	// x = 4 a 74
   5E2F 3E 63         [ 7] 3536 	ld	a, #<(_objX)
   5E31 DD 86 FF      [19] 3537 	add	a, -1 (ix)
   5E34 DD 77 FB      [19] 3538 	ld	-5 (ix), a
   5E37 3E 49         [ 7] 3539 	ld	a, #>(_objX)
   5E39 CE 00         [ 7] 3540 	adc	a, #0x00
   5E3B DD 77 FC      [19] 3541 	ld	-4 (ix), a
   5E3E C5            [11] 3542 	push	bc
   5E3F 2E 00         [ 7] 3543 	ld	l, #0x00
   5E41 CD BE 45      [17] 3544 	call	_cpct_getRandom_lcg_u8
   5E44 C1            [10] 3545 	pop	bc
   5E45 5D            [ 4] 3546 	ld	e,l
   5E46 16 00         [ 7] 3547 	ld	d,#0x00
   5E48 6B            [ 4] 3548 	ld	l, e
   5E49 62            [ 4] 3549 	ld	h, d
   5E4A 29            [11] 3550 	add	hl, hl
   5E4B 29            [11] 3551 	add	hl, hl
   5E4C 19            [11] 3552 	add	hl, de
   5E4D 29            [11] 3553 	add	hl, hl
   5E4E C5            [11] 3554 	push	bc
   5E4F 11 24 00      [10] 3555 	ld	de, #0x0024
   5E52 D5            [11] 3556 	push	de
   5E53 E5            [11] 3557 	push	hl
   5E54 CD 62 48      [17] 3558 	call	__divsint
   5E57 F1            [10] 3559 	pop	af
   5E58 F1            [10] 3560 	pop	af
   5E59 C1            [10] 3561 	pop	bc
   5E5A 7D            [ 4] 3562 	ld	a, l
   5E5B C6 04         [ 7] 3563 	add	a, #0x04
   5E5D E1            [10] 3564 	pop	hl
   5E5E E5            [11] 3565 	push	hl
   5E5F 77            [ 7] 3566 	ld	(hl), a
                           3567 ;src/main.c:973: objY[index] = 40 + (cpct_getRandom_lcg_u8(0)*10/17);	// y = 40 a 190	
   5E60 3E 65         [ 7] 3568 	ld	a, #<(_objY)
   5E62 DD 86 FF      [19] 3569 	add	a, -1 (ix)
   5E65 DD 77 FD      [19] 3570 	ld	-3 (ix), a
   5E68 3E 49         [ 7] 3571 	ld	a, #>(_objY)
   5E6A CE 00         [ 7] 3572 	adc	a, #0x00
   5E6C DD 77 FE      [19] 3573 	ld	-2 (ix), a
   5E6F C5            [11] 3574 	push	bc
   5E70 2E 00         [ 7] 3575 	ld	l, #0x00
   5E72 CD BE 45      [17] 3576 	call	_cpct_getRandom_lcg_u8
   5E75 C1            [10] 3577 	pop	bc
   5E76 5D            [ 4] 3578 	ld	e,l
   5E77 16 00         [ 7] 3579 	ld	d,#0x00
   5E79 6B            [ 4] 3580 	ld	l, e
   5E7A 62            [ 4] 3581 	ld	h, d
   5E7B 29            [11] 3582 	add	hl, hl
   5E7C 29            [11] 3583 	add	hl, hl
   5E7D 19            [11] 3584 	add	hl, de
   5E7E 29            [11] 3585 	add	hl, hl
   5E7F C5            [11] 3586 	push	bc
   5E80 11 11 00      [10] 3587 	ld	de, #0x0011
   5E83 D5            [11] 3588 	push	de
   5E84 E5            [11] 3589 	push	hl
   5E85 CD 62 48      [17] 3590 	call	__divsint
   5E88 F1            [10] 3591 	pop	af
   5E89 F1            [10] 3592 	pop	af
   5E8A C1            [10] 3593 	pop	bc
   5E8B 7D            [ 4] 3594 	ld	a, l
   5E8C C6 28         [ 7] 3595 	add	a, #0x28
   5E8E DD 6E FD      [19] 3596 	ld	l,-3 (ix)
   5E91 DD 66 FE      [19] 3597 	ld	h,-2 (ix)
   5E94 77            [ 7] 3598 	ld	(hl), a
                           3599 ;src/main.c:974: tile = *GetTileNum(objX[index]+2, objY[index]+8);	
   5E95 DD 6E FD      [19] 3600 	ld	l,-3 (ix)
   5E98 DD 66 FE      [19] 3601 	ld	h,-2 (ix)
   5E9B 7E            [ 7] 3602 	ld	a, (hl)
   5E9C C6 08         [ 7] 3603 	add	a, #0x08
   5E9E 57            [ 4] 3604 	ld	d, a
   5E9F E1            [10] 3605 	pop	hl
   5EA0 E5            [11] 3606 	push	hl
   5EA1 7E            [ 7] 3607 	ld	a, (hl)
   5EA2 C6 02         [ 7] 3608 	add	a, #0x02
   5EA4 C5            [11] 3609 	push	bc
   5EA5 5F            [ 4] 3610 	ld	e, a
   5EA6 D5            [11] 3611 	push	de
   5EA7 CD A1 4B      [17] 3612 	call	_GetTileNum
   5EAA F1            [10] 3613 	pop	af
   5EAB C1            [10] 3614 	pop	bc
   5EAC 5E            [ 7] 3615 	ld	e, (hl)
                           3616 ;src/main.c:977: while (tile > 34 || tile == TILESET_DOOR || // tile is a blocker
   5EAD 3E 22         [ 7] 3617 	ld	a, #0x22
   5EAF 93            [ 4] 3618 	sub	a, e
   5EB0 DA 2F 5E      [10] 3619 	jp	C, 00107$
   5EB3 7B            [ 4] 3620 	ld	a, e
   5EB4 D6 0E         [ 7] 3621 	sub	a, #0x0e
   5EB6 CA 2F 5E      [10] 3622 	jp	Z,00107$
                           3623 ;src/main.c:978: Abs(objX[0] - objX[1]) < 12 || // near the other object
   5EB9 21 63 49      [10] 3624 	ld	hl, #_objX + 0
   5EBC 5E            [ 7] 3625 	ld	e, (hl)
   5EBD 16 00         [ 7] 3626 	ld	d, #0x00
   5EBF 21 64 49      [10] 3627 	ld	hl, #_objX + 1
   5EC2 6E            [ 7] 3628 	ld	l, (hl)
   5EC3 26 00         [ 7] 3629 	ld	h, #0x00
   5EC5 7B            [ 4] 3630 	ld	a, e
   5EC6 95            [ 4] 3631 	sub	a, l
   5EC7 6F            [ 4] 3632 	ld	l, a
   5EC8 7A            [ 4] 3633 	ld	a, d
   5EC9 9C            [ 4] 3634 	sbc	a, h
   5ECA 67            [ 4] 3635 	ld	h, a
   5ECB C5            [11] 3636 	push	bc
   5ECC CD 6C 49      [17] 3637 	call	_Abs
   5ECF C1            [10] 3638 	pop	bc
   5ED0 11 0C 80      [10] 3639 	ld	de, #0x800c
   5ED3 29            [11] 3640 	add	hl, hl
   5ED4 3F            [ 4] 3641 	ccf
   5ED5 CB 1C         [ 8] 3642 	rr	h
   5ED7 CB 1D         [ 8] 3643 	rr	l
   5ED9 ED 52         [15] 3644 	sbc	hl, de
   5EDB DA 2F 5E      [10] 3645 	jp	C, 00107$
                           3646 ;src/main.c:979: SpriteCollision(objX[index], objY[index], &spr[0], 12) || // near player 1
   5EDE DD 6E FD      [19] 3647 	ld	l,-3 (ix)
   5EE1 DD 66 FE      [19] 3648 	ld	h,-2 (ix)
   5EE4 56            [ 7] 3649 	ld	d, (hl)
   5EE5 E1            [10] 3650 	pop	hl
   5EE6 E5            [11] 3651 	push	hl
   5EE7 5E            [ 7] 3652 	ld	e, (hl)
   5EE8 C5            [11] 3653 	push	bc
   5EE9 3E 0C         [ 7] 3654 	ld	a, #0x0c
   5EEB F5            [11] 3655 	push	af
   5EEC 33            [ 6] 3656 	inc	sp
   5EED 21 F3 48      [10] 3657 	ld	hl, #_spr
   5EF0 E5            [11] 3658 	push	hl
   5EF1 D5            [11] 3659 	push	de
   5EF2 CD 6F 66      [17] 3660 	call	_SpriteCollision
   5EF5 F1            [10] 3661 	pop	af
   5EF6 F1            [10] 3662 	pop	af
   5EF7 33            [ 6] 3663 	inc	sp
   5EF8 C1            [10] 3664 	pop	bc
   5EF9 7D            [ 4] 3665 	ld	a, l
   5EFA B7            [ 4] 3666 	or	a, a
   5EFB C2 2F 5E      [10] 3667 	jp	NZ, 00107$
                           3668 ;src/main.c:980: SpriteCollision(objX[index], objY[index], &spr[1], 12)); // near player 2
   5EFE DD 6E FD      [19] 3669 	ld	l,-3 (ix)
   5F01 DD 66 FE      [19] 3670 	ld	h,-2 (ix)
   5F04 56            [ 7] 3671 	ld	d, (hl)
   5F05 E1            [10] 3672 	pop	hl
   5F06 E5            [11] 3673 	push	hl
   5F07 5E            [ 7] 3674 	ld	e, (hl)
   5F08 C5            [11] 3675 	push	bc
   5F09 3E 0C         [ 7] 3676 	ld	a, #0x0c
   5F0B F5            [11] 3677 	push	af
   5F0C 33            [ 6] 3678 	inc	sp
   5F0D 21 02 49      [10] 3679 	ld	hl, #(_spr + 0x000f)
   5F10 E5            [11] 3680 	push	hl
   5F11 D5            [11] 3681 	push	de
   5F12 CD 6F 66      [17] 3682 	call	_SpriteCollision
   5F15 F1            [10] 3683 	pop	af
   5F16 F1            [10] 3684 	pop	af
   5F17 33            [ 6] 3685 	inc	sp
   5F18 C1            [10] 3686 	pop	bc
   5F19 7D            [ 4] 3687 	ld	a, l
   5F1A B7            [ 4] 3688 	or	a, a
   5F1B C2 2F 5E      [10] 3689 	jp	NZ, 00107$
                           3690 ;src/main.c:967: if (nObj[index] >= 0) DeleteObject(index); 
   5F1E 0A            [ 7] 3691 	ld	a, (bc)
                           3692 ;src/main.c:982: if (nObj[index] == 22) nObj[index] = 1; // slightly more chance of showing 5 coins
   5F1F 5F            [ 4] 3693 	ld	e,a
   5F20 D6 16         [ 7] 3694 	sub	a, #0x16
   5F22 20 05         [12] 3695 	jr	NZ,00116$
   5F24 3E 01         [ 7] 3696 	ld	a, #0x01
   5F26 02            [ 7] 3697 	ld	(bc), a
   5F27 18 17         [12] 3698 	jr	00118$
   5F29                    3699 00116$:
                           3700 ;src/main.c:983: else if (nObj[index] == 21) nObj[index] = 3; // slightly more chance of powerUps showing up
   5F29 7B            [ 4] 3701 	ld	a, e
   5F2A D6 15         [ 7] 3702 	sub	a, #0x15
   5F2C 20 05         [12] 3703 	jr	NZ,00113$
   5F2E 3E 03         [ 7] 3704 	ld	a, #0x03
   5F30 02            [ 7] 3705 	ld	(bc), a
   5F31 18 0D         [12] 3706 	jr	00118$
   5F33                    3707 00113$:
                           3708 ;src/main.c:984: else if (nObj[index] > 3) nObj[index] = 0; // only PowerUps and coins, others are purchased
   5F33 3E 03         [ 7] 3709 	ld	a, #0x03
   5F35 93            [ 4] 3710 	sub	a, e
   5F36 E2 3B 5F      [10] 3711 	jp	PO, 00165$
   5F39 EE 80         [ 7] 3712 	xor	a, #0x80
   5F3B                    3713 00165$:
   5F3B F2 40 5F      [10] 3714 	jp	P, 00118$
   5F3E AF            [ 4] 3715 	xor	a, a
   5F3F 02            [ 7] 3716 	ld	(bc), a
   5F40                    3717 00118$:
   5F40 DD F9         [10] 3718 	ld	sp, ix
   5F42 DD E1         [14] 3719 	pop	ix
   5F44 C9            [10] 3720 	ret
                           3721 ;src/main.c:991: void AddObjectToScoreboard(u8 player) __z88dk_fastcall {
                           3722 ;	---------------------------------
                           3723 ; Function AddObjectToScoreboard
                           3724 ; ---------------------------------
   5F45                    3725 _AddObjectToScoreboard::
   5F45 4D            [ 4] 3726 	ld	c, l
                           3727 ;src/main.c:992: u8 x = spr[player].objNum_mov * 3 + 7;
   5F46 11 F3 48      [10] 3728 	ld	de, #_spr+0
   5F49 06 00         [ 7] 3729 	ld	b,#0x00
   5F4B 69            [ 4] 3730 	ld	l, c
   5F4C 60            [ 4] 3731 	ld	h, b
   5F4D 29            [11] 3732 	add	hl, hl
   5F4E 09            [11] 3733 	add	hl, bc
   5F4F 29            [11] 3734 	add	hl, hl
   5F50 09            [11] 3735 	add	hl, bc
   5F51 29            [11] 3736 	add	hl, hl
   5F52 09            [11] 3737 	add	hl, bc
   5F53 19            [11] 3738 	add	hl, de
   5F54 11 0C 00      [10] 3739 	ld	de, #0x000c
   5F57 19            [11] 3740 	add	hl, de
   5F58 5E            [ 7] 3741 	ld	e, (hl)
   5F59 7B            [ 4] 3742 	ld	a, e
   5F5A 87            [ 4] 3743 	add	a, a
   5F5B 83            [ 4] 3744 	add	a, e
   5F5C C6 07         [ 7] 3745 	add	a, #0x07
   5F5E 47            [ 4] 3746 	ld	b, a
                           3747 ;src/main.c:993: if (player == 1) x += 39;		
   5F5F 0D            [ 4] 3748 	dec	c
   5F60 20 04         [12] 3749 	jr	NZ,00102$
   5F62 78            [ 4] 3750 	ld	a, b
   5F63 C6 27         [ 7] 3751 	add	a, #0x27
   5F65 47            [ 4] 3752 	ld	b, a
   5F66                    3753 00102$:
                           3754 ;src/main.c:994: PrintObject(nPObj, x, 16);
   5F66 3E 10         [ 7] 3755 	ld	a, #0x10
   5F68 F5            [11] 3756 	push	af
   5F69 33            [ 6] 3757 	inc	sp
   5F6A C5            [11] 3758 	push	bc
   5F6B 33            [ 6] 3759 	inc	sp
   5F6C 3A 67 49      [13] 3760 	ld	a, (_nPObj)
   5F6F F5            [11] 3761 	push	af
   5F70 33            [ 6] 3762 	inc	sp
   5F71 CD 5C 57      [17] 3763 	call	_PrintObject
   5F74 F1            [10] 3764 	pop	af
   5F75 33            [ 6] 3765 	inc	sp
   5F76 C9            [10] 3766 	ret
                           3767 ;src/main.c:999: void PrintKey() {
                           3768 ;	---------------------------------
                           3769 ; Function PrintKey
                           3770 ; ---------------------------------
   5F77                    3771 _PrintKey::
                           3772 ;src/main.c:1002: while (i<=4) {
   5F77 0E 00         [ 7] 3773 	ld	c, #0x00
   5F79 16 3C         [ 7] 3774 	ld	d, #0x3c
   5F7B                    3775 00101$:
   5F7B 3E 04         [ 7] 3776 	ld	a, #0x04
   5F7D 91            [ 4] 3777 	sub	a, c
   5F7E D8            [11] 3778 	ret	C
                           3779 ;src/main.c:1003: PrintObject(doorKey[i], x, 16);
   5F7F 21 C9 48      [10] 3780 	ld	hl, #_doorKey
   5F82 06 00         [ 7] 3781 	ld	b, #0x00
   5F84 09            [11] 3782 	add	hl, bc
   5F85 46            [ 7] 3783 	ld	b, (hl)
   5F86 C5            [11] 3784 	push	bc
   5F87 D5            [11] 3785 	push	de
   5F88 3E 10         [ 7] 3786 	ld	a, #0x10
   5F8A F5            [11] 3787 	push	af
   5F8B 33            [ 6] 3788 	inc	sp
   5F8C 58            [ 4] 3789 	ld	e, b
   5F8D D5            [11] 3790 	push	de
   5F8E CD 5C 57      [17] 3791 	call	_PrintObject
   5F91 F1            [10] 3792 	pop	af
   5F92 33            [ 6] 3793 	inc	sp
   5F93 D1            [10] 3794 	pop	de
   5F94 C1            [10] 3795 	pop	bc
                           3796 ;src/main.c:1004: i++;
   5F95 0C            [ 4] 3797 	inc	c
                           3798 ;src/main.c:1005: x+=3;
   5F96 14            [ 4] 3799 	inc	d
   5F97 14            [ 4] 3800 	inc	d
   5F98 14            [ 4] 3801 	inc	d
   5F99 18 E0         [12] 3802 	jr	00101$
                           3803 ;src/main.c:1011: u8 CompareKeys() {
                           3804 ;	---------------------------------
                           3805 ; Function CompareKeys
                           3806 ; ---------------------------------
   5F9B                    3807 _CompareKeys::
                           3808 ;src/main.c:1012: if (doorKey[0] == playerKey[0] && 
   5F9B 21 C9 48      [10] 3809 	ld	hl, #_doorKey + 0
   5F9E 4E            [ 7] 3810 	ld	c, (hl)
   5F9F 3A CE 48      [13] 3811 	ld	a, (#_playerKey + 0)
   5FA2 91            [ 4] 3812 	sub	a, c
   5FA3 20 2B         [12] 3813 	jr	NZ,00102$
                           3814 ;src/main.c:1013: doorKey[1] == playerKey[1] &&
   5FA5 21 CA 48      [10] 3815 	ld	hl, #_doorKey + 1
   5FA8 4E            [ 7] 3816 	ld	c, (hl)
   5FA9 3A CF 48      [13] 3817 	ld	a, (#_playerKey + 1)
   5FAC 91            [ 4] 3818 	sub	a, c
   5FAD 20 21         [12] 3819 	jr	NZ,00102$
                           3820 ;src/main.c:1014: doorKey[2] == playerKey[2] && 
   5FAF 21 CB 48      [10] 3821 	ld	hl, #_doorKey + 2
   5FB2 4E            [ 7] 3822 	ld	c, (hl)
   5FB3 3A D0 48      [13] 3823 	ld	a, (#_playerKey + 2)
   5FB6 91            [ 4] 3824 	sub	a, c
   5FB7 20 17         [12] 3825 	jr	NZ,00102$
                           3826 ;src/main.c:1015: doorKey[3] == playerKey[3] &&
   5FB9 21 CC 48      [10] 3827 	ld	hl, #_doorKey + 3
   5FBC 4E            [ 7] 3828 	ld	c, (hl)
   5FBD 3A D1 48      [13] 3829 	ld	a, (#_playerKey + 3)
   5FC0 91            [ 4] 3830 	sub	a, c
   5FC1 20 0D         [12] 3831 	jr	NZ,00102$
                           3832 ;src/main.c:1016: doorKey[4] == playerKey[4]) 
   5FC3 21 CD 48      [10] 3833 	ld	hl, #_doorKey + 4
   5FC6 4E            [ 7] 3834 	ld	c, (hl)
   5FC7 3A D2 48      [13] 3835 	ld	a, (#_playerKey + 4)
   5FCA 91            [ 4] 3836 	sub	a, c
   5FCB 20 03         [12] 3837 	jr	NZ,00102$
                           3838 ;src/main.c:1017: return 1;
   5FCD 2E 01         [ 7] 3839 	ld	l, #0x01
   5FCF C9            [10] 3840 	ret
   5FD0                    3841 00102$:
                           3842 ;src/main.c:1019: return 0;
   5FD0 2E 00         [ 7] 3843 	ld	l, #0x00
   5FD2 C9            [10] 3844 	ret
                           3845 ;src/main.c:1024: void CheckActiveTile(u8 player) {	
                           3846 ;	---------------------------------
                           3847 ; Function CheckActiveTile
                           3848 ; ---------------------------------
   5FD3                    3849 _CheckActiveTile::
   5FD3 DD E5         [15] 3850 	push	ix
   5FD5 DD 21 00 00   [14] 3851 	ld	ix,#0
   5FD9 DD 39         [15] 3852 	add	ix,sp
   5FDB 21 FA FF      [10] 3853 	ld	hl, #-6
   5FDE 39            [11] 3854 	add	hl, sp
   5FDF F9            [ 6] 3855 	ld	sp, hl
                           3856 ;src/main.c:1025: u8 currentTile = *GetTileNum(spr[player].x+3, spr[player].y+8);	
   5FE0 DD 4E 04      [19] 3857 	ld	c,4 (ix)
   5FE3 06 00         [ 7] 3858 	ld	b,#0x00
   5FE5 69            [ 4] 3859 	ld	l, c
   5FE6 60            [ 4] 3860 	ld	h, b
   5FE7 29            [11] 3861 	add	hl, hl
   5FE8 09            [11] 3862 	add	hl, bc
   5FE9 29            [11] 3863 	add	hl, hl
   5FEA 09            [11] 3864 	add	hl, bc
   5FEB 29            [11] 3865 	add	hl, hl
   5FEC 09            [11] 3866 	add	hl, bc
   5FED 01 F3 48      [10] 3867 	ld	bc,#_spr
   5FF0 09            [11] 3868 	add	hl,bc
   5FF1 4D            [ 4] 3869 	ld	c,l
   5FF2 44            [ 4] 3870 	ld	b,h
   5FF3 23            [ 6] 3871 	inc	hl
   5FF4 23            [ 6] 3872 	inc	hl
   5FF5 23            [ 6] 3873 	inc	hl
   5FF6 7E            [ 7] 3874 	ld	a, (hl)
   5FF7 C6 08         [ 7] 3875 	add	a, #0x08
   5FF9 57            [ 4] 3876 	ld	d, a
   5FFA 69            [ 4] 3877 	ld	l, c
   5FFB 60            [ 4] 3878 	ld	h, b
   5FFC 23            [ 6] 3879 	inc	hl
   5FFD 23            [ 6] 3880 	inc	hl
   5FFE 7E            [ 7] 3881 	ld	a, (hl)
   5FFF C6 03         [ 7] 3882 	add	a, #0x03
   6001 C5            [11] 3883 	push	bc
   6002 5F            [ 4] 3884 	ld	e, a
   6003 D5            [11] 3885 	push	de
   6004 CD A1 4B      [17] 3886 	call	_GetTileNum
   6007 F1            [10] 3887 	pop	af
   6008 C1            [10] 3888 	pop	bc
   6009 7E            [ 7] 3889 	ld	a, (hl)
   600A DD 77 FB      [19] 3890 	ld	-5 (ix), a
                           3891 ;src/main.c:1026: u8 i = 0;
   600D DD 36 FA 00   [19] 3892 	ld	-6 (ix), #0x00
                           3893 ;src/main.c:1031: while (coinScore[player] > 0 && spr[player].objNum_mov < 5) {
   6011 21 0C 00      [10] 3894 	ld	hl, #0x000c
   6014 09            [11] 3895 	add	hl,bc
   6015 DD 75 FC      [19] 3896 	ld	-4 (ix), l
   6018 DD 74 FD      [19] 3897 	ld	-3 (ix), h
                           3898 ;src/main.c:1029: if (currentTile >= TILESET_STORE && currentTile <= TILESET_STORE + 5) {
   601B DD 7E FB      [19] 3899 	ld	a, -5 (ix)
   601E D6 27         [ 7] 3900 	sub	a, #0x27
   6020 DA F3 60      [10] 3901 	jp	C, 00140$
   6023 3E 2C         [ 7] 3902 	ld	a, #0x2c
   6025 DD 96 FB      [19] 3903 	sub	a, -5 (ix)
   6028 DA F3 60      [10] 3904 	jp	C, 00140$
                           3905 ;src/main.c:1031: while (coinScore[player] > 0 && spr[player].objNum_mov < 5) {
   602B                    3906 00112$:
   602B 3E C7         [ 7] 3907 	ld	a, #<(_coinScore)
   602D DD 86 04      [19] 3908 	add	a, 4 (ix)
   6030 5F            [ 4] 3909 	ld	e, a
   6031 3E 48         [ 7] 3910 	ld	a, #>(_coinScore)
   6033 CE 00         [ 7] 3911 	adc	a, #0x00
   6035 57            [ 4] 3912 	ld	d, a
   6036 1A            [ 7] 3913 	ld	a, (de)
   6037 47            [ 4] 3914 	ld	b,a
   6038 B7            [ 4] 3915 	or	a, a
   6039 CA 05 62      [10] 3916 	jp	Z, 00143$
   603C DD 6E FC      [19] 3917 	ld	l,-4 (ix)
   603F DD 66 FD      [19] 3918 	ld	h,-3 (ix)
   6042 4E            [ 7] 3919 	ld	c, (hl)
   6043 79            [ 4] 3920 	ld	a, c
   6044 D6 05         [ 7] 3921 	sub	a, #0x05
   6046 D2 05 62      [10] 3922 	jp	NC, 00143$
                           3923 ;src/main.c:1032: if (coinScore[player] < 13) // no money left
                           3924 ;src/main.c:1033: nPObj = coinScore[player] + 3; // assign the corresponding object to the available money
   6049 78            [ 4] 3925 	ld	a,b
   604A FE 0D         [ 7] 3926 	cp	a,#0x0d
   604C 30 08         [12] 3927 	jr	NC,00102$
   604E 21 67 49      [10] 3928 	ld	hl, #_nPObj
   6051 C6 03         [ 7] 3929 	add	a, #0x03
   6053 77            [ 7] 3930 	ld	(hl), a
   6054 18 05         [12] 3931 	jr	00103$
   6056                    3932 00102$:
                           3933 ;src/main.c:1035: nPObj = 15; // assign the most expensive object
   6056 21 67 49      [10] 3934 	ld	hl,#_nPObj + 0
   6059 36 0F         [10] 3935 	ld	(hl), #0x0f
   605B                    3936 00103$:
                           3937 ;src/main.c:1036: spr[player].objNum_mov++; // increases the number of objects the player carries
   605B 0C            [ 4] 3938 	inc	c
   605C DD 6E FC      [19] 3939 	ld	l,-4 (ix)
   605F DD 66 FD      [19] 3940 	ld	h,-3 (ix)
   6062 71            [ 7] 3941 	ld	(hl), c
                           3942 ;src/main.c:1037: potScore[player] += coinScore[player]; // increase the potion score
   6063 FD 21 C5 48   [14] 3943 	ld	iy, #_potScore
   6067 DD 4E 04      [19] 3944 	ld	c,4 (ix)
   606A 06 00         [ 7] 3945 	ld	b,#0x00
   606C FD 09         [15] 3946 	add	iy, bc
   606E FD 4E 00      [19] 3947 	ld	c, 0 (iy)
   6071 1A            [ 7] 3948 	ld	a, (de)
   6072 6F            [ 4] 3949 	ld	l, a
   6073 09            [11] 3950 	add	hl, bc
   6074 FD 75 00      [19] 3951 	ld	0 (iy), l
                           3952 ;src/main.c:1038: score[player] += coinScore[player] * 2; // increase the player score
   6077 DD 6E 04      [19] 3953 	ld	l, 4 (ix)
   607A 26 00         [ 7] 3954 	ld	h, #0x00
   607C 29            [11] 3955 	add	hl, hl
   607D 4D            [ 4] 3956 	ld	c, l
   607E 44            [ 4] 3957 	ld	b, h
   607F FD 21 BF 48   [14] 3958 	ld	iy, #_score
   6083 FD 09         [15] 3959 	add	iy, bc
   6085 FD 4E 00      [19] 3960 	ld	c, 0 (iy)
   6088 FD 46 01      [19] 3961 	ld	b, 1 (iy)
   608B 1A            [ 7] 3962 	ld	a, (de)
   608C 6F            [ 4] 3963 	ld	l, a
   608D 26 00         [ 7] 3964 	ld	h, #0x00
   608F 29            [11] 3965 	add	hl, hl
   6090 09            [11] 3966 	add	hl, bc
   6091 FD 75 00      [19] 3967 	ld	0 (iy), l
   6094 FD 74 01      [19] 3968 	ld	1 (iy), h
                           3969 ;src/main.c:1039: RefreshHighScore(player);
   6097 D5            [11] 3970 	push	de
   6098 DD 6E 04      [19] 3971 	ld	l, 4 (ix)
   609B CD 63 54      [17] 3972 	call	_RefreshHighScore
   609E D1            [10] 3973 	pop	de
                           3974 ;src/main.c:1040: coinScore[player] -= nPObj - 3; // decrease the coin score
   609F 1A            [ 7] 3975 	ld	a, (de)
   60A0 4F            [ 4] 3976 	ld	c, a
   60A1 3A 67 49      [13] 3977 	ld	a,(#_nPObj + 0)
   60A4 C6 FD         [ 7] 3978 	add	a, #0xfd
   60A6 47            [ 4] 3979 	ld	b, a
   60A7 79            [ 4] 3980 	ld	a, c
   60A8 90            [ 4] 3981 	sub	a, b
   60A9 12            [ 7] 3982 	ld	(de), a
                           3983 ;src/main.c:1041: if (!TwoPlayers) {
   60AA 3A BE 48      [13] 3984 	ld	a,(#_TwoPlayers + 0)
   60AD B7            [ 4] 3985 	or	a, a
   60AE 20 34         [12] 3986 	jr	NZ,00110$
                           3987 ;src/main.c:1042: playerKey[spr[player].objNum_mov-1] = nPObj; // add object to key
   60B0 DD 6E FC      [19] 3988 	ld	l,-4 (ix)
   60B3 DD 66 FD      [19] 3989 	ld	h,-3 (ix)
   60B6 4E            [ 7] 3990 	ld	c, (hl)
   60B7 0D            [ 4] 3991 	dec	c
   60B8 21 CE 48      [10] 3992 	ld	hl, #_playerKey
   60BB 06 00         [ 7] 3993 	ld	b, #0x00
   60BD 09            [11] 3994 	add	hl, bc
   60BE 3A 67 49      [13] 3995 	ld	a,(#_nPObj + 0)
   60C1 77            [ 7] 3996 	ld	(hl), a
                           3997 ;src/main.c:1044: if (nMap == 0 && (nTip<3 || (nTip<4 && spr[0].objNum_mov >= 5)))
   60C2 3A BA 48      [13] 3998 	ld	a,(#_nMap + 0)
   60C5 B7            [ 4] 3999 	or	a, a
   60C6 20 1C         [12] 4000 	jr	NZ,00110$
   60C8 FD 21 D9 48   [14] 4001 	ld	iy, #_nTip
   60CC FD 7E 00      [19] 4002 	ld	a, 0 (iy)
   60CF D6 03         [ 7] 4003 	sub	a, #0x03
   60D1 38 0E         [12] 4004 	jr	C,00104$
   60D3 FD 7E 00      [19] 4005 	ld	a, 0 (iy)
   60D6 D6 04         [ 7] 4006 	sub	a, #0x04
   60D8 30 0A         [12] 4007 	jr	NC,00110$
   60DA 3A FF 48      [13] 4008 	ld	a, (#(_spr + 0x000c) + 0)
   60DD D6 05         [ 7] 4009 	sub	a, #0x05
   60DF 38 03         [12] 4010 	jr	C,00110$
   60E1                    4011 00104$:
                           4012 ;src/main.c:1045: PrintTip();
   60E1 CD E5 51      [17] 4013 	call	_PrintTip
   60E4                    4014 00110$:
                           4015 ;src/main.c:1047: DeleteObjectInStore();
   60E4 CD 90 58      [17] 4016 	call	_DeleteObjectInStore
                           4017 ;src/main.c:1048: AddObjectToScoreboard(player); 
   60E7 DD 6E 04      [19] 4018 	ld	l, 4 (ix)
   60EA CD 45 5F      [17] 4019 	call	_AddObjectToScoreboard
                           4020 ;src/main.c:1049: RefreshScoreboard();
   60ED CD EC 55      [17] 4021 	call	_RefreshScoreboard
   60F0 C3 2B 60      [10] 4022 	jp	00112$
   60F3                    4023 00140$:
                           4024 ;src/main.c:1054: else if (currentTile == TILESET_WELL && (potScore[player] > 0 || coinScore[player] > 0)) {	
   60F3 DD 7E FB      [19] 4025 	ld	a, -5 (ix)
   60F6 D6 26         [ 7] 4026 	sub	a, #0x26
   60F8 C2 E6 61      [10] 4027 	jp	NZ,00135$
   60FB 3E C5         [ 7] 4028 	ld	a, #<(_potScore)
   60FD DD 86 04      [19] 4029 	add	a, 4 (ix)
   6100 DD 77 FE      [19] 4030 	ld	-2 (ix), a
   6103 3E 48         [ 7] 4031 	ld	a, #>(_potScore)
   6105 CE 00         [ 7] 4032 	adc	a, #0x00
   6107 DD 77 FF      [19] 4033 	ld	-1 (ix), a
   610A DD 6E FE      [19] 4034 	ld	l,-2 (ix)
   610D DD 66 FF      [19] 4035 	ld	h,-1 (ix)
   6110 7E            [ 7] 4036 	ld	a, (hl)
   6111 B7            [ 4] 4037 	or	a, a
   6112 20 0E         [12] 4038 	jr	NZ,00134$
   6114 01 C7 48      [10] 4039 	ld	bc, #_coinScore+0
   6117 DD 6E 04      [19] 4040 	ld	l,4 (ix)
   611A 26 00         [ 7] 4041 	ld	h,#0x00
   611C 09            [11] 4042 	add	hl, bc
   611D 7E            [ 7] 4043 	ld	a, (hl)
   611E B7            [ 4] 4044 	or	a, a
   611F CA E6 61      [10] 4045 	jp	Z, 00135$
   6122                    4046 00134$:
                           4047 ;src/main.c:1057: if (player == 0)
   6122 DD 7E 04      [19] 4048 	ld	a, 4 (ix)
   6125 B7            [ 4] 4049 	or	a, a
   6126 20 17         [12] 4050 	jr	NZ,00116$
                           4051 ;src/main.c:1059: cpct_px2byteM0(BG_COLOR, BG_COLOR), 20, 8);
   6128 21 01 01      [10] 4052 	ld	hl, #0x0101
   612B E5            [11] 4053 	push	hl
   612C CD 9D 46      [17] 4054 	call	_cpct_px2byteM0
   612F 26 00         [ 7] 4055 	ld	h, #0x00
                           4056 ;src/main.c:1058: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 7, 16), 
   6131 01 14 08      [10] 4057 	ld	bc, #0x0814
   6134 C5            [11] 4058 	push	bc
   6135 E5            [11] 4059 	push	hl
   6136 21 A7 C0      [10] 4060 	ld	hl, #0xc0a7
   6139 E5            [11] 4061 	push	hl
   613A CD D7 46      [17] 4062 	call	_cpct_drawSolidBox
   613D 18 15         [12] 4063 	jr	00117$
   613F                    4064 00116$:
                           4065 ;src/main.c:1062: cpct_px2byteM0(BG_COLOR, BG_COLOR), 20, 8);
   613F 21 01 01      [10] 4066 	ld	hl, #0x0101
   6142 E5            [11] 4067 	push	hl
   6143 CD 9D 46      [17] 4068 	call	_cpct_px2byteM0
   6146 26 00         [ 7] 4069 	ld	h, #0x00
                           4070 ;src/main.c:1061: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 46, 16), 
   6148 01 14 08      [10] 4071 	ld	bc, #0x0814
   614B C5            [11] 4072 	push	bc
   614C E5            [11] 4073 	push	hl
   614D 21 CE C0      [10] 4074 	ld	hl, #0xc0ce
   6150 E5            [11] 4075 	push	hl
   6151 CD D7 46      [17] 4076 	call	_cpct_drawSolidBox
   6154                    4077 00117$:
                           4078 ;src/main.c:1064: coinScore[player] = 0; 		// throwing money
   6154 01 C7 48      [10] 4079 	ld	bc, #_coinScore+0
   6157 DD 6E 04      [19] 4080 	ld	l,4 (ix)
   615A 26 00         [ 7] 4081 	ld	h,#0x00
   615C 09            [11] 4082 	add	hl, bc
   615D 36 00         [10] 4083 	ld	(hl), #0x00
                           4084 ;src/main.c:1065: spr[player].objNum_mov = 0;	// throwing objects
   615F DD 6E FC      [19] 4085 	ld	l,-4 (ix)
   6162 DD 66 FD      [19] 4086 	ld	h,-3 (ix)
   6165 36 00         [10] 4087 	ld	(hl), #0x00
                           4088 ;src/main.c:1066: potScore[player] = 0;		// potion value to zero
   6167 DD 6E FE      [19] 4089 	ld	l,-2 (ix)
   616A DD 66 FF      [19] 4090 	ld	h,-1 (ix)
   616D 36 00         [10] 4091 	ld	(hl), #0x00
                           4092 ;src/main.c:1068: if (!TwoPlayers) { // search for valid objects to retrieve them (only 1 player game)			
   616F 3A BE 48      [13] 4093 	ld	a,(#_TwoPlayers + 0)
   6172 B7            [ 4] 4094 	or	a, a
   6173 20 6C         [12] 4095 	jr	NZ,00128$
                           4096 ;src/main.c:1069: while (i<5) {
   6175 01 CE 48      [10] 4097 	ld	bc, #_playerKey+0
   6178                    4098 00124$:
   6178 DD 7E FA      [19] 4099 	ld	a, -6 (ix)
   617B D6 05         [ 7] 4100 	sub	a, #0x05
   617D 30 5F         [12] 4101 	jr	NC,00126$
                           4102 ;src/main.c:1070: if (playerKey[i] == doorKey[i] ) {
   617F DD 6E FA      [19] 4103 	ld	l,-6 (ix)
   6182 26 00         [ 7] 4104 	ld	h,#0x00
   6184 09            [11] 4105 	add	hl, bc
   6185 5E            [ 7] 4106 	ld	e, (hl)
   6186 3E C9         [ 7] 4107 	ld	a, #<(_doorKey)
   6188 DD 86 FA      [19] 4108 	add	a, -6 (ix)
   618B 6F            [ 4] 4109 	ld	l, a
   618C 3E 48         [ 7] 4110 	ld	a, #>(_doorKey)
   618E CE 00         [ 7] 4111 	adc	a, #0x00
   6190 67            [ 4] 4112 	ld	h, a
   6191 7E            [ 7] 4113 	ld	a, (hl)
   6192 93            [ 4] 4114 	sub	a, e
   6193 20 34         [12] 4115 	jr	NZ,00161$
                           4116 ;src/main.c:1071: potScore[0] += playerKey[i] - 3; // increases potion value
   6195 21 C5 48      [10] 4117 	ld	hl, #_potScore + 0
   6198 6E            [ 7] 4118 	ld	l, (hl)
   6199 7B            [ 4] 4119 	ld	a, e
   619A C6 FD         [ 7] 4120 	add	a, #0xfd
   619C 85            [ 4] 4121 	add	a,l
   619D 32 C5 48      [13] 4122 	ld	(#_potScore),a
                           4123 ;src/main.c:1072: spr[0].objNum_mov++; // increases the number of objects		
   61A0 3A FF 48      [13] 4124 	ld	a, (#(_spr + 0x000c) + 0)
   61A3 3C            [ 4] 4125 	inc	a
   61A4 32 FF 48      [13] 4126 	ld	(#(_spr + 0x000c)),a
                           4127 ;src/main.c:1074: PrintObject(playerKey[i++], spr[0].objNum_mov * 3 + 7, 16);					
   61A7 5F            [ 4] 4128 	ld	e, a
   61A8 87            [ 4] 4129 	add	a, a
   61A9 83            [ 4] 4130 	add	a, e
   61AA C6 07         [ 7] 4131 	add	a, #0x07
   61AC 5F            [ 4] 4132 	ld	e, a
   61AD DD 6E FA      [19] 4133 	ld	l, -6 (ix)
   61B0 DD 34 FA      [23] 4134 	inc	-6 (ix)
   61B3 26 00         [ 7] 4135 	ld	h,#0x00
   61B5 09            [11] 4136 	add	hl, bc
   61B6 56            [ 7] 4137 	ld	d, (hl)
   61B7 C5            [11] 4138 	push	bc
   61B8 3E 10         [ 7] 4139 	ld	a, #0x10
   61BA F5            [11] 4140 	push	af
   61BB 33            [ 6] 4141 	inc	sp
   61BC 7B            [ 4] 4142 	ld	a, e
   61BD F5            [11] 4143 	push	af
   61BE 33            [ 6] 4144 	inc	sp
   61BF D5            [11] 4145 	push	de
   61C0 33            [ 6] 4146 	inc	sp
   61C1 CD 5C 57      [17] 4147 	call	_PrintObject
   61C4 F1            [10] 4148 	pop	af
   61C5 33            [ 6] 4149 	inc	sp
   61C6 C1            [10] 4150 	pop	bc
   61C7 18 AF         [12] 4151 	jr	00124$
                           4152 ;src/main.c:1077: while (i<5)	
   61C9                    4153 00161$:
   61C9 DD 5E FA      [19] 4154 	ld	e, -6 (ix)
   61CC                    4155 00118$:
   61CC 7B            [ 4] 4156 	ld	a, e
   61CD D6 05         [ 7] 4157 	sub	a, #0x05
   61CF 30 A7         [12] 4158 	jr	NC,00124$
                           4159 ;src/main.c:1078: playerKey[i++] = 0;					
   61D1 53            [ 4] 4160 	ld	d, e
   61D2 1C            [ 4] 4161 	inc	e
   61D3 DD 73 FA      [19] 4162 	ld	-6 (ix), e
   61D6 6A            [ 4] 4163 	ld	l,d
   61D7 26 00         [ 7] 4164 	ld	h,#0x00
   61D9 09            [11] 4165 	add	hl, bc
   61DA 36 00         [10] 4166 	ld	(hl), #0x00
   61DC 18 EE         [12] 4167 	jr	00118$
   61DE                    4168 00126$:
                           4169 ;src/main.c:1080: DeleteObjectInStore();
   61DE CD 90 58      [17] 4170 	call	_DeleteObjectInStore
   61E1                    4171 00128$:
                           4172 ;src/main.c:1082: RefreshScoreboard();
   61E1 CD EC 55      [17] 4173 	call	_RefreshScoreboard
   61E4 18 1F         [12] 4174 	jr	00143$
   61E6                    4175 00135$:
                           4176 ;src/main.c:1086: else if ((currentTile == TILESET_DOOR || currentTile == 30) && 
   61E6 DD 7E FB      [19] 4177 	ld	a, -5 (ix)
   61E9 D6 0E         [ 7] 4178 	sub	a, #0x0e
   61EB 28 07         [12] 4179 	jr	Z,00132$
   61ED DD 7E FB      [19] 4180 	ld	a, -5 (ix)
   61F0 D6 1E         [ 7] 4181 	sub	a, #0x1e
   61F2 20 11         [12] 4182 	jr	NZ,00143$
   61F4                    4183 00132$:
                           4184 ;src/main.c:1087: spr[0].objNum_mov == 5 && CompareKeys()) {
   61F4 3A FF 48      [13] 4185 	ld	a, (#(_spr + 0x000c) + 0)
   61F7 D6 05         [ 7] 4186 	sub	a, #0x05
   61F9 20 0A         [12] 4187 	jr	NZ,00143$
   61FB CD 9B 5F      [17] 4188 	call	_CompareKeys
   61FE 7D            [ 4] 4189 	ld	a, l
   61FF B7            [ 4] 4190 	or	a, a
   6200 28 03         [12] 4191 	jr	Z,00143$
                           4192 ;src/main.c:1088: MakeDuel();	
   6202 CD 2B 6D      [17] 4193 	call	_MakeDuel
   6205                    4194 00143$:
   6205 DD F9         [10] 4195 	ld	sp, ix
   6207 DD E1         [14] 4196 	pop	ix
   6209 C9            [10] 4197 	ret
                           4198 ;src/main.c:1106: void PrintSprite(TSpr *pSpr) __z88dk_fastcall {
                           4199 ;	---------------------------------
                           4200 ; Function PrintSprite
                           4201 ; ---------------------------------
   620A                    4202 _PrintSprite::
                           4203 ;src/main.c:1109: SPR_W, SPR_H, g_maskTable);
                           4204 ;src/main.c:1108: cpct_getScreenPtr(CPCT_VMEM_START, pSpr->x, pSpr->y), 
   620A 4D            [ 4] 4205 	ld	c,l
   620B 44            [ 4] 4206 	ld	b,h
   620C 23            [ 6] 4207 	inc	hl
   620D 23            [ 6] 4208 	inc	hl
   620E 23            [ 6] 4209 	inc	hl
   620F 56            [ 7] 4210 	ld	d, (hl)
   6210 69            [ 4] 4211 	ld	l, c
   6211 60            [ 4] 4212 	ld	h, b
   6212 23            [ 6] 4213 	inc	hl
   6213 23            [ 6] 4214 	inc	hl
   6214 7E            [ 7] 4215 	ld	a, (hl)
   6215 C5            [11] 4216 	push	bc
   6216 5F            [ 4] 4217 	ld	e, a
   6217 D5            [11] 4218 	push	de
   6218 21 00 C0      [10] 4219 	ld	hl, #0xc000
   621B E5            [11] 4220 	push	hl
   621C CD B9 47      [17] 4221 	call	_cpct_getScreenPtr
   621F EB            [ 4] 4222 	ex	de,hl
   6220 FD E1         [14] 4223 	pop	iy
   6222 FD 6E 08      [19] 4224 	ld	l, 8 (iy)
   6225 FD 66 09      [19] 4225 	ld	h, 9 (iy)
   6228 4E            [ 7] 4226 	ld	c, (hl)
   6229 23            [ 6] 4227 	inc	hl
   622A 46            [ 7] 4228 	ld	b, (hl)
   622B 21 00 01      [10] 4229 	ld	hl, #_g_maskTable
   622E E5            [11] 4230 	push	hl
   622F 21 05 0C      [10] 4231 	ld	hl, #0x0c05
   6232 E5            [11] 4232 	push	hl
   6233 D5            [11] 4233 	push	de
   6234 C5            [11] 4234 	push	bc
   6235 CD CF 47      [17] 4235 	call	_cpct_drawSpriteMaskedAlignedTable
   6238 C9            [10] 4236 	ret
                           4237 ;src/main.c:1114: void DeleteSprite(TSpr *pSpr) __z88dk_fastcall {	
                           4238 ;	---------------------------------
                           4239 ; Function DeleteSprite
                           4240 ; ---------------------------------
   6239                    4241 _DeleteSprite::
   6239 DD E5         [15] 4242 	push	ix
   623B DD 21 00 00   [14] 4243 	ld	ix,#0
   623F DD 39         [15] 4244 	add	ix,sp
   6241 F5            [11] 4245 	push	af
   6242 3B            [ 6] 4246 	dec	sp
   6243 4D            [ 4] 4247 	ld	c, l
   6244 44            [ 4] 4248 	ld	b, h
                           4249 ;src/main.c:1116: 3 + (pSpr->px & 1), 3 + (pSpr->py & 3 ? 1 : 0),	
   6245 C5            [11] 4250 	push	bc
   6246 FD E1         [14] 4251 	pop	iy
   6248 FD 5E 05      [19] 4252 	ld	e, 5 (iy)
   624B 7B            [ 4] 4253 	ld	a, e
   624C E6 03         [ 7] 4254 	and	a, #0x03
   624E 28 04         [12] 4255 	jr	Z,00103$
   6250 3E 01         [ 7] 4256 	ld	a, #0x01
   6252 18 02         [12] 4257 	jr	00104$
   6254                    4258 00103$:
   6254 3E 00         [ 7] 4259 	ld	a, #0x00
   6256                    4260 00104$:
   6256 C6 03         [ 7] 4261 	add	a, #0x03
   6258 DD 77 FF      [19] 4262 	ld	-1 (ix), a
   625B C5            [11] 4263 	push	bc
   625C FD E1         [14] 4264 	pop	iy
   625E FD 4E 04      [19] 4265 	ld	c, 4 (iy)
   6261 79            [ 4] 4266 	ld	a, c
   6262 E6 01         [ 7] 4267 	and	a, #0x01
   6264 47            [ 4] 4268 	ld	b, a
   6265 04            [ 4] 4269 	inc	b
   6266 04            [ 4] 4270 	inc	b
   6267 04            [ 4] 4271 	inc	b
                           4272 ;src/main.c:1115: cpct_etm_drawTileBox2x4(pSpr->px / 2, (pSpr->py - ORIG_MAP_Y) / 4, 
   6268 16 00         [ 7] 4273 	ld	d, #0x00
   626A 7B            [ 4] 4274 	ld	a, e
   626B C6 E0         [ 7] 4275 	add	a, #0xe0
   626D DD 77 FD      [19] 4276 	ld	-3 (ix), a
   6270 7A            [ 4] 4277 	ld	a, d
   6271 CE FF         [ 7] 4278 	adc	a, #0xff
   6273 DD 77 FE      [19] 4279 	ld	-2 (ix), a
   6276 E1            [10] 4280 	pop	hl
   6277 E5            [11] 4281 	push	hl
   6278 DD CB FE 7E   [20] 4282 	bit	7, -2 (ix)
   627C 28 04         [12] 4283 	jr	Z,00105$
   627E 21 E3 FF      [10] 4284 	ld	hl, #0xffe3
   6281 19            [11] 4285 	add	hl, de
   6282                    4286 00105$:
   6282 CB 2C         [ 8] 4287 	sra	h
   6284 CB 1D         [ 8] 4288 	rr	l
   6286 CB 2C         [ 8] 4289 	sra	h
   6288 CB 1D         [ 8] 4290 	rr	l
   628A 5D            [ 4] 4291 	ld	e, l
   628B CB 39         [ 8] 4292 	srl	c
   628D 21 71 0F      [10] 4293 	ld	hl, #0x0f71
   6290 E5            [11] 4294 	push	hl
   6291 21 40 C1      [10] 4295 	ld	hl, #0xc140
   6294 E5            [11] 4296 	push	hl
   6295 3E 28         [ 7] 4297 	ld	a, #0x28
   6297 F5            [11] 4298 	push	af
   6298 33            [ 6] 4299 	inc	sp
   6299 DD 7E FF      [19] 4300 	ld	a, -1 (ix)
   629C F5            [11] 4301 	push	af
   629D 33            [ 6] 4302 	inc	sp
   629E C5            [11] 4303 	push	bc
   629F 33            [ 6] 4304 	inc	sp
   62A0 43            [ 4] 4305 	ld	b, e
   62A1 C5            [11] 4306 	push	bc
   62A2 CD FB 44      [17] 4307 	call	_cpct_etm_drawTileBox2x4
   62A5 DD F9         [10] 4308 	ld	sp, ix
   62A7 DD E1         [14] 4309 	pop	ix
   62A9 C9            [10] 4310 	ret
                           4311 ;src/main.c:1122: void AssignFrame(TSpr *pSpr, TFrm **anim) {
                           4312 ;	---------------------------------
                           4313 ; Function AssignFrame
                           4314 ; ---------------------------------
   62AA                    4315 _AssignFrame::
   62AA DD E5         [15] 4316 	push	ix
   62AC DD 21 00 00   [14] 4317 	ld	ix,#0
   62B0 DD 39         [15] 4318 	add	ix,sp
                           4319 ;src/main.c:1123: u8 animPause = 2;
   62B2 16 02         [ 7] 4320 	ld	d, #0x02
                           4321 ;src/main.c:1124: if (pSpr->num > 3) animPause = 1; // slow enemies (4 and 5) have no pause in animation
   62B4 DD 6E 04      [19] 4322 	ld	l,4 (ix)
   62B7 DD 66 05      [19] 4323 	ld	h,5 (ix)
   62BA 4E            [ 7] 4324 	ld	c, (hl)
   62BB 3E 03         [ 7] 4325 	ld	a, #0x03
   62BD 91            [ 4] 4326 	sub	a, c
   62BE 30 02         [12] 4327 	jr	NC,00102$
   62C0 16 01         [ 7] 4328 	ld	d, #0x01
   62C2                    4329 00102$:
                           4330 ;src/main.c:1125: pSpr->frm = anim[pSpr->nFrm / animPause];	
   62C2 7D            [ 4] 4331 	ld	a, l
   62C3 C6 08         [ 7] 4332 	add	a, #0x08
   62C5 4F            [ 4] 4333 	ld	c, a
   62C6 7C            [ 4] 4334 	ld	a, h
   62C7 CE 00         [ 7] 4335 	adc	a, #0x00
   62C9 47            [ 4] 4336 	ld	b, a
   62CA E5            [11] 4337 	push	hl
   62CB FD E1         [14] 4338 	pop	iy
   62CD FD 7E 0A      [19] 4339 	ld	a, 10 (iy)
   62D0 C5            [11] 4340 	push	bc
   62D1 5F            [ 4] 4341 	ld	e, a
   62D2 D5            [11] 4342 	push	de
   62D3 CD 84 43      [17] 4343 	call	__divuchar
   62D6 F1            [10] 4344 	pop	af
   62D7 C1            [10] 4345 	pop	bc
   62D8 26 00         [ 7] 4346 	ld	h, #0x00
   62DA 29            [11] 4347 	add	hl, hl
   62DB EB            [ 4] 4348 	ex	de,hl
   62DC DD 6E 06      [19] 4349 	ld	l,6 (ix)
   62DF DD 66 07      [19] 4350 	ld	h,7 (ix)
   62E2 19            [11] 4351 	add	hl, de
   62E3 5E            [ 7] 4352 	ld	e, (hl)
   62E4 23            [ 6] 4353 	inc	hl
   62E5 56            [ 7] 4354 	ld	d, (hl)
   62E6 7B            [ 4] 4355 	ld	a, e
   62E7 02            [ 7] 4356 	ld	(bc), a
   62E8 03            [ 6] 4357 	inc	bc
   62E9 7A            [ 4] 4358 	ld	a, d
   62EA 02            [ 7] 4359 	ld	(bc), a
   62EB DD E1         [14] 4360 	pop	ix
   62ED C9            [10] 4361 	ret
                           4362 ;src/main.c:1130: void SelectFrame(TSpr *pSpr) __z88dk_fastcall {
                           4363 ;	---------------------------------
                           4364 ; Function SelectFrame
                           4365 ; ---------------------------------
   62EE                    4366 _SelectFrame::
   62EE DD E5         [15] 4367 	push	ix
   62F0 DD 21 00 00   [14] 4368 	ld	ix,#0
   62F4 DD 39         [15] 4369 	add	ix,sp
   62F6 F5            [11] 4370 	push	af
   62F7 DD 75 FE      [19] 4371 	ld	-2 (ix), l
   62FA DD 74 FF      [19] 4372 	ld	-1 (ix), h
                           4373 ;src/main.c:1132: if(pSpr->ident == SORCERER1) {
   62FD E1            [10] 4374 	pop	hl
   62FE E5            [11] 4375 	push	hl
   62FF 23            [ 6] 4376 	inc	hl
   6300 4E            [ 7] 4377 	ld	c, (hl)
                           4378 ;src/main.c:1133: switch(pSpr->status) {
   6301 DD 7E FE      [19] 4379 	ld	a, -2 (ix)
   6304 C6 06         [ 7] 4380 	add	a, #0x06
   6306 5F            [ 4] 4381 	ld	e, a
   6307 DD 7E FF      [19] 4382 	ld	a, -1 (ix)
   630A CE 00         [ 7] 4383 	adc	a, #0x00
   630C 57            [ 4] 4384 	ld	d, a
                           4385 ;src/main.c:1132: if(pSpr->ident == SORCERER1) {
   630D 79            [ 4] 4386 	ld	a, c
   630E B7            [ 4] 4387 	or	a, a
   630F 20 75         [12] 4388 	jr	NZ,00149$
                           4389 ;src/main.c:1133: switch(pSpr->status) {
   6311 1A            [ 7] 4390 	ld	a, (de)
   6312 4F            [ 4] 4391 	ld	c, a
   6313 3E 04         [ 7] 4392 	ld	a, #0x04
   6315 91            [ 4] 4393 	sub	a, c
   6316 DA 5F 65      [10] 4394 	jp	C, 00151$
   6319 06 00         [ 7] 4395 	ld	b, #0x00
   631B 21 22 63      [10] 4396 	ld	hl, #00245$
   631E 09            [11] 4397 	add	hl, bc
   631F 09            [11] 4398 	add	hl, bc
   6320 09            [11] 4399 	add	hl, bc
   6321 E9            [ 4] 4400 	jp	(hl)
   6322                    4401 00245$:
   6322 C3 31 63      [10] 4402 	jp	00101$
   6325 C3 41 63      [10] 4403 	jp	00102$
   6328 C3 51 63      [10] 4404 	jp	00103$
   632B C3 61 63      [10] 4405 	jp	00104$
   632E C3 71 63      [10] 4406 	jp	00105$
                           4407 ;src/main.c:1134: case S_walkingUp: 		{AssignFrame(&spr[0], animUp_Sorcerer1); break;}
   6331                    4408 00101$:
   6331 21 87 49      [10] 4409 	ld	hl, #_animUp_Sorcerer1
   6334 E5            [11] 4410 	push	hl
   6335 21 F3 48      [10] 4411 	ld	hl, #_spr
   6338 E5            [11] 4412 	push	hl
   6339 CD AA 62      [17] 4413 	call	_AssignFrame
   633C F1            [10] 4414 	pop	af
   633D F1            [10] 4415 	pop	af
   633E C3 5F 65      [10] 4416 	jp	00151$
                           4417 ;src/main.c:1135: case S_walkingDown:		{AssignFrame(&spr[0], animDown_Sorcerer1); break;}
   6341                    4418 00102$:
   6341 21 8B 49      [10] 4419 	ld	hl, #_animDown_Sorcerer1
   6344 E5            [11] 4420 	push	hl
   6345 21 F3 48      [10] 4421 	ld	hl, #_spr
   6348 E5            [11] 4422 	push	hl
   6349 CD AA 62      [17] 4423 	call	_AssignFrame
   634C F1            [10] 4424 	pop	af
   634D F1            [10] 4425 	pop	af
   634E C3 5F 65      [10] 4426 	jp	00151$
                           4427 ;src/main.c:1136: case S_walkingLeft:		{AssignFrame(&spr[0], animLeft_Sorcerer1); break;}
   6351                    4428 00103$:
   6351 21 8F 49      [10] 4429 	ld	hl, #_animLeft_Sorcerer1
   6354 E5            [11] 4430 	push	hl
   6355 21 F3 48      [10] 4431 	ld	hl, #_spr
   6358 E5            [11] 4432 	push	hl
   6359 CD AA 62      [17] 4433 	call	_AssignFrame
   635C F1            [10] 4434 	pop	af
   635D F1            [10] 4435 	pop	af
   635E C3 5F 65      [10] 4436 	jp	00151$
                           4437 ;src/main.c:1137: case S_walkingRight:	{AssignFrame(&spr[0], animRight_Sorcerer1); break;}
   6361                    4438 00104$:
   6361 21 93 49      [10] 4439 	ld	hl, #_animRight_Sorcerer1
   6364 E5            [11] 4440 	push	hl
   6365 21 F3 48      [10] 4441 	ld	hl, #_spr
   6368 E5            [11] 4442 	push	hl
   6369 CD AA 62      [17] 4443 	call	_AssignFrame
   636C F1            [10] 4444 	pop	af
   636D F1            [10] 4445 	pop	af
   636E C3 5F 65      [10] 4446 	jp	00151$
                           4447 ;src/main.c:1138: case S_stopped:			{spr[0].frm = &frmSorcerer1[spr[0].dir*2];}		
   6371                    4448 00105$:
   6371 01 77 49      [10] 4449 	ld	bc, #_frmSorcerer1+0
   6374 3A FA 48      [13] 4450 	ld	a, (#_spr + 7)
   6377 87            [ 4] 4451 	add	a, a
   6378 6F            [ 4] 4452 	ld	l, a
   6379 26 00         [ 7] 4453 	ld	h, #0x00
   637B 29            [11] 4454 	add	hl, hl
   637C 09            [11] 4455 	add	hl,bc
   637D 4D            [ 4] 4456 	ld	c, l
   637E 44            [ 4] 4457 	ld	b, h
   637F ED 43 FB 48   [20] 4458 	ld	((_spr + 0x0008)), bc
                           4459 ;src/main.c:1139: }
   6383 C3 5F 65      [10] 4460 	jp	00151$
   6386                    4461 00149$:
                           4462 ;src/main.c:1142: else if(pSpr->ident == SORCERER2) {
   6386 79            [ 4] 4463 	ld	a, c
   6387 3D            [ 4] 4464 	dec	a
   6388 20 75         [12] 4465 	jr	NZ,00146$
                           4466 ;src/main.c:1143: switch(pSpr->status) {
   638A 1A            [ 7] 4467 	ld	a, (de)
   638B 4F            [ 4] 4468 	ld	c, a
   638C 3E 04         [ 7] 4469 	ld	a, #0x04
   638E 91            [ 4] 4470 	sub	a, c
   638F DA 5F 65      [10] 4471 	jp	C, 00151$
   6392 06 00         [ 7] 4472 	ld	b, #0x00
   6394 21 9B 63      [10] 4473 	ld	hl, #00248$
   6397 09            [11] 4474 	add	hl, bc
   6398 09            [11] 4475 	add	hl, bc
   6399 09            [11] 4476 	add	hl, bc
   639A E9            [ 4] 4477 	jp	(hl)
   639B                    4478 00248$:
   639B C3 AA 63      [10] 4479 	jp	00107$
   639E C3 BA 63      [10] 4480 	jp	00108$
   63A1 C3 CA 63      [10] 4481 	jp	00109$
   63A4 C3 DA 63      [10] 4482 	jp	00110$
   63A7 C3 EA 63      [10] 4483 	jp	00111$
                           4484 ;src/main.c:1144: case S_walkingUp: 		{AssignFrame(&spr[1], animUp_Sorcerer2); break;}
   63AA                    4485 00107$:
   63AA 21 A7 49      [10] 4486 	ld	hl, #_animUp_Sorcerer2
   63AD E5            [11] 4487 	push	hl
   63AE 21 02 49      [10] 4488 	ld	hl, #(_spr + 0x000f)
   63B1 E5            [11] 4489 	push	hl
   63B2 CD AA 62      [17] 4490 	call	_AssignFrame
   63B5 F1            [10] 4491 	pop	af
   63B6 F1            [10] 4492 	pop	af
   63B7 C3 5F 65      [10] 4493 	jp	00151$
                           4494 ;src/main.c:1145: case S_walkingDown:		{AssignFrame(&spr[1], animDown_Sorcerer2); break;}
   63BA                    4495 00108$:
   63BA 21 AB 49      [10] 4496 	ld	hl, #_animDown_Sorcerer2
   63BD E5            [11] 4497 	push	hl
   63BE 21 02 49      [10] 4498 	ld	hl, #(_spr + 0x000f)
   63C1 E5            [11] 4499 	push	hl
   63C2 CD AA 62      [17] 4500 	call	_AssignFrame
   63C5 F1            [10] 4501 	pop	af
   63C6 F1            [10] 4502 	pop	af
   63C7 C3 5F 65      [10] 4503 	jp	00151$
                           4504 ;src/main.c:1146: case S_walkingLeft:		{AssignFrame(&spr[1], animLeft_Sorcerer2); break;}
   63CA                    4505 00109$:
   63CA 21 AF 49      [10] 4506 	ld	hl, #_animLeft_Sorcerer2
   63CD E5            [11] 4507 	push	hl
   63CE 21 02 49      [10] 4508 	ld	hl, #(_spr + 0x000f)
   63D1 E5            [11] 4509 	push	hl
   63D2 CD AA 62      [17] 4510 	call	_AssignFrame
   63D5 F1            [10] 4511 	pop	af
   63D6 F1            [10] 4512 	pop	af
   63D7 C3 5F 65      [10] 4513 	jp	00151$
                           4514 ;src/main.c:1147: case S_walkingRight:	{AssignFrame(&spr[1], animRight_Sorcerer2); break;}
   63DA                    4515 00110$:
   63DA 21 B3 49      [10] 4516 	ld	hl, #_animRight_Sorcerer2
   63DD E5            [11] 4517 	push	hl
   63DE 21 02 49      [10] 4518 	ld	hl, #(_spr + 0x000f)
   63E1 E5            [11] 4519 	push	hl
   63E2 CD AA 62      [17] 4520 	call	_AssignFrame
   63E5 F1            [10] 4521 	pop	af
   63E6 F1            [10] 4522 	pop	af
   63E7 C3 5F 65      [10] 4523 	jp	00151$
                           4524 ;src/main.c:1148: case S_stopped:			{spr[1].frm = &frmSorcerer2[spr[1].dir*2];}	
   63EA                    4525 00111$:
   63EA 01 97 49      [10] 4526 	ld	bc, #_frmSorcerer2+0
   63ED 3A 09 49      [13] 4527 	ld	a, (#_spr + 22)
   63F0 87            [ 4] 4528 	add	a, a
   63F1 6F            [ 4] 4529 	ld	l, a
   63F2 26 00         [ 7] 4530 	ld	h, #0x00
   63F4 29            [11] 4531 	add	hl, hl
   63F5 09            [11] 4532 	add	hl,bc
   63F6 4D            [ 4] 4533 	ld	c, l
   63F7 44            [ 4] 4534 	ld	b, h
   63F8 ED 43 0A 49   [20] 4535 	ld	((_spr + 0x0017)), bc
                           4536 ;src/main.c:1149: }
   63FC C3 5F 65      [10] 4537 	jp	00151$
   63FF                    4538 00146$:
                           4539 ;src/main.c:1153: switch(pSpr->dir) {
   63FF DD 7E FE      [19] 4540 	ld	a, -2 (ix)
   6402 C6 07         [ 7] 4541 	add	a, #0x07
   6404 5F            [ 4] 4542 	ld	e, a
   6405 DD 7E FF      [19] 4543 	ld	a, -1 (ix)
   6408 CE 00         [ 7] 4544 	adc	a, #0x00
   640A 57            [ 4] 4545 	ld	d, a
                           4546 ;src/main.c:1152: else if(pSpr->ident == SENTINEL) {
   640B 79            [ 4] 4547 	ld	a, c
   640C D6 02         [ 7] 4548 	sub	a, #0x02
   640E 20 57         [12] 4549 	jr	NZ,00143$
                           4550 ;src/main.c:1153: switch(pSpr->dir) {
   6410 1A            [ 7] 4551 	ld	a, (de)
   6411 B7            [ 4] 4552 	or	a, a
   6412 28 0F         [12] 4553 	jr	Z,00113$
   6414 FE 01         [ 7] 4554 	cp	a, #0x01
   6416 28 1C         [12] 4555 	jr	Z,00114$
   6418 FE 02         [ 7] 4556 	cp	a, #0x02
   641A 28 29         [12] 4557 	jr	Z,00115$
   641C D6 03         [ 7] 4558 	sub	a, #0x03
   641E 28 36         [12] 4559 	jr	Z,00116$
   6420 C3 5F 65      [10] 4560 	jp	00151$
                           4561 ;src/main.c:1154: case D_up:				{AssignFrame(pSpr, animUp_Sentinel); break;}
   6423                    4562 00113$:
   6423 21 C7 49      [10] 4563 	ld	hl, #_animUp_Sentinel
   6426 4D            [ 4] 4564 	ld	c, l
   6427 44            [ 4] 4565 	ld	b, h
   6428 E1            [10] 4566 	pop	hl
   6429 E5            [11] 4567 	push	hl
   642A C5            [11] 4568 	push	bc
   642B E5            [11] 4569 	push	hl
   642C CD AA 62      [17] 4570 	call	_AssignFrame
   642F F1            [10] 4571 	pop	af
   6430 F1            [10] 4572 	pop	af
   6431 C3 5F 65      [10] 4573 	jp	00151$
                           4574 ;src/main.c:1155: case D_down:			{AssignFrame(pSpr, animDown_Sentinel); break;}
   6434                    4575 00114$:
   6434 21 CB 49      [10] 4576 	ld	hl, #_animDown_Sentinel
   6437 4D            [ 4] 4577 	ld	c, l
   6438 44            [ 4] 4578 	ld	b, h
   6439 E1            [10] 4579 	pop	hl
   643A E5            [11] 4580 	push	hl
   643B C5            [11] 4581 	push	bc
   643C E5            [11] 4582 	push	hl
   643D CD AA 62      [17] 4583 	call	_AssignFrame
   6440 F1            [10] 4584 	pop	af
   6441 F1            [10] 4585 	pop	af
   6442 C3 5F 65      [10] 4586 	jp	00151$
                           4587 ;src/main.c:1156: case D_left:			{AssignFrame(pSpr, animLeft_Sentinel); break;}
   6445                    4588 00115$:
   6445 21 CF 49      [10] 4589 	ld	hl, #_animLeft_Sentinel
   6448 4D            [ 4] 4590 	ld	c, l
   6449 44            [ 4] 4591 	ld	b, h
   644A E1            [10] 4592 	pop	hl
   644B E5            [11] 4593 	push	hl
   644C C5            [11] 4594 	push	bc
   644D E5            [11] 4595 	push	hl
   644E CD AA 62      [17] 4596 	call	_AssignFrame
   6451 F1            [10] 4597 	pop	af
   6452 F1            [10] 4598 	pop	af
   6453 C3 5F 65      [10] 4599 	jp	00151$
                           4600 ;src/main.c:1157: case D_right:			{AssignFrame(pSpr, animRight_Sentinel);}
   6456                    4601 00116$:
   6456 21 D3 49      [10] 4602 	ld	hl, #_animRight_Sentinel
   6459 4D            [ 4] 4603 	ld	c, l
   645A 44            [ 4] 4604 	ld	b, h
   645B E1            [10] 4605 	pop	hl
   645C E5            [11] 4606 	push	hl
   645D C5            [11] 4607 	push	bc
   645E E5            [11] 4608 	push	hl
   645F CD AA 62      [17] 4609 	call	_AssignFrame
   6462 F1            [10] 4610 	pop	af
   6463 F1            [10] 4611 	pop	af
                           4612 ;src/main.c:1158: }
   6464 C3 5F 65      [10] 4613 	jp	00151$
   6467                    4614 00143$:
                           4615 ;src/main.c:1161: else if(pSpr->ident == KNIGHT) {
   6467 79            [ 4] 4616 	ld	a, c
   6468 D6 03         [ 7] 4617 	sub	a, #0x03
   646A 20 57         [12] 4618 	jr	NZ,00140$
                           4619 ;src/main.c:1162: switch(pSpr->dir) {
   646C 1A            [ 7] 4620 	ld	a, (de)
   646D B7            [ 4] 4621 	or	a, a
   646E 28 0F         [12] 4622 	jr	Z,00118$
   6470 FE 01         [ 7] 4623 	cp	a, #0x01
   6472 28 1C         [12] 4624 	jr	Z,00119$
   6474 FE 02         [ 7] 4625 	cp	a, #0x02
   6476 28 29         [12] 4626 	jr	Z,00120$
   6478 D6 03         [ 7] 4627 	sub	a, #0x03
   647A 28 36         [12] 4628 	jr	Z,00121$
   647C C3 5F 65      [10] 4629 	jp	00151$
                           4630 ;src/main.c:1163: case D_up:				{AssignFrame(pSpr, animUp_Knight); break;}
   647F                    4631 00118$:
   647F 21 E7 49      [10] 4632 	ld	hl, #_animUp_Knight
   6482 4D            [ 4] 4633 	ld	c, l
   6483 44            [ 4] 4634 	ld	b, h
   6484 E1            [10] 4635 	pop	hl
   6485 E5            [11] 4636 	push	hl
   6486 C5            [11] 4637 	push	bc
   6487 E5            [11] 4638 	push	hl
   6488 CD AA 62      [17] 4639 	call	_AssignFrame
   648B F1            [10] 4640 	pop	af
   648C F1            [10] 4641 	pop	af
   648D C3 5F 65      [10] 4642 	jp	00151$
                           4643 ;src/main.c:1164: case D_down:			{AssignFrame(pSpr, animDown_Knight); break;}
   6490                    4644 00119$:
   6490 21 EB 49      [10] 4645 	ld	hl, #_animDown_Knight
   6493 4D            [ 4] 4646 	ld	c, l
   6494 44            [ 4] 4647 	ld	b, h
   6495 E1            [10] 4648 	pop	hl
   6496 E5            [11] 4649 	push	hl
   6497 C5            [11] 4650 	push	bc
   6498 E5            [11] 4651 	push	hl
   6499 CD AA 62      [17] 4652 	call	_AssignFrame
   649C F1            [10] 4653 	pop	af
   649D F1            [10] 4654 	pop	af
   649E C3 5F 65      [10] 4655 	jp	00151$
                           4656 ;src/main.c:1165: case D_left:			{AssignFrame(pSpr, animLeft_Knight); break;}
   64A1                    4657 00120$:
   64A1 21 EF 49      [10] 4658 	ld	hl, #_animLeft_Knight
   64A4 4D            [ 4] 4659 	ld	c, l
   64A5 44            [ 4] 4660 	ld	b, h
   64A6 E1            [10] 4661 	pop	hl
   64A7 E5            [11] 4662 	push	hl
   64A8 C5            [11] 4663 	push	bc
   64A9 E5            [11] 4664 	push	hl
   64AA CD AA 62      [17] 4665 	call	_AssignFrame
   64AD F1            [10] 4666 	pop	af
   64AE F1            [10] 4667 	pop	af
   64AF C3 5F 65      [10] 4668 	jp	00151$
                           4669 ;src/main.c:1166: case D_right:			{AssignFrame(pSpr, animRight_Knight);}
   64B2                    4670 00121$:
   64B2 21 F3 49      [10] 4671 	ld	hl, #_animRight_Knight
   64B5 4D            [ 4] 4672 	ld	c, l
   64B6 44            [ 4] 4673 	ld	b, h
   64B7 E1            [10] 4674 	pop	hl
   64B8 E5            [11] 4675 	push	hl
   64B9 C5            [11] 4676 	push	bc
   64BA E5            [11] 4677 	push	hl
   64BB CD AA 62      [17] 4678 	call	_AssignFrame
   64BE F1            [10] 4679 	pop	af
   64BF F1            [10] 4680 	pop	af
                           4681 ;src/main.c:1167: }
   64C0 C3 5F 65      [10] 4682 	jp	00151$
   64C3                    4683 00140$:
                           4684 ;src/main.c:1170: else if(pSpr->ident == GHOST) {
   64C3 79            [ 4] 4685 	ld	a, c
   64C4 D6 04         [ 7] 4686 	sub	a, #0x04
   64C6 20 54         [12] 4687 	jr	NZ,00137$
                           4688 ;src/main.c:1171: switch(pSpr->dir) {
   64C8 1A            [ 7] 4689 	ld	a, (de)
   64C9 B7            [ 4] 4690 	or	a, a
   64CA 28 0F         [12] 4691 	jr	Z,00123$
   64CC FE 01         [ 7] 4692 	cp	a, #0x01
   64CE 28 1C         [12] 4693 	jr	Z,00124$
   64D0 FE 02         [ 7] 4694 	cp	a, #0x02
   64D2 28 28         [12] 4695 	jr	Z,00125$
   64D4 D6 03         [ 7] 4696 	sub	a, #0x03
   64D6 28 34         [12] 4697 	jr	Z,00126$
   64D8 C3 5F 65      [10] 4698 	jp	00151$
                           4699 ;src/main.c:1172: case D_up:				{AssignFrame(pSpr, animUp_Ghost); break;}
   64DB                    4700 00123$:
   64DB 21 07 4A      [10] 4701 	ld	hl, #_animUp_Ghost
   64DE 4D            [ 4] 4702 	ld	c, l
   64DF 44            [ 4] 4703 	ld	b, h
   64E0 E1            [10] 4704 	pop	hl
   64E1 E5            [11] 4705 	push	hl
   64E2 C5            [11] 4706 	push	bc
   64E3 E5            [11] 4707 	push	hl
   64E4 CD AA 62      [17] 4708 	call	_AssignFrame
   64E7 F1            [10] 4709 	pop	af
   64E8 F1            [10] 4710 	pop	af
   64E9 C3 5F 65      [10] 4711 	jp	00151$
                           4712 ;src/main.c:1173: case D_down:			{AssignFrame(pSpr, animDown_Ghost); break;}
   64EC                    4713 00124$:
   64EC 21 0B 4A      [10] 4714 	ld	hl, #_animDown_Ghost
   64EF 4D            [ 4] 4715 	ld	c, l
   64F0 44            [ 4] 4716 	ld	b, h
   64F1 E1            [10] 4717 	pop	hl
   64F2 E5            [11] 4718 	push	hl
   64F3 C5            [11] 4719 	push	bc
   64F4 E5            [11] 4720 	push	hl
   64F5 CD AA 62      [17] 4721 	call	_AssignFrame
   64F8 F1            [10] 4722 	pop	af
   64F9 F1            [10] 4723 	pop	af
   64FA 18 63         [12] 4724 	jr	00151$
                           4725 ;src/main.c:1174: case D_left:			{AssignFrame(pSpr, animLeft_Ghost); break;}
   64FC                    4726 00125$:
   64FC 21 0F 4A      [10] 4727 	ld	hl, #_animLeft_Ghost
   64FF 4D            [ 4] 4728 	ld	c, l
   6500 44            [ 4] 4729 	ld	b, h
   6501 E1            [10] 4730 	pop	hl
   6502 E5            [11] 4731 	push	hl
   6503 C5            [11] 4732 	push	bc
   6504 E5            [11] 4733 	push	hl
   6505 CD AA 62      [17] 4734 	call	_AssignFrame
   6508 F1            [10] 4735 	pop	af
   6509 F1            [10] 4736 	pop	af
   650A 18 53         [12] 4737 	jr	00151$
                           4738 ;src/main.c:1175: case D_right:			{AssignFrame(pSpr, animRight_Ghost);}
   650C                    4739 00126$:
   650C 21 13 4A      [10] 4740 	ld	hl, #_animRight_Ghost
   650F 4D            [ 4] 4741 	ld	c, l
   6510 44            [ 4] 4742 	ld	b, h
   6511 E1            [10] 4743 	pop	hl
   6512 E5            [11] 4744 	push	hl
   6513 C5            [11] 4745 	push	bc
   6514 E5            [11] 4746 	push	hl
   6515 CD AA 62      [17] 4747 	call	_AssignFrame
   6518 F1            [10] 4748 	pop	af
   6519 F1            [10] 4749 	pop	af
                           4750 ;src/main.c:1176: }
   651A 18 43         [12] 4751 	jr	00151$
   651C                    4752 00137$:
                           4753 ;src/main.c:1179: else if(pSpr->ident == WITCH) {
   651C 79            [ 4] 4754 	ld	a, c
   651D D6 06         [ 7] 4755 	sub	a, #0x06
   651F 20 2B         [12] 4756 	jr	NZ,00134$
                           4757 ;src/main.c:1180: switch(pSpr->dir) {
   6521 1A            [ 7] 4758 	ld	a, (de)
   6522 FE 02         [ 7] 4759 	cp	a, #0x02
   6524 28 06         [12] 4760 	jr	Z,00128$
   6526 D6 03         [ 7] 4761 	sub	a, #0x03
   6528 28 12         [12] 4762 	jr	Z,00129$
   652A 18 33         [12] 4763 	jr	00151$
                           4764 ;src/main.c:1181: case D_left:			{AssignFrame(pSpr, animLeft_Witch); break;}
   652C                    4765 00128$:
   652C 21 27 4A      [10] 4766 	ld	hl, #_animLeft_Witch
   652F 4D            [ 4] 4767 	ld	c, l
   6530 44            [ 4] 4768 	ld	b, h
   6531 E1            [10] 4769 	pop	hl
   6532 E5            [11] 4770 	push	hl
   6533 C5            [11] 4771 	push	bc
   6534 E5            [11] 4772 	push	hl
   6535 CD AA 62      [17] 4773 	call	_AssignFrame
   6538 F1            [10] 4774 	pop	af
   6539 F1            [10] 4775 	pop	af
   653A 18 23         [12] 4776 	jr	00151$
                           4777 ;src/main.c:1182: case D_right:			{AssignFrame(pSpr, animRight_Witch);}
   653C                    4778 00129$:
   653C 21 2B 4A      [10] 4779 	ld	hl, #_animRight_Witch
   653F 4D            [ 4] 4780 	ld	c, l
   6540 44            [ 4] 4781 	ld	b, h
   6541 E1            [10] 4782 	pop	hl
   6542 E5            [11] 4783 	push	hl
   6543 C5            [11] 4784 	push	bc
   6544 E5            [11] 4785 	push	hl
   6545 CD AA 62      [17] 4786 	call	_AssignFrame
   6548 F1            [10] 4787 	pop	af
   6549 F1            [10] 4788 	pop	af
                           4789 ;src/main.c:1183: }
   654A 18 13         [12] 4790 	jr	00151$
   654C                    4791 00134$:
                           4792 ;src/main.c:1186: else if(pSpr->ident == BAT)	AssignFrame(pSpr, anim_Bat);
   654C 79            [ 4] 4793 	ld	a, c
   654D D6 05         [ 7] 4794 	sub	a, #0x05
   654F 20 0E         [12] 4795 	jr	NZ,00151$
   6551 21 1B 4A      [10] 4796 	ld	hl, #_anim_Bat
   6554 4D            [ 4] 4797 	ld	c, l
   6555 44            [ 4] 4798 	ld	b, h
   6556 E1            [10] 4799 	pop	hl
   6557 E5            [11] 4800 	push	hl
   6558 C5            [11] 4801 	push	bc
   6559 E5            [11] 4802 	push	hl
   655A CD AA 62      [17] 4803 	call	_AssignFrame
   655D F1            [10] 4804 	pop	af
   655E F1            [10] 4805 	pop	af
   655F                    4806 00151$:
   655F DD F9         [10] 4807 	ld	sp, ix
   6561 DD E1         [14] 4808 	pop	ix
   6563 C9            [10] 4809 	ret
                           4810 ;src/main.c:1191: void PrintExplosion(TSpr *pSpr, u8 nFrame)
                           4811 ;	---------------------------------
                           4812 ; Function PrintExplosion
                           4813 ; ---------------------------------
   6564                    4814 _PrintExplosion::
   6564 DD E5         [15] 4815 	push	ix
   6566 DD 21 00 00   [14] 4816 	ld	ix,#0
   656A DD 39         [15] 4817 	add	ix,sp
                           4818 ;src/main.c:1195: SPR_W, SPR_H, g_maskTable);
                           4819 ;src/main.c:1194: cpct_getScreenPtr(CPCT_VMEM_START, pSpr->x, pSpr->y), 
   656C DD 4E 04      [19] 4820 	ld	c,4 (ix)
   656F DD 46 05      [19] 4821 	ld	b,5 (ix)
   6572 69            [ 4] 4822 	ld	l, c
   6573 60            [ 4] 4823 	ld	h, b
   6574 23            [ 6] 4824 	inc	hl
   6575 23            [ 6] 4825 	inc	hl
   6576 23            [ 6] 4826 	inc	hl
   6577 56            [ 7] 4827 	ld	d, (hl)
   6578 69            [ 4] 4828 	ld	l, c
   6579 60            [ 4] 4829 	ld	h, b
   657A 23            [ 6] 4830 	inc	hl
   657B 23            [ 6] 4831 	inc	hl
   657C 5E            [ 7] 4832 	ld	e, (hl)
   657D D5            [11] 4833 	push	de
   657E 21 00 C0      [10] 4834 	ld	hl, #0xc000
   6581 E5            [11] 4835 	push	hl
   6582 CD B9 47      [17] 4836 	call	_cpct_getScreenPtr
   6585 4D            [ 4] 4837 	ld	c, l
   6586 44            [ 4] 4838 	ld	b, h
                           4839 ;src/main.c:1193: cpct_drawSpriteMaskedAlignedTable(g_explosion[nFrame], 
   6587 DD 5E 06      [19] 4840 	ld	e,6 (ix)
   658A 16 00         [ 7] 4841 	ld	d,#0x00
   658C 6B            [ 4] 4842 	ld	l, e
   658D 62            [ 4] 4843 	ld	h, d
   658E 29            [11] 4844 	add	hl, hl
   658F 19            [11] 4845 	add	hl, de
   6590 29            [11] 4846 	add	hl, hl
   6591 19            [11] 4847 	add	hl, de
   6592 29            [11] 4848 	add	hl, hl
   6593 19            [11] 4849 	add	hl, de
   6594 29            [11] 4850 	add	hl, hl
   6595 29            [11] 4851 	add	hl, hl
   6596 11 E4 3C      [10] 4852 	ld	de, #_g_explosion
   6599 19            [11] 4853 	add	hl, de
   659A 11 00 01      [10] 4854 	ld	de, #_g_maskTable
   659D D5            [11] 4855 	push	de
   659E 11 05 0C      [10] 4856 	ld	de, #0x0c05
   65A1 D5            [11] 4857 	push	de
   65A2 C5            [11] 4858 	push	bc
   65A3 E5            [11] 4859 	push	hl
   65A4 CD CF 47      [17] 4860 	call	_cpct_drawSpriteMaskedAlignedTable
   65A7 DD E1         [14] 4861 	pop	ix
   65A9 C9            [10] 4862 	ret
                           4863 ;src/main.c:1200: void ExplodeSprite(u8 player, u8 deleteSpr)
                           4864 ;	---------------------------------
                           4865 ; Function ExplodeSprite
                           4866 ; ---------------------------------
   65AA                    4867 _ExplodeSprite::
   65AA DD E5         [15] 4868 	push	ix
   65AC DD 21 00 00   [14] 4869 	ld	ix,#0
   65B0 DD 39         [15] 4870 	add	ix,sp
   65B2 21 F9 FF      [10] 4871 	ld	hl, #-7
   65B5 39            [11] 4872 	add	hl, sp
   65B6 F9            [ 6] 4873 	ld	sp, hl
                           4874 ;src/main.c:1204: while (ct++ < 2) {	
   65B7 11 F3 48      [10] 4875 	ld	de, #_spr+0
   65BA DD 4E 04      [19] 4876 	ld	c,4 (ix)
   65BD 06 00         [ 7] 4877 	ld	b,#0x00
   65BF 69            [ 4] 4878 	ld	l, c
   65C0 60            [ 4] 4879 	ld	h, b
   65C1 29            [11] 4880 	add	hl, hl
   65C2 09            [11] 4881 	add	hl, bc
   65C3 29            [11] 4882 	add	hl, hl
   65C4 09            [11] 4883 	add	hl, bc
   65C5 29            [11] 4884 	add	hl, hl
   65C6 09            [11] 4885 	add	hl, bc
   65C7 19            [11] 4886 	add	hl,de
   65C8 4D            [ 4] 4887 	ld	c, l
   65C9 44            [ 4] 4888 	ld	b, h
   65CA DD 71 FE      [19] 4889 	ld	-2 (ix), c
   65CD DD 70 FF      [19] 4890 	ld	-1 (ix), b
   65D0 DD 71 FC      [19] 4891 	ld	-4 (ix), c
   65D3 DD 70 FD      [19] 4892 	ld	-3 (ix), b
   65D6 D5            [11] 4893 	push	de
   65D7 DD 5E 05      [19] 4894 	ld	e,5 (ix)
   65DA 16 00         [ 7] 4895 	ld	d,#0x00
   65DC 6B            [ 4] 4896 	ld	l, e
   65DD 62            [ 4] 4897 	ld	h, d
   65DE 29            [11] 4898 	add	hl, hl
   65DF 19            [11] 4899 	add	hl, de
   65E0 29            [11] 4900 	add	hl, hl
   65E1 19            [11] 4901 	add	hl, de
   65E2 29            [11] 4902 	add	hl, hl
   65E3 19            [11] 4903 	add	hl, de
   65E4 D1            [10] 4904 	pop	de
   65E5 19            [11] 4905 	add	hl,de
   65E6 DD 75 FA      [19] 4906 	ld	-6 (ix), l
   65E9 DD 74 FB      [19] 4907 	ld	-5 (ix), h
   65EC DD 36 F9 00   [19] 4908 	ld	-7 (ix), #0x00
   65F0                    4909 00103$:
   65F0 DD 7E F9      [19] 4910 	ld	a, -7 (ix)
   65F3 DD 34 F9      [23] 4911 	inc	-7 (ix)
   65F6 D6 02         [ 7] 4912 	sub	a, #0x02
   65F8 30 49         [12] 4913 	jr	NC,00105$
                           4914 ;src/main.c:1205: PrintExplosion(&spr[player], 0); Pause(40);
   65FA 59            [ 4] 4915 	ld	e, c
   65FB 50            [ 4] 4916 	ld	d, b
   65FC C5            [11] 4917 	push	bc
   65FD AF            [ 4] 4918 	xor	a, a
   65FE F5            [11] 4919 	push	af
   65FF 33            [ 6] 4920 	inc	sp
   6600 D5            [11] 4921 	push	de
   6601 CD 64 65      [17] 4922 	call	_PrintExplosion
   6604 F1            [10] 4923 	pop	af
   6605 33            [ 6] 4924 	inc	sp
   6606 21 28 00      [10] 4925 	ld	hl, #0x0028
   6609 CD 6A 4B      [17] 4926 	call	_Pause
   660C C1            [10] 4927 	pop	bc
                           4928 ;src/main.c:1206: PrintExplosion(&spr[player], 1); Pause(40);
   660D DD 5E FE      [19] 4929 	ld	e,-2 (ix)
   6610 DD 56 FF      [19] 4930 	ld	d,-1 (ix)
   6613 C5            [11] 4931 	push	bc
   6614 3E 01         [ 7] 4932 	ld	a, #0x01
   6616 F5            [11] 4933 	push	af
   6617 33            [ 6] 4934 	inc	sp
   6618 D5            [11] 4935 	push	de
   6619 CD 64 65      [17] 4936 	call	_PrintExplosion
   661C F1            [10] 4937 	pop	af
   661D 33            [ 6] 4938 	inc	sp
   661E 21 28 00      [10] 4939 	ld	hl, #0x0028
   6621 CD 6A 4B      [17] 4940 	call	_Pause
   6624 C1            [10] 4941 	pop	bc
                           4942 ;src/main.c:1207: if (deleteSpr > FALSE) {
   6625 DD 7E 05      [19] 4943 	ld	a, 5 (ix)
   6628 B7            [ 4] 4944 	or	a, a
   6629 28 C5         [12] 4945 	jr	Z,00103$
                           4946 ;src/main.c:1208: DeleteSprite(&spr[player]); // delete player
   662B DD 6E FC      [19] 4947 	ld	l,-4 (ix)
   662E DD 66 FD      [19] 4948 	ld	h,-3 (ix)
   6631 C5            [11] 4949 	push	bc
   6632 CD 39 62      [17] 4950 	call	_DeleteSprite
   6635 C1            [10] 4951 	pop	bc
                           4952 ;src/main.c:1209: PrintSprite(&spr[deleteSpr]); // reprint enemy, which may have been partially erased
   6636 DD 6E FA      [19] 4953 	ld	l,-6 (ix)
   6639 DD 66 FB      [19] 4954 	ld	h,-5 (ix)
   663C C5            [11] 4955 	push	bc
   663D CD 0A 62      [17] 4956 	call	_PrintSprite
   6640 C1            [10] 4957 	pop	bc
   6641 18 AD         [12] 4958 	jr	00103$
   6643                    4959 00105$:
                           4960 ;src/main.c:1212: PrintExplosion(&spr[player], 0); Pause(40);
   6643 59            [ 4] 4961 	ld	e, c
   6644 50            [ 4] 4962 	ld	d, b
   6645 C5            [11] 4963 	push	bc
   6646 AF            [ 4] 4964 	xor	a, a
   6647 F5            [11] 4965 	push	af
   6648 33            [ 6] 4966 	inc	sp
   6649 D5            [11] 4967 	push	de
   664A CD 64 65      [17] 4968 	call	_PrintExplosion
   664D F1            [10] 4969 	pop	af
   664E 33            [ 6] 4970 	inc	sp
   664F 21 28 00      [10] 4971 	ld	hl, #0x0028
   6652 CD 6A 4B      [17] 4972 	call	_Pause
   6655 C1            [10] 4973 	pop	bc
                           4974 ;src/main.c:1213: if (deleteSpr > FALSE) {
   6656 DD 7E 05      [19] 4975 	ld	a, 5 (ix)
   6659 B7            [ 4] 4976 	or	a, a
   665A 28 0E         [12] 4977 	jr	Z,00108$
                           4978 ;src/main.c:1214: DeleteSprite(&spr[player]);
   665C 69            [ 4] 4979 	ld	l, c
   665D 60            [ 4] 4980 	ld	h, b
   665E CD 39 62      [17] 4981 	call	_DeleteSprite
                           4982 ;src/main.c:1215: PrintSprite(&spr[deleteSpr]);
   6661 DD 6E FA      [19] 4983 	ld	l,-6 (ix)
   6664 DD 66 FB      [19] 4984 	ld	h,-5 (ix)
   6667 CD 0A 62      [17] 4985 	call	_PrintSprite
   666A                    4986 00108$:
   666A DD F9         [10] 4987 	ld	sp, ix
   666C DD E1         [14] 4988 	pop	ix
   666E C9            [10] 4989 	ret
                           4990 ;src/main.c:1221: u8 SpriteCollision(u8 x, u8 y, TSpr *pSpr, u8 marginX) {
                           4991 ;	---------------------------------
                           4992 ; Function SpriteCollision
                           4993 ; ---------------------------------
   666F                    4994 _SpriteCollision::
   666F DD E5         [15] 4995 	push	ix
   6671 DD 21 00 00   [14] 4996 	ld	ix,#0
   6675 DD 39         [15] 4997 	add	ix,sp
   6677 21 F9 FF      [10] 4998 	ld	hl, #-7
   667A 39            [11] 4999 	add	hl, sp
   667B F9            [ 6] 5000 	ld	sp, hl
                           5001 ;src/main.c:1222: u8 marginY = marginX+marginX;	
   667C DD 7E 08      [19] 5002 	ld	a, 8 (ix)
   667F 87            [ 4] 5003 	add	a, a
   6680 DD 77 F9      [19] 5004 	ld	-7 (ix), a
                           5005 ;src/main.c:1223: if (x+OBJ_W > pSpr->x-marginX && x-marginX < pSpr->x+SPR_W) // check the X coordinate with the sprite		
   6683 DD 4E 04      [19] 5006 	ld	c, 4 (ix)
   6686 06 00         [ 7] 5007 	ld	b, #0x00
   6688 21 04 00      [10] 5008 	ld	hl, #0x0004
   668B 09            [11] 5009 	add	hl,bc
   668C DD 75 FA      [19] 5010 	ld	-6 (ix), l
   668F DD 74 FB      [19] 5011 	ld	-5 (ix), h
   6692 DD 5E 06      [19] 5012 	ld	e,6 (ix)
   6695 DD 56 07      [19] 5013 	ld	d,7 (ix)
   6698 6B            [ 4] 5014 	ld	l, e
   6699 62            [ 4] 5015 	ld	h, d
   669A 23            [ 6] 5016 	inc	hl
   669B 23            [ 6] 5017 	inc	hl
   669C 6E            [ 7] 5018 	ld	l, (hl)
   669D 26 00         [ 7] 5019 	ld	h, #0x00
   669F DD 7E 08      [19] 5020 	ld	a, 8 (ix)
   66A2 DD 77 FC      [19] 5021 	ld	-4 (ix), a
   66A5 DD 36 FD 00   [19] 5022 	ld	-3 (ix), #0x00
   66A9 7D            [ 4] 5023 	ld	a, l
   66AA DD 96 FC      [19] 5024 	sub	a, -4 (ix)
   66AD DD 77 FE      [19] 5025 	ld	-2 (ix), a
   66B0 7C            [ 4] 5026 	ld	a, h
   66B1 DD 9E FD      [19] 5027 	sbc	a, -3 (ix)
   66B4 DD 77 FF      [19] 5028 	ld	-1 (ix), a
   66B7 DD 7E FE      [19] 5029 	ld	a, -2 (ix)
   66BA DD 96 FA      [19] 5030 	sub	a, -6 (ix)
   66BD DD 7E FF      [19] 5031 	ld	a, -1 (ix)
   66C0 DD 9E FB      [19] 5032 	sbc	a, -5 (ix)
   66C3 E2 C8 66      [10] 5033 	jp	PO, 00125$
   66C6 EE 80         [ 7] 5034 	xor	a, #0x80
   66C8                    5035 00125$:
   66C8 F2 39 67      [10] 5036 	jp	P, 00105$
   66CB 79            [ 4] 5037 	ld	a, c
   66CC DD 96 FC      [19] 5038 	sub	a, -4 (ix)
   66CF 4F            [ 4] 5039 	ld	c, a
   66D0 78            [ 4] 5040 	ld	a, b
   66D1 DD 9E FD      [19] 5041 	sbc	a, -3 (ix)
   66D4 47            [ 4] 5042 	ld	b, a
   66D5 23            [ 6] 5043 	inc	hl
   66D6 23            [ 6] 5044 	inc	hl
   66D7 23            [ 6] 5045 	inc	hl
   66D8 23            [ 6] 5046 	inc	hl
   66D9 23            [ 6] 5047 	inc	hl
   66DA 79            [ 4] 5048 	ld	a, c
   66DB 95            [ 4] 5049 	sub	a, l
   66DC 78            [ 4] 5050 	ld	a, b
   66DD 9C            [ 4] 5051 	sbc	a, h
   66DE E2 E3 66      [10] 5052 	jp	PO, 00126$
   66E1 EE 80         [ 7] 5053 	xor	a, #0x80
   66E3                    5054 00126$:
   66E3 F2 39 67      [10] 5055 	jp	P, 00105$
                           5056 ;src/main.c:1224: if (y+OBJ_H > pSpr->y-marginY && y-marginY < pSpr->y+SPR_H) // check the Y coordinate with the sprite
   66E6 DD 4E 05      [19] 5057 	ld	c, 5 (ix)
   66E9 06 00         [ 7] 5058 	ld	b, #0x00
   66EB 21 08 00      [10] 5059 	ld	hl, #0x0008
   66EE 09            [11] 5060 	add	hl,bc
   66EF DD 75 FE      [19] 5061 	ld	-2 (ix), l
   66F2 DD 74 FF      [19] 5062 	ld	-1 (ix), h
   66F5 EB            [ 4] 5063 	ex	de,hl
   66F6 23            [ 6] 5064 	inc	hl
   66F7 23            [ 6] 5065 	inc	hl
   66F8 23            [ 6] 5066 	inc	hl
   66F9 5E            [ 7] 5067 	ld	e, (hl)
   66FA 16 00         [ 7] 5068 	ld	d, #0x00
   66FC DD 6E F9      [19] 5069 	ld	l, -7 (ix)
   66FF 26 00         [ 7] 5070 	ld	h, #0x00
   6701 7B            [ 4] 5071 	ld	a, e
   6702 95            [ 4] 5072 	sub	a, l
   6703 DD 77 FC      [19] 5073 	ld	-4 (ix), a
   6706 7A            [ 4] 5074 	ld	a, d
   6707 9C            [ 4] 5075 	sbc	a, h
   6708 DD 77 FD      [19] 5076 	ld	-3 (ix), a
   670B DD 7E FC      [19] 5077 	ld	a, -4 (ix)
   670E DD 96 FE      [19] 5078 	sub	a, -2 (ix)
   6711 DD 7E FD      [19] 5079 	ld	a, -3 (ix)
   6714 DD 9E FF      [19] 5080 	sbc	a, -1 (ix)
   6717 E2 1C 67      [10] 5081 	jp	PO, 00127$
   671A EE 80         [ 7] 5082 	xor	a, #0x80
   671C                    5083 00127$:
   671C F2 39 67      [10] 5084 	jp	P, 00105$
   671F 79            [ 4] 5085 	ld	a, c
   6720 95            [ 4] 5086 	sub	a, l
   6721 4F            [ 4] 5087 	ld	c, a
   6722 78            [ 4] 5088 	ld	a, b
   6723 9C            [ 4] 5089 	sbc	a, h
   6724 47            [ 4] 5090 	ld	b, a
   6725 21 0C 00      [10] 5091 	ld	hl, #0x000c
   6728 19            [11] 5092 	add	hl, de
   6729 79            [ 4] 5093 	ld	a, c
   672A 95            [ 4] 5094 	sub	a, l
   672B 78            [ 4] 5095 	ld	a, b
   672C 9C            [ 4] 5096 	sbc	a, h
   672D E2 32 67      [10] 5097 	jp	PO, 00128$
   6730 EE 80         [ 7] 5098 	xor	a, #0x80
   6732                    5099 00128$:
   6732 F2 39 67      [10] 5100 	jp	P, 00105$
                           5101 ;src/main.c:1225: return TRUE;	
   6735 2E 01         [ 7] 5102 	ld	l, #0x01
   6737 18 02         [12] 5103 	jr	00107$
   6739                    5104 00105$:
                           5105 ;src/main.c:1226: return FALSE;
   6739 2E 00         [ 7] 5106 	ld	l, #0x00
   673B                    5107 00107$:
   673B DD F9         [10] 5108 	ld	sp, ix
   673D DD E1         [14] 5109 	pop	ix
   673F C9            [10] 5110 	ret
                           5111 ;src/main.c:1242: void MoveUp(TSpr *pSpr) __z88dk_fastcall { 
                           5112 ;	---------------------------------
                           5113 ; Function MoveUp
                           5114 ; ---------------------------------
   6740                    5115 _MoveUp::
   6740 DD E5         [15] 5116 	push	ix
   6742 DD 21 00 00   [14] 5117 	ld	ix,#0
   6746 DD 39         [15] 5118 	add	ix,sp
   6748 F5            [11] 5119 	push	af
   6749 F5            [11] 5120 	push	af
                           5121 ;src/main.c:1244: if (pSpr->y > ORIG_MAP_Y && OnBackground(pSpr->x-1, pSpr->y-2)) {
   674A DD 75 FE      [19] 5122 	ld	-2 (ix), l
   674D DD 74 FF      [19] 5123 	ld	-1 (ix), h
   6750 23            [ 6] 5124 	inc	hl
   6751 23            [ 6] 5125 	inc	hl
   6752 23            [ 6] 5126 	inc	hl
   6753 4D            [ 4] 5127 	ld	c,l
   6754 44            [ 4] 5128 	ld	b,h
   6755 0A            [ 7] 5129 	ld	a, (bc)
   6756 5F            [ 4] 5130 	ld	e, a
   6757 3E 20         [ 7] 5131 	ld	a, #0x20
   6759 93            [ 4] 5132 	sub	a, e
   675A 30 6C         [12] 5133 	jr	NC,00107$
   675C 1D            [ 4] 5134 	dec	e
   675D 1D            [ 4] 5135 	dec	e
   675E DD 7E FE      [19] 5136 	ld	a, -2 (ix)
   6761 C6 02         [ 7] 5137 	add	a, #0x02
   6763 DD 77 FC      [19] 5138 	ld	-4 (ix), a
   6766 DD 7E FF      [19] 5139 	ld	a, -1 (ix)
   6769 CE 00         [ 7] 5140 	adc	a, #0x00
   676B DD 77 FD      [19] 5141 	ld	-3 (ix), a
   676E E1            [10] 5142 	pop	hl
   676F E5            [11] 5143 	push	hl
   6770 56            [ 7] 5144 	ld	d, (hl)
   6771 15            [ 4] 5145 	dec	d
   6772 C5            [11] 5146 	push	bc
   6773 7B            [ 4] 5147 	ld	a, e
   6774 F5            [11] 5148 	push	af
   6775 33            [ 6] 5149 	inc	sp
   6776 D5            [11] 5150 	push	de
   6777 33            [ 6] 5151 	inc	sp
   6778 CD E0 4B      [17] 5152 	call	_OnBackground
   677B F1            [10] 5153 	pop	af
   677C C1            [10] 5154 	pop	bc
   677D 7D            [ 4] 5155 	ld	a, l
   677E B7            [ 4] 5156 	or	a, a
   677F 28 47         [12] 5157 	jr	Z,00107$
                           5158 ;src/main.c:1245: pSpr->y -= 2;
   6781 0A            [ 7] 5159 	ld	a, (bc)
   6782 C6 FE         [ 7] 5160 	add	a, #0xfe
   6784 02            [ 7] 5161 	ld	(bc), a
                           5162 ;src/main.c:1246: if (pSpr->power_maxV > 0 && OnBackground(pSpr->x-1, pSpr->y-2))
   6785 D1            [10] 5163 	pop	de
   6786 E1            [10] 5164 	pop	hl
   6787 E5            [11] 5165 	push	hl
   6788 D5            [11] 5166 	push	de
   6789 11 0E 00      [10] 5167 	ld	de, #0x000e
   678C 19            [11] 5168 	add	hl, de
   678D 7E            [ 7] 5169 	ld	a, (hl)
   678E B7            [ 4] 5170 	or	a, a
   678F 28 1B         [12] 5171 	jr	Z,00102$
   6791 0A            [ 7] 5172 	ld	a, (bc)
   6792 5F            [ 4] 5173 	ld	e, a
   6793 1D            [ 4] 5174 	dec	e
   6794 1D            [ 4] 5175 	dec	e
   6795 E1            [10] 5176 	pop	hl
   6796 E5            [11] 5177 	push	hl
   6797 56            [ 7] 5178 	ld	d, (hl)
   6798 15            [ 4] 5179 	dec	d
   6799 C5            [11] 5180 	push	bc
   679A 7B            [ 4] 5181 	ld	a, e
   679B F5            [11] 5182 	push	af
   679C 33            [ 6] 5183 	inc	sp
   679D D5            [11] 5184 	push	de
   679E 33            [ 6] 5185 	inc	sp
   679F CD E0 4B      [17] 5186 	call	_OnBackground
   67A2 F1            [10] 5187 	pop	af
   67A3 C1            [10] 5188 	pop	bc
   67A4 7D            [ 4] 5189 	ld	a, l
   67A5 B7            [ 4] 5190 	or	a, a
   67A6 28 04         [12] 5191 	jr	Z,00102$
                           5192 ;src/main.c:1247: pSpr->y -= 2; // powerUp speed*2
   67A8 0A            [ 7] 5193 	ld	a, (bc)
   67A9 C6 FE         [ 7] 5194 	add	a, #0xfe
   67AB 02            [ 7] 5195 	ld	(bc), a
   67AC                    5196 00102$:
                           5197 ;src/main.c:1249: pSpr->dir = D_up;
   67AC DD 7E FE      [19] 5198 	ld	a, -2 (ix)
   67AF C6 07         [ 7] 5199 	add	a, #0x07
   67B1 4F            [ 4] 5200 	ld	c, a
   67B2 DD 7E FF      [19] 5201 	ld	a, -1 (ix)
   67B5 CE 00         [ 7] 5202 	adc	a, #0x00
   67B7 47            [ 4] 5203 	ld	b, a
   67B8 AF            [ 4] 5204 	xor	a, a
   67B9 02            [ 7] 5205 	ld	(bc), a
                           5206 ;src/main.c:1250: pSpr->status = S_walkingUp;
   67BA DD 7E FE      [19] 5207 	ld	a, -2 (ix)
   67BD C6 06         [ 7] 5208 	add	a, #0x06
   67BF 4F            [ 4] 5209 	ld	c, a
   67C0 DD 7E FF      [19] 5210 	ld	a, -1 (ix)
   67C3 CE 00         [ 7] 5211 	adc	a, #0x00
   67C5 47            [ 4] 5212 	ld	b, a
   67C6 AF            [ 4] 5213 	xor	a, a
   67C7 02            [ 7] 5214 	ld	(bc), a
   67C8                    5215 00107$:
   67C8 DD F9         [10] 5216 	ld	sp, ix
   67CA DD E1         [14] 5217 	pop	ix
   67CC C9            [10] 5218 	ret
                           5219 ;src/main.c:1255: void MoveDown(TSpr *pSpr) __z88dk_fastcall {
                           5220 ;	---------------------------------
                           5221 ; Function MoveDown
                           5222 ; ---------------------------------
   67CD                    5223 _MoveDown::
   67CD DD E5         [15] 5224 	push	ix
   67CF DD 21 00 00   [14] 5225 	ld	ix,#0
   67D3 DD 39         [15] 5226 	add	ix,sp
   67D5 F5            [11] 5227 	push	af
   67D6 F5            [11] 5228 	push	af
                           5229 ;src/main.c:1257: if (pSpr->y + SPR_H < GLOBAL_MAX_Y && OnBackground(pSpr->x-1, pSpr->y+4)) {
   67D7 DD 75 FE      [19] 5230 	ld	-2 (ix), l
   67DA DD 74 FF      [19] 5231 	ld	-1 (ix), h
   67DD 23            [ 6] 5232 	inc	hl
   67DE 23            [ 6] 5233 	inc	hl
   67DF 23            [ 6] 5234 	inc	hl
   67E0 4D            [ 4] 5235 	ld	c,l
   67E1 44            [ 4] 5236 	ld	b,h
   67E2 0A            [ 7] 5237 	ld	a, (bc)
   67E3 5F            [ 4] 5238 	ld	e, a
   67E4 6B            [ 4] 5239 	ld	l, e
   67E5 26 00         [ 7] 5240 	ld	h, #0x00
   67E7 D5            [11] 5241 	push	de
   67E8 11 0C 00      [10] 5242 	ld	de, #0x000c
   67EB 19            [11] 5243 	add	hl, de
   67EC D1            [10] 5244 	pop	de
   67ED 7D            [ 4] 5245 	ld	a, l
   67EE D6 C8         [ 7] 5246 	sub	a, #0xc8
   67F0 7C            [ 4] 5247 	ld	a, h
   67F1 17            [ 4] 5248 	rla
   67F2 3F            [ 4] 5249 	ccf
   67F3 1F            [ 4] 5250 	rra
   67F4 DE 80         [ 7] 5251 	sbc	a, #0x80
   67F6 30 70         [12] 5252 	jr	NC,00107$
   67F8 1C            [ 4] 5253 	inc	e
   67F9 1C            [ 4] 5254 	inc	e
   67FA 1C            [ 4] 5255 	inc	e
   67FB 1C            [ 4] 5256 	inc	e
   67FC DD 7E FE      [19] 5257 	ld	a, -2 (ix)
   67FF C6 02         [ 7] 5258 	add	a, #0x02
   6801 DD 77 FC      [19] 5259 	ld	-4 (ix), a
   6804 DD 7E FF      [19] 5260 	ld	a, -1 (ix)
   6807 CE 00         [ 7] 5261 	adc	a, #0x00
   6809 DD 77 FD      [19] 5262 	ld	-3 (ix), a
   680C E1            [10] 5263 	pop	hl
   680D E5            [11] 5264 	push	hl
   680E 56            [ 7] 5265 	ld	d, (hl)
   680F 15            [ 4] 5266 	dec	d
   6810 C5            [11] 5267 	push	bc
   6811 7B            [ 4] 5268 	ld	a, e
   6812 F5            [11] 5269 	push	af
   6813 33            [ 6] 5270 	inc	sp
   6814 D5            [11] 5271 	push	de
   6815 33            [ 6] 5272 	inc	sp
   6816 CD E0 4B      [17] 5273 	call	_OnBackground
   6819 F1            [10] 5274 	pop	af
   681A C1            [10] 5275 	pop	bc
   681B 7D            [ 4] 5276 	ld	a, l
   681C B7            [ 4] 5277 	or	a, a
   681D 28 49         [12] 5278 	jr	Z,00107$
                           5279 ;src/main.c:1258: pSpr->y += 2;
   681F 0A            [ 7] 5280 	ld	a, (bc)
   6820 C6 02         [ 7] 5281 	add	a, #0x02
   6822 02            [ 7] 5282 	ld	(bc), a
                           5283 ;src/main.c:1259: if (pSpr->power_maxV > 0 && OnBackground(pSpr->x-1, pSpr->y+4))
   6823 D1            [10] 5284 	pop	de
   6824 E1            [10] 5285 	pop	hl
   6825 E5            [11] 5286 	push	hl
   6826 D5            [11] 5287 	push	de
   6827 11 0E 00      [10] 5288 	ld	de, #0x000e
   682A 19            [11] 5289 	add	hl, de
   682B 7E            [ 7] 5290 	ld	a, (hl)
   682C B7            [ 4] 5291 	or	a, a
   682D 28 1D         [12] 5292 	jr	Z,00102$
   682F 0A            [ 7] 5293 	ld	a, (bc)
   6830 5F            [ 4] 5294 	ld	e, a
   6831 1C            [ 4] 5295 	inc	e
   6832 1C            [ 4] 5296 	inc	e
   6833 1C            [ 4] 5297 	inc	e
   6834 1C            [ 4] 5298 	inc	e
   6835 E1            [10] 5299 	pop	hl
   6836 E5            [11] 5300 	push	hl
   6837 56            [ 7] 5301 	ld	d, (hl)
   6838 15            [ 4] 5302 	dec	d
   6839 C5            [11] 5303 	push	bc
   683A 7B            [ 4] 5304 	ld	a, e
   683B F5            [11] 5305 	push	af
   683C 33            [ 6] 5306 	inc	sp
   683D D5            [11] 5307 	push	de
   683E 33            [ 6] 5308 	inc	sp
   683F CD E0 4B      [17] 5309 	call	_OnBackground
   6842 F1            [10] 5310 	pop	af
   6843 C1            [10] 5311 	pop	bc
   6844 7D            [ 4] 5312 	ld	a, l
   6845 B7            [ 4] 5313 	or	a, a
   6846 28 04         [12] 5314 	jr	Z,00102$
                           5315 ;src/main.c:1260: pSpr->y += 2; // powerUp speed*2
   6848 0A            [ 7] 5316 	ld	a, (bc)
   6849 C6 02         [ 7] 5317 	add	a, #0x02
   684B 02            [ 7] 5318 	ld	(bc), a
   684C                    5319 00102$:
                           5320 ;src/main.c:1262: pSpr->dir = D_down;
   684C DD 7E FE      [19] 5321 	ld	a, -2 (ix)
   684F C6 07         [ 7] 5322 	add	a, #0x07
   6851 6F            [ 4] 5323 	ld	l, a
   6852 DD 7E FF      [19] 5324 	ld	a, -1 (ix)
   6855 CE 00         [ 7] 5325 	adc	a, #0x00
   6857 67            [ 4] 5326 	ld	h, a
   6858 36 01         [10] 5327 	ld	(hl), #0x01
                           5328 ;src/main.c:1263: pSpr->status = S_walkingDown;
   685A DD 7E FE      [19] 5329 	ld	a, -2 (ix)
   685D C6 06         [ 7] 5330 	add	a, #0x06
   685F 6F            [ 4] 5331 	ld	l, a
   6860 DD 7E FF      [19] 5332 	ld	a, -1 (ix)
   6863 CE 00         [ 7] 5333 	adc	a, #0x00
   6865 67            [ 4] 5334 	ld	h, a
   6866 36 01         [10] 5335 	ld	(hl), #0x01
   6868                    5336 00107$:
   6868 DD F9         [10] 5337 	ld	sp, ix
   686A DD E1         [14] 5338 	pop	ix
   686C C9            [10] 5339 	ret
                           5340 ;src/main.c:1268: void MoveLeft(TSpr *pSpr) __z88dk_fastcall {
                           5341 ;	---------------------------------
                           5342 ; Function MoveLeft
                           5343 ; ---------------------------------
   686D                    5344 _MoveLeft::
   686D DD E5         [15] 5345 	push	ix
   686F DD 21 00 00   [14] 5346 	ld	ix,#0
   6873 DD 39         [15] 5347 	add	ix,sp
   6875 F5            [11] 5348 	push	af
   6876 F5            [11] 5349 	push	af
                           5350 ;src/main.c:1270: if (OnBackground(pSpr->x-3, pSpr->y+1)) {
   6877 DD 75 FE      [19] 5351 	ld	-2 (ix), l
   687A DD 74 FF      [19] 5352 	ld	-1 (ix), h
   687D 23            [ 6] 5353 	inc	hl
   687E 23            [ 6] 5354 	inc	hl
   687F 23            [ 6] 5355 	inc	hl
   6880 4D            [ 4] 5356 	ld	c,l
   6881 44            [ 4] 5357 	ld	b,h
   6882 0A            [ 7] 5358 	ld	a, (bc)
   6883 57            [ 4] 5359 	ld	d, a
   6884 14            [ 4] 5360 	inc	d
   6885 DD 7E FE      [19] 5361 	ld	a, -2 (ix)
   6888 C6 02         [ 7] 5362 	add	a, #0x02
   688A DD 77 FC      [19] 5363 	ld	-4 (ix), a
   688D DD 7E FF      [19] 5364 	ld	a, -1 (ix)
   6890 CE 00         [ 7] 5365 	adc	a, #0x00
   6892 DD 77 FD      [19] 5366 	ld	-3 (ix), a
   6895 E1            [10] 5367 	pop	hl
   6896 E5            [11] 5368 	push	hl
   6897 7E            [ 7] 5369 	ld	a, (hl)
   6898 C6 FD         [ 7] 5370 	add	a, #0xfd
   689A C5            [11] 5371 	push	bc
   689B 5F            [ 4] 5372 	ld	e, a
   689C D5            [11] 5373 	push	de
   689D CD E0 4B      [17] 5374 	call	_OnBackground
   68A0 F1            [10] 5375 	pop	af
   68A1 C1            [10] 5376 	pop	bc
   68A2 7D            [ 4] 5377 	ld	a, l
   68A3 B7            [ 4] 5378 	or	a, a
   68A4 28 4C         [12] 5379 	jr	Z,00106$
                           5380 ;src/main.c:1271: pSpr->x--;
   68A6 E1            [10] 5381 	pop	hl
   68A7 E5            [11] 5382 	push	hl
   68A8 5E            [ 7] 5383 	ld	e, (hl)
   68A9 1D            [ 4] 5384 	dec	e
   68AA E1            [10] 5385 	pop	hl
   68AB E5            [11] 5386 	push	hl
   68AC 73            [ 7] 5387 	ld	(hl), e
                           5388 ;src/main.c:1272: if (pSpr->power_maxV > 0 && OnBackground(pSpr->x-3, pSpr->y+1))
   68AD D1            [10] 5389 	pop	de
   68AE E1            [10] 5390 	pop	hl
   68AF E5            [11] 5391 	push	hl
   68B0 D5            [11] 5392 	push	de
   68B1 11 0E 00      [10] 5393 	ld	de, #0x000e
   68B4 19            [11] 5394 	add	hl, de
   68B5 7E            [ 7] 5395 	ld	a, (hl)
   68B6 B7            [ 4] 5396 	or	a, a
   68B7 28 1D         [12] 5397 	jr	Z,00102$
   68B9 0A            [ 7] 5398 	ld	a, (bc)
   68BA 4F            [ 4] 5399 	ld	c, a
   68BB 0C            [ 4] 5400 	inc	c
   68BC E1            [10] 5401 	pop	hl
   68BD E5            [11] 5402 	push	hl
   68BE 7E            [ 7] 5403 	ld	a, (hl)
   68BF C6 FD         [ 7] 5404 	add	a, #0xfd
   68C1 47            [ 4] 5405 	ld	b, a
   68C2 79            [ 4] 5406 	ld	a, c
   68C3 F5            [11] 5407 	push	af
   68C4 33            [ 6] 5408 	inc	sp
   68C5 C5            [11] 5409 	push	bc
   68C6 33            [ 6] 5410 	inc	sp
   68C7 CD E0 4B      [17] 5411 	call	_OnBackground
   68CA F1            [10] 5412 	pop	af
   68CB 7D            [ 4] 5413 	ld	a, l
   68CC B7            [ 4] 5414 	or	a, a
   68CD 28 07         [12] 5415 	jr	Z,00102$
                           5416 ;src/main.c:1273: pSpr->x--; // powerUp speed*2
   68CF E1            [10] 5417 	pop	hl
   68D0 E5            [11] 5418 	push	hl
   68D1 4E            [ 7] 5419 	ld	c, (hl)
   68D2 0D            [ 4] 5420 	dec	c
   68D3 E1            [10] 5421 	pop	hl
   68D4 E5            [11] 5422 	push	hl
   68D5 71            [ 7] 5423 	ld	(hl), c
   68D6                    5424 00102$:
                           5425 ;src/main.c:1275: pSpr->dir = D_left;
   68D6 DD 7E FE      [19] 5426 	ld	a, -2 (ix)
   68D9 C6 07         [ 7] 5427 	add	a, #0x07
   68DB 6F            [ 4] 5428 	ld	l, a
   68DC DD 7E FF      [19] 5429 	ld	a, -1 (ix)
   68DF CE 00         [ 7] 5430 	adc	a, #0x00
   68E1 67            [ 4] 5431 	ld	h, a
   68E2 36 02         [10] 5432 	ld	(hl), #0x02
                           5433 ;src/main.c:1276: pSpr->status = S_walkingLeft;
   68E4 DD 7E FE      [19] 5434 	ld	a, -2 (ix)
   68E7 C6 06         [ 7] 5435 	add	a, #0x06
   68E9 6F            [ 4] 5436 	ld	l, a
   68EA DD 7E FF      [19] 5437 	ld	a, -1 (ix)
   68ED CE 00         [ 7] 5438 	adc	a, #0x00
   68EF 67            [ 4] 5439 	ld	h, a
   68F0 36 02         [10] 5440 	ld	(hl), #0x02
   68F2                    5441 00106$:
   68F2 DD F9         [10] 5442 	ld	sp, ix
   68F4 DD E1         [14] 5443 	pop	ix
   68F6 C9            [10] 5444 	ret
                           5445 ;src/main.c:1281: void MoveRight(TSpr *pSpr) __z88dk_fastcall { 
                           5446 ;	---------------------------------
                           5447 ; Function MoveRight
                           5448 ; ---------------------------------
   68F7                    5449 _MoveRight::
   68F7 DD E5         [15] 5450 	push	ix
   68F9 DD 21 00 00   [14] 5451 	ld	ix,#0
   68FD DD 39         [15] 5452 	add	ix,sp
   68FF F5            [11] 5453 	push	af
   6900 F5            [11] 5454 	push	af
                           5455 ;src/main.c:1283: if (OnBackground(pSpr->x+1, pSpr->y+1)) {
   6901 DD 75 FE      [19] 5456 	ld	-2 (ix), l
   6904 DD 74 FF      [19] 5457 	ld	-1 (ix), h
   6907 23            [ 6] 5458 	inc	hl
   6908 23            [ 6] 5459 	inc	hl
   6909 23            [ 6] 5460 	inc	hl
   690A 4D            [ 4] 5461 	ld	c,l
   690B 44            [ 4] 5462 	ld	b,h
   690C 0A            [ 7] 5463 	ld	a, (bc)
   690D 57            [ 4] 5464 	ld	d, a
   690E 14            [ 4] 5465 	inc	d
   690F DD 7E FE      [19] 5466 	ld	a, -2 (ix)
   6912 C6 02         [ 7] 5467 	add	a, #0x02
   6914 DD 77 FC      [19] 5468 	ld	-4 (ix), a
   6917 DD 7E FF      [19] 5469 	ld	a, -1 (ix)
   691A CE 00         [ 7] 5470 	adc	a, #0x00
   691C DD 77 FD      [19] 5471 	ld	-3 (ix), a
   691F E1            [10] 5472 	pop	hl
   6920 E5            [11] 5473 	push	hl
   6921 7E            [ 7] 5474 	ld	a, (hl)
   6922 3C            [ 4] 5475 	inc	a
   6923 C5            [11] 5476 	push	bc
   6924 5F            [ 4] 5477 	ld	e, a
   6925 D5            [11] 5478 	push	de
   6926 CD E0 4B      [17] 5479 	call	_OnBackground
   6929 F1            [10] 5480 	pop	af
   692A C1            [10] 5481 	pop	bc
   692B 7D            [ 4] 5482 	ld	a, l
   692C B7            [ 4] 5483 	or	a, a
   692D 28 4A         [12] 5484 	jr	Z,00106$
                           5485 ;src/main.c:1284: pSpr->x++;
   692F E1            [10] 5486 	pop	hl
   6930 E5            [11] 5487 	push	hl
   6931 5E            [ 7] 5488 	ld	e, (hl)
   6932 1C            [ 4] 5489 	inc	e
   6933 E1            [10] 5490 	pop	hl
   6934 E5            [11] 5491 	push	hl
   6935 73            [ 7] 5492 	ld	(hl), e
                           5493 ;src/main.c:1285: if (pSpr->power_maxV > 0 && OnBackground(pSpr->x+1, pSpr->y+1)) 
   6936 D1            [10] 5494 	pop	de
   6937 E1            [10] 5495 	pop	hl
   6938 E5            [11] 5496 	push	hl
   6939 D5            [11] 5497 	push	de
   693A 11 0E 00      [10] 5498 	ld	de, #0x000e
   693D 19            [11] 5499 	add	hl, de
   693E 7E            [ 7] 5500 	ld	a, (hl)
   693F B7            [ 4] 5501 	or	a, a
   6940 28 1B         [12] 5502 	jr	Z,00102$
   6942 0A            [ 7] 5503 	ld	a, (bc)
   6943 4F            [ 4] 5504 	ld	c, a
   6944 0C            [ 4] 5505 	inc	c
   6945 E1            [10] 5506 	pop	hl
   6946 E5            [11] 5507 	push	hl
   6947 46            [ 7] 5508 	ld	b, (hl)
   6948 04            [ 4] 5509 	inc	b
   6949 79            [ 4] 5510 	ld	a, c
   694A F5            [11] 5511 	push	af
   694B 33            [ 6] 5512 	inc	sp
   694C C5            [11] 5513 	push	bc
   694D 33            [ 6] 5514 	inc	sp
   694E CD E0 4B      [17] 5515 	call	_OnBackground
   6951 F1            [10] 5516 	pop	af
   6952 7D            [ 4] 5517 	ld	a, l
   6953 B7            [ 4] 5518 	or	a, a
   6954 28 07         [12] 5519 	jr	Z,00102$
                           5520 ;src/main.c:1286: pSpr->x++; // powerUp speed*2
   6956 E1            [10] 5521 	pop	hl
   6957 E5            [11] 5522 	push	hl
   6958 4E            [ 7] 5523 	ld	c, (hl)
   6959 0C            [ 4] 5524 	inc	c
   695A E1            [10] 5525 	pop	hl
   695B E5            [11] 5526 	push	hl
   695C 71            [ 7] 5527 	ld	(hl), c
   695D                    5528 00102$:
                           5529 ;src/main.c:1288: pSpr->dir = D_right;
   695D DD 7E FE      [19] 5530 	ld	a, -2 (ix)
   6960 C6 07         [ 7] 5531 	add	a, #0x07
   6962 6F            [ 4] 5532 	ld	l, a
   6963 DD 7E FF      [19] 5533 	ld	a, -1 (ix)
   6966 CE 00         [ 7] 5534 	adc	a, #0x00
   6968 67            [ 4] 5535 	ld	h, a
   6969 36 03         [10] 5536 	ld	(hl), #0x03
                           5537 ;src/main.c:1289: pSpr->status = S_walkingRight;
   696B DD 7E FE      [19] 5538 	ld	a, -2 (ix)
   696E C6 06         [ 7] 5539 	add	a, #0x06
   6970 6F            [ 4] 5540 	ld	l, a
   6971 DD 7E FF      [19] 5541 	ld	a, -1 (ix)
   6974 CE 00         [ 7] 5542 	adc	a, #0x00
   6976 67            [ 4] 5543 	ld	h, a
   6977 36 03         [10] 5544 	ld	(hl), #0x03
   6979                    5545 00106$:
   6979 DD F9         [10] 5546 	ld	sp, ix
   697B DD E1         [14] 5547 	pop	ix
   697D C9            [10] 5548 	ret
                           5549 ;src/main.c:1295: void WalkIn(TSpr *pSpr, u8 dir) {
                           5550 ;	---------------------------------
                           5551 ; Function WalkIn
                           5552 ; ---------------------------------
   697E                    5553 _WalkIn::
                           5554 ;src/main.c:1296: pSpr->nFrm = 0;
   697E D1            [10] 5555 	pop	de
   697F C1            [10] 5556 	pop	bc
   6980 C5            [11] 5557 	push	bc
   6981 D5            [11] 5558 	push	de
   6982 21 0A 00      [10] 5559 	ld	hl, #0x000a
   6985 09            [11] 5560 	add	hl, bc
   6986 36 00         [10] 5561 	ld	(hl), #0x00
                           5562 ;src/main.c:1297: pSpr->dir = dir;
   6988 21 07 00      [10] 5563 	ld	hl, #0x0007
   698B 09            [11] 5564 	add	hl, bc
   698C FD 21 04 00   [14] 5565 	ld	iy, #4
   6990 FD 39         [15] 5566 	add	iy, sp
   6992 FD 7E 00      [19] 5567 	ld	a, 0 (iy)
   6995 77            [ 7] 5568 	ld	(hl), a
                           5569 ;src/main.c:1298: pSpr->status = dir;
   6996 21 06 00      [10] 5570 	ld	hl, #0x0006
   6999 09            [11] 5571 	add	hl, bc
   699A FD 7E 00      [19] 5572 	ld	a, 0 (iy)
   699D 77            [ 7] 5573 	ld	(hl), a
                           5574 ;src/main.c:1299: pSpr->print_minV = TRUE; // the sprite must be printed, it will move
   699E 21 0D 00      [10] 5575 	ld	hl, #0x000d
   69A1 09            [11] 5576 	add	hl, bc
   69A2 36 01         [10] 5577 	ld	(hl), #0x01
   69A4 C9            [10] 5578 	ret
                           5579 ;src/main.c:1304: void Stop(TSpr *pSpr) __z88dk_fastcall {
                           5580 ;	---------------------------------
                           5581 ; Function Stop
                           5582 ; ---------------------------------
   69A5                    5583 _Stop::
   69A5 DD E5         [15] 5584 	push	ix
   69A7 DD 21 00 00   [14] 5585 	ld	ix,#0
   69AB DD 39         [15] 5586 	add	ix,sp
   69AD F5            [11] 5587 	push	af
                           5588 ;src/main.c:1305: cpct_scanKeyboard_f(); // check the pressed keys
   69AE E5            [11] 5589 	push	hl
   69AF CD E0 43      [17] 5590 	call	_cpct_scanKeyboard_f
   69B2 C1            [10] 5591 	pop	bc
                           5592 ;src/main.c:1306: if(cpct_isKeyPressed(ctlUp[pSpr->ident]))			WalkIn(pSpr, D_up);
   69B3 11 DD 48      [10] 5593 	ld	de, #_ctlUp+0
   69B6 21 01 00      [10] 5594 	ld	hl, #0x0001
   69B9 09            [11] 5595 	add	hl,bc
   69BA E3            [19] 5596 	ex	(sp), hl
   69BB E1            [10] 5597 	pop	hl
   69BC E5            [11] 5598 	push	hl
   69BD 6E            [ 7] 5599 	ld	l, (hl)
   69BE 26 00         [ 7] 5600 	ld	h, #0x00
   69C0 29            [11] 5601 	add	hl, hl
   69C1 19            [11] 5602 	add	hl, de
   69C2 5E            [ 7] 5603 	ld	e, (hl)
   69C3 23            [ 6] 5604 	inc	hl
   69C4 66            [ 7] 5605 	ld	h, (hl)
   69C5 C5            [11] 5606 	push	bc
   69C6 6B            [ 4] 5607 	ld	l, e
   69C7 CD D4 43      [17] 5608 	call	_cpct_isKeyPressed
   69CA C1            [10] 5609 	pop	bc
   69CB 7D            [ 4] 5610 	ld	a, l
   69CC B7            [ 4] 5611 	or	a, a
   69CD 28 0C         [12] 5612 	jr	Z,00119$
   69CF AF            [ 4] 5613 	xor	a, a
   69D0 F5            [11] 5614 	push	af
   69D1 33            [ 6] 5615 	inc	sp
   69D2 C5            [11] 5616 	push	bc
   69D3 CD 7E 69      [17] 5617 	call	_WalkIn
   69D6 F1            [10] 5618 	pop	af
   69D7 33            [ 6] 5619 	inc	sp
   69D8 C3 84 6A      [10] 5620 	jp	00121$
   69DB                    5621 00119$:
                           5622 ;src/main.c:1307: else if(cpct_isKeyPressed(ctlDown[pSpr->ident]))	WalkIn(pSpr, D_down);
   69DB E1            [10] 5623 	pop	hl
   69DC E5            [11] 5624 	push	hl
   69DD 6E            [ 7] 5625 	ld	l, (hl)
   69DE 26 00         [ 7] 5626 	ld	h, #0x00
   69E0 29            [11] 5627 	add	hl, hl
   69E1 11 E1 48      [10] 5628 	ld	de, #_ctlDown
   69E4 19            [11] 5629 	add	hl, de
   69E5 7E            [ 7] 5630 	ld	a, (hl)
   69E6 23            [ 6] 5631 	inc	hl
   69E7 66            [ 7] 5632 	ld	h, (hl)
   69E8 6F            [ 4] 5633 	ld	l, a
   69E9 C5            [11] 5634 	push	bc
   69EA CD D4 43      [17] 5635 	call	_cpct_isKeyPressed
   69ED C1            [10] 5636 	pop	bc
   69EE 7D            [ 4] 5637 	ld	a, l
   69EF B7            [ 4] 5638 	or	a, a
   69F0 28 0D         [12] 5639 	jr	Z,00116$
   69F2 3E 01         [ 7] 5640 	ld	a, #0x01
   69F4 F5            [11] 5641 	push	af
   69F5 33            [ 6] 5642 	inc	sp
   69F6 C5            [11] 5643 	push	bc
   69F7 CD 7E 69      [17] 5644 	call	_WalkIn
   69FA F1            [10] 5645 	pop	af
   69FB 33            [ 6] 5646 	inc	sp
   69FC C3 84 6A      [10] 5647 	jp	00121$
   69FF                    5648 00116$:
                           5649 ;src/main.c:1308: else if(cpct_isKeyPressed(ctlLeft[pSpr->ident]))	WalkIn(pSpr, D_left);
   69FF E1            [10] 5650 	pop	hl
   6A00 E5            [11] 5651 	push	hl
   6A01 6E            [ 7] 5652 	ld	l, (hl)
   6A02 26 00         [ 7] 5653 	ld	h, #0x00
   6A04 29            [11] 5654 	add	hl, hl
   6A05 11 E5 48      [10] 5655 	ld	de, #_ctlLeft
   6A08 19            [11] 5656 	add	hl, de
   6A09 7E            [ 7] 5657 	ld	a, (hl)
   6A0A 23            [ 6] 5658 	inc	hl
   6A0B 66            [ 7] 5659 	ld	h, (hl)
   6A0C 6F            [ 4] 5660 	ld	l, a
   6A0D C5            [11] 5661 	push	bc
   6A0E CD D4 43      [17] 5662 	call	_cpct_isKeyPressed
   6A11 C1            [10] 5663 	pop	bc
   6A12 7D            [ 4] 5664 	ld	a, l
   6A13 B7            [ 4] 5665 	or	a, a
   6A14 28 0C         [12] 5666 	jr	Z,00113$
   6A16 3E 02         [ 7] 5667 	ld	a, #0x02
   6A18 F5            [11] 5668 	push	af
   6A19 33            [ 6] 5669 	inc	sp
   6A1A C5            [11] 5670 	push	bc
   6A1B CD 7E 69      [17] 5671 	call	_WalkIn
   6A1E F1            [10] 5672 	pop	af
   6A1F 33            [ 6] 5673 	inc	sp
   6A20 18 62         [12] 5674 	jr	00121$
   6A22                    5675 00113$:
                           5676 ;src/main.c:1309: else if(cpct_isKeyPressed(ctlRight[pSpr->ident]))	WalkIn(pSpr, D_right);	
   6A22 E1            [10] 5677 	pop	hl
   6A23 E5            [11] 5678 	push	hl
   6A24 6E            [ 7] 5679 	ld	l, (hl)
   6A25 26 00         [ 7] 5680 	ld	h, #0x00
   6A27 29            [11] 5681 	add	hl, hl
   6A28 11 E9 48      [10] 5682 	ld	de, #_ctlRight
   6A2B 19            [11] 5683 	add	hl, de
   6A2C 7E            [ 7] 5684 	ld	a, (hl)
   6A2D 23            [ 6] 5685 	inc	hl
   6A2E 66            [ 7] 5686 	ld	h, (hl)
   6A2F 6F            [ 4] 5687 	ld	l, a
   6A30 C5            [11] 5688 	push	bc
   6A31 CD D4 43      [17] 5689 	call	_cpct_isKeyPressed
   6A34 C1            [10] 5690 	pop	bc
   6A35 7D            [ 4] 5691 	ld	a, l
   6A36 B7            [ 4] 5692 	or	a, a
   6A37 28 0C         [12] 5693 	jr	Z,00110$
   6A39 3E 03         [ 7] 5694 	ld	a, #0x03
   6A3B F5            [11] 5695 	push	af
   6A3C 33            [ 6] 5696 	inc	sp
   6A3D C5            [11] 5697 	push	bc
   6A3E CD 7E 69      [17] 5698 	call	_WalkIn
   6A41 F1            [10] 5699 	pop	af
   6A42 33            [ 6] 5700 	inc	sp
   6A43 18 3F         [12] 5701 	jr	00121$
   6A45                    5702 00110$:
                           5703 ;src/main.c:1311: else if(cpct_isKeyPressed(ctlAbort)) {
   6A45 2A ED 48      [16] 5704 	ld	hl, (_ctlAbort)
   6A48 CD D4 43      [17] 5705 	call	_cpct_isKeyPressed
   6A4B 7D            [ 4] 5706 	ld	a, l
   6A4C B7            [ 4] 5707 	or	a, a
   6A4D 28 14         [12] 5708 	jr	Z,00107$
                           5709 ;src/main.c:1312: spr[0].lives_speed = 0;
   6A4F 21 FE 48      [10] 5710 	ld	hl, #(_spr + 0x000b)
   6A52 36 00         [10] 5711 	ld	(hl), #0x00
                           5712 ;src/main.c:1313: spr[1].lives_speed = 0;
   6A54 01 0D 49      [10] 5713 	ld	bc, #_spr + 26
   6A57 AF            [ 4] 5714 	xor	a, a
   6A58 02            [ 7] 5715 	ld	(bc), a
                           5716 ;src/main.c:1314: GameOver(2);
   6A59 3E 02         [ 7] 5717 	ld	a, #0x02
   6A5B F5            [11] 5718 	push	af
   6A5C 33            [ 6] 5719 	inc	sp
   6A5D CD 95 8A      [17] 5720 	call	_GameOver
   6A60 33            [ 6] 5721 	inc	sp
   6A61 18 21         [12] 5722 	jr	00121$
   6A63                    5723 00107$:
                           5724 ;src/main.c:1317: else if(cpct_isKeyPressed(ctlPause)) {
   6A63 2A F1 48      [16] 5725 	ld	hl, (_ctlPause)
   6A66 CD D4 43      [17] 5726 	call	_cpct_isKeyPressed
   6A69 7D            [ 4] 5727 	ld	a, l
   6A6A B7            [ 4] 5728 	or	a, a
   6A6B 28 17         [12] 5729 	jr	Z,00121$
                           5730 ;src/main.c:1318: Wait4Key(ctlPause);
   6A6D 2A F1 48      [16] 5731 	ld	hl, (_ctlPause)
   6A70 E5            [11] 5732 	push	hl
   6A71 CD 25 54      [17] 5733 	call	_Wait4Key
   6A74 F1            [10] 5734 	pop	af
                           5735 ;src/main.c:1319: while (!cpct_isAnyKeyPressed());
   6A75                    5736 00101$:
   6A75 CD CF 45      [17] 5737 	call	_cpct_isAnyKeyPressed
   6A78 7D            [ 4] 5738 	ld	a, l
   6A79 B7            [ 4] 5739 	or	a, a
   6A7A 28 F9         [12] 5740 	jr	Z,00101$
                           5741 ;src/main.c:1320: Wait4Key(ctlPause);
   6A7C 2A F1 48      [16] 5742 	ld	hl, (_ctlPause)
   6A7F E5            [11] 5743 	push	hl
   6A80 CD 25 54      [17] 5744 	call	_Wait4Key
   6A83 F1            [10] 5745 	pop	af
   6A84                    5746 00121$:
   6A84 DD F9         [10] 5747 	ld	sp, ix
   6A86 DD E1         [14] 5748 	pop	ix
   6A88 C9            [10] 5749 	ret
                           5750 ;src/main.c:1344: void WalkAnim(TSpr *pSpr, u8 dir) {
                           5751 ;	---------------------------------
                           5752 ; Function WalkAnim
                           5753 ; ---------------------------------
   6A89                    5754 _WalkAnim::
   6A89 DD E5         [15] 5755 	push	ix
   6A8B DD 21 00 00   [14] 5756 	ld	ix,#0
   6A8F DD 39         [15] 5757 	add	ix,sp
                           5758 ;src/main.c:1345: u8 animPause = 2;
   6A91 0E 02         [ 7] 5759 	ld	c, #0x02
                           5760 ;src/main.c:1346: if (pSpr->num > 3) animPause = 1; // slow enemies (4 and 5) have no pause in animation
   6A93 DD 5E 04      [19] 5761 	ld	e,4 (ix)
   6A96 DD 56 05      [19] 5762 	ld	d,5 (ix)
   6A99 1A            [ 7] 5763 	ld	a, (de)
   6A9A 47            [ 4] 5764 	ld	b, a
   6A9B 3E 03         [ 7] 5765 	ld	a, #0x03
   6A9D 90            [ 4] 5766 	sub	a, b
   6A9E 30 02         [12] 5767 	jr	NC,00102$
   6AA0 0E 01         [ 7] 5768 	ld	c, #0x01
   6AA2                    5769 00102$:
                           5770 ;src/main.c:1347: pSpr->dir = dir;
   6AA2 21 07 00      [10] 5771 	ld	hl, #0x0007
   6AA5 19            [11] 5772 	add	hl, de
   6AA6 DD 7E 06      [19] 5773 	ld	a, 6 (ix)
   6AA9 77            [ 7] 5774 	ld	(hl), a
                           5775 ;src/main.c:1348: if(++pSpr->nFrm == animPause*2) pSpr->nFrm = 0;
   6AAA FD 21 0A 00   [14] 5776 	ld	iy, #0x000a
   6AAE FD 19         [15] 5777 	add	iy, de
   6AB0 FD 34 00      [23] 5778 	inc	0 (iy)
   6AB3 FD 5E 00      [19] 5779 	ld	e, 0 (iy)
   6AB6 06 00         [ 7] 5780 	ld	b, #0x00
   6AB8 CB 21         [ 8] 5781 	sla	c
   6ABA CB 10         [ 8] 5782 	rl	b
   6ABC 16 00         [ 7] 5783 	ld	d, #0x00
   6ABE 79            [ 4] 5784 	ld	a, c
   6ABF 93            [ 4] 5785 	sub	a, e
   6AC0 20 08         [12] 5786 	jr	NZ,00105$
   6AC2 78            [ 4] 5787 	ld	a, b
   6AC3 92            [ 4] 5788 	sub	a, d
   6AC4 20 04         [12] 5789 	jr	NZ,00105$
   6AC6 FD 36 00 00   [19] 5790 	ld	0 (iy), #0x00
   6ACA                    5791 00105$:
   6ACA DD E1         [14] 5792 	pop	ix
   6ACC C9            [10] 5793 	ret
                           5794 ;src/main.c:1353: void Walk(TSpr *pSpr) __z88dk_fastcall {
                           5795 ;	---------------------------------
                           5796 ; Function Walk
                           5797 ; ---------------------------------
   6ACD                    5798 _Walk::
   6ACD DD E5         [15] 5799 	push	ix
   6ACF DD 21 00 00   [14] 5800 	ld	ix,#0
   6AD3 DD 39         [15] 5801 	add	ix,sp
   6AD5 F5            [11] 5802 	push	af
   6AD6 F5            [11] 5803 	push	af
   6AD7 DD 75 FE      [19] 5804 	ld	-2 (ix), l
   6ADA DD 74 FF      [19] 5805 	ld	-1 (ix), h
                           5806 ;src/main.c:1354: cpct_scanKeyboard_f(); // check the pressed keys
   6ADD CD E0 43      [17] 5807 	call	_cpct_scanKeyboard_f
                           5808 ;src/main.c:1356: if(cpct_isKeyPressed(ctlRight[pSpr->ident])) {	
   6AE0 11 E9 48      [10] 5809 	ld	de, #_ctlRight+0
   6AE3 DD 4E FE      [19] 5810 	ld	c,-2 (ix)
   6AE6 DD 46 FF      [19] 5811 	ld	b,-1 (ix)
   6AE9 03            [ 6] 5812 	inc	bc
   6AEA 0A            [ 7] 5813 	ld	a, (bc)
   6AEB 6F            [ 4] 5814 	ld	l, a
   6AEC 26 00         [ 7] 5815 	ld	h, #0x00
   6AEE 29            [11] 5816 	add	hl, hl
   6AEF 19            [11] 5817 	add	hl, de
   6AF0 5E            [ 7] 5818 	ld	e, (hl)
   6AF1 23            [ 6] 5819 	inc	hl
   6AF2 66            [ 7] 5820 	ld	h, (hl)
   6AF3 C5            [11] 5821 	push	bc
   6AF4 6B            [ 4] 5822 	ld	l, e
   6AF5 CD D4 43      [17] 5823 	call	_cpct_isKeyPressed
   6AF8 5D            [ 4] 5824 	ld	e, l
   6AF9 C1            [10] 5825 	pop	bc
   6AFA 0A            [ 7] 5826 	ld	a, (bc)
   6AFB 6F            [ 4] 5827 	ld	l, a
                           5828 ;src/main.c:1357: if (cpct_isKeyPressed(ctlUp[pSpr->ident])) 			MoveUp(pSpr);  // diagonal derecha-arriba
   6AFC 26 00         [ 7] 5829 	ld	h, #0x00
   6AFE 29            [11] 5830 	add	hl, hl
   6AFF E3            [19] 5831 	ex	(sp), hl
                           5832 ;src/main.c:1356: if(cpct_isKeyPressed(ctlRight[pSpr->ident])) {	
   6B00 7B            [ 4] 5833 	ld	a, e
   6B01 B7            [ 4] 5834 	or	a, a
   6B02 28 51         [12] 5835 	jr	Z,00121$
                           5836 ;src/main.c:1357: if (cpct_isKeyPressed(ctlUp[pSpr->ident])) 			MoveUp(pSpr);  // diagonal derecha-arriba
   6B04 11 DD 48      [10] 5837 	ld	de, #_ctlUp+0
   6B07 E1            [10] 5838 	pop	hl
   6B08 E5            [11] 5839 	push	hl
   6B09 19            [11] 5840 	add	hl, de
   6B0A 5E            [ 7] 5841 	ld	e, (hl)
   6B0B 23            [ 6] 5842 	inc	hl
   6B0C 66            [ 7] 5843 	ld	h, (hl)
   6B0D C5            [11] 5844 	push	bc
   6B0E 6B            [ 4] 5845 	ld	l, e
   6B0F CD D4 43      [17] 5846 	call	_cpct_isKeyPressed
   6B12 C1            [10] 5847 	pop	bc
   6B13 7D            [ 4] 5848 	ld	a, l
   6B14 B7            [ 4] 5849 	or	a, a
   6B15 28 09         [12] 5850 	jr	Z,00104$
   6B17 C1            [10] 5851 	pop	bc
   6B18 E1            [10] 5852 	pop	hl
   6B19 E5            [11] 5853 	push	hl
   6B1A C5            [11] 5854 	push	bc
   6B1B CD 40 67      [17] 5855 	call	_MoveUp
   6B1E 18 1B         [12] 5856 	jr	00105$
   6B20                    5857 00104$:
                           5858 ;src/main.c:1358: else if(cpct_isKeyPressed(ctlDown[pSpr->ident]))	MoveDown(pSpr); // diagonal derecha-abajo
   6B20 11 E1 48      [10] 5859 	ld	de, #_ctlDown+0
   6B23 0A            [ 7] 5860 	ld	a, (bc)
   6B24 6F            [ 4] 5861 	ld	l, a
   6B25 26 00         [ 7] 5862 	ld	h, #0x00
   6B27 29            [11] 5863 	add	hl, hl
   6B28 19            [11] 5864 	add	hl, de
   6B29 4E            [ 7] 5865 	ld	c, (hl)
   6B2A 23            [ 6] 5866 	inc	hl
   6B2B 66            [ 7] 5867 	ld	h, (hl)
   6B2C 69            [ 4] 5868 	ld	l, c
   6B2D CD D4 43      [17] 5869 	call	_cpct_isKeyPressed
   6B30 7D            [ 4] 5870 	ld	a, l
   6B31 B7            [ 4] 5871 	or	a, a
   6B32 28 07         [12] 5872 	jr	Z,00105$
   6B34 C1            [10] 5873 	pop	bc
   6B35 E1            [10] 5874 	pop	hl
   6B36 E5            [11] 5875 	push	hl
   6B37 C5            [11] 5876 	push	bc
   6B38 CD CD 67      [17] 5877 	call	_MoveDown
   6B3B                    5878 00105$:
                           5879 ;src/main.c:1359: MoveRight(pSpr);
   6B3B C1            [10] 5880 	pop	bc
   6B3C E1            [10] 5881 	pop	hl
   6B3D E5            [11] 5882 	push	hl
   6B3E C5            [11] 5883 	push	bc
   6B3F CD F7 68      [17] 5884 	call	_MoveRight
                           5885 ;src/main.c:1360: WalkAnim(pSpr, D_right);
   6B42 3E 03         [ 7] 5886 	ld	a, #0x03
   6B44 F5            [11] 5887 	push	af
   6B45 33            [ 6] 5888 	inc	sp
   6B46 DD 6E FE      [19] 5889 	ld	l,-2 (ix)
   6B49 DD 66 FF      [19] 5890 	ld	h,-1 (ix)
   6B4C E5            [11] 5891 	push	hl
   6B4D CD 89 6A      [17] 5892 	call	_WalkAnim
   6B50 F1            [10] 5893 	pop	af
   6B51 33            [ 6] 5894 	inc	sp
   6B52 C3 25 6C      [10] 5895 	jp	00123$
   6B55                    5896 00121$:
                           5897 ;src/main.c:1363: else if(cpct_isKeyPressed(ctlLeft[pSpr->ident])) {	
   6B55 11 E5 48      [10] 5898 	ld	de, #_ctlLeft+0
   6B58 E1            [10] 5899 	pop	hl
   6B59 E5            [11] 5900 	push	hl
   6B5A 19            [11] 5901 	add	hl, de
   6B5B 5E            [ 7] 5902 	ld	e, (hl)
   6B5C 23            [ 6] 5903 	inc	hl
   6B5D 66            [ 7] 5904 	ld	h, (hl)
   6B5E C5            [11] 5905 	push	bc
   6B5F 6B            [ 4] 5906 	ld	l, e
   6B60 CD D4 43      [17] 5907 	call	_cpct_isKeyPressed
   6B63 5D            [ 4] 5908 	ld	e, l
   6B64 C1            [10] 5909 	pop	bc
                           5910 ;src/main.c:1356: if(cpct_isKeyPressed(ctlRight[pSpr->ident])) {	
   6B65 0A            [ 7] 5911 	ld	a, (bc)
   6B66 6F            [ 4] 5912 	ld	l, a
                           5913 ;src/main.c:1357: if (cpct_isKeyPressed(ctlUp[pSpr->ident])) 			MoveUp(pSpr);  // diagonal derecha-arriba
   6B67 26 00         [ 7] 5914 	ld	h, #0x00
   6B69 29            [11] 5915 	add	hl, hl
   6B6A E3            [19] 5916 	ex	(sp), hl
                           5917 ;src/main.c:1363: else if(cpct_isKeyPressed(ctlLeft[pSpr->ident])) {	
   6B6B 7B            [ 4] 5918 	ld	a, e
   6B6C B7            [ 4] 5919 	or	a, a
   6B6D 28 50         [12] 5920 	jr	Z,00118$
                           5921 ;src/main.c:1364: if (cpct_isKeyPressed(ctlUp[pSpr->ident])) 			MoveUp(pSpr); // diagonal izda-arriba
   6B6F 11 DD 48      [10] 5922 	ld	de, #_ctlUp+0
   6B72 E1            [10] 5923 	pop	hl
   6B73 E5            [11] 5924 	push	hl
   6B74 19            [11] 5925 	add	hl, de
   6B75 5E            [ 7] 5926 	ld	e, (hl)
   6B76 23            [ 6] 5927 	inc	hl
   6B77 66            [ 7] 5928 	ld	h, (hl)
   6B78 C5            [11] 5929 	push	bc
   6B79 6B            [ 4] 5930 	ld	l, e
   6B7A CD D4 43      [17] 5931 	call	_cpct_isKeyPressed
   6B7D C1            [10] 5932 	pop	bc
   6B7E 7D            [ 4] 5933 	ld	a, l
   6B7F B7            [ 4] 5934 	or	a, a
   6B80 28 09         [12] 5935 	jr	Z,00109$
   6B82 C1            [10] 5936 	pop	bc
   6B83 E1            [10] 5937 	pop	hl
   6B84 E5            [11] 5938 	push	hl
   6B85 C5            [11] 5939 	push	bc
   6B86 CD 40 67      [17] 5940 	call	_MoveUp
   6B89 18 1B         [12] 5941 	jr	00110$
   6B8B                    5942 00109$:
                           5943 ;src/main.c:1365: else if(cpct_isKeyPressed(ctlDown[pSpr->ident]))	MoveDown(pSpr); // diagonal izda-abajo
   6B8B 0A            [ 7] 5944 	ld	a, (bc)
   6B8C 6F            [ 4] 5945 	ld	l, a
   6B8D 26 00         [ 7] 5946 	ld	h, #0x00
   6B8F 29            [11] 5947 	add	hl, hl
   6B90 11 E1 48      [10] 5948 	ld	de, #_ctlDown
   6B93 19            [11] 5949 	add	hl, de
   6B94 4E            [ 7] 5950 	ld	c, (hl)
   6B95 23            [ 6] 5951 	inc	hl
   6B96 66            [ 7] 5952 	ld	h, (hl)
   6B97 69            [ 4] 5953 	ld	l, c
   6B98 CD D4 43      [17] 5954 	call	_cpct_isKeyPressed
   6B9B 7D            [ 4] 5955 	ld	a, l
   6B9C B7            [ 4] 5956 	or	a, a
   6B9D 28 07         [12] 5957 	jr	Z,00110$
   6B9F C1            [10] 5958 	pop	bc
   6BA0 E1            [10] 5959 	pop	hl
   6BA1 E5            [11] 5960 	push	hl
   6BA2 C5            [11] 5961 	push	bc
   6BA3 CD CD 67      [17] 5962 	call	_MoveDown
   6BA6                    5963 00110$:
                           5964 ;src/main.c:1366: MoveLeft(pSpr); 
   6BA6 C1            [10] 5965 	pop	bc
   6BA7 E1            [10] 5966 	pop	hl
   6BA8 E5            [11] 5967 	push	hl
   6BA9 C5            [11] 5968 	push	bc
   6BAA CD 6D 68      [17] 5969 	call	_MoveLeft
                           5970 ;src/main.c:1367: WalkAnim(pSpr, D_left);
   6BAD 3E 02         [ 7] 5971 	ld	a, #0x02
   6BAF F5            [11] 5972 	push	af
   6BB0 33            [ 6] 5973 	inc	sp
   6BB1 DD 6E FE      [19] 5974 	ld	l,-2 (ix)
   6BB4 DD 66 FF      [19] 5975 	ld	h,-1 (ix)
   6BB7 E5            [11] 5976 	push	hl
   6BB8 CD 89 6A      [17] 5977 	call	_WalkAnim
   6BBB F1            [10] 5978 	pop	af
   6BBC 33            [ 6] 5979 	inc	sp
   6BBD 18 66         [12] 5980 	jr	00123$
   6BBF                    5981 00118$:
                           5982 ;src/main.c:1370: else if(cpct_isKeyPressed(ctlUp[pSpr->ident])) {
   6BBF 11 DD 48      [10] 5983 	ld	de, #_ctlUp+0
   6BC2 E1            [10] 5984 	pop	hl
   6BC3 E5            [11] 5985 	push	hl
   6BC4 19            [11] 5986 	add	hl, de
   6BC5 5E            [ 7] 5987 	ld	e, (hl)
   6BC6 23            [ 6] 5988 	inc	hl
   6BC7 66            [ 7] 5989 	ld	h, (hl)
   6BC8 C5            [11] 5990 	push	bc
   6BC9 6B            [ 4] 5991 	ld	l, e
   6BCA CD D4 43      [17] 5992 	call	_cpct_isKeyPressed
   6BCD C1            [10] 5993 	pop	bc
   6BCE 7D            [ 4] 5994 	ld	a, l
   6BCF B7            [ 4] 5995 	or	a, a
   6BD0 28 18         [12] 5996 	jr	Z,00115$
                           5997 ;src/main.c:1371: MoveUp(pSpr); 
   6BD2 C1            [10] 5998 	pop	bc
   6BD3 E1            [10] 5999 	pop	hl
   6BD4 E5            [11] 6000 	push	hl
   6BD5 C5            [11] 6001 	push	bc
   6BD6 CD 40 67      [17] 6002 	call	_MoveUp
                           6003 ;src/main.c:1372: WalkAnim(pSpr, D_up);
   6BD9 AF            [ 4] 6004 	xor	a, a
   6BDA F5            [11] 6005 	push	af
   6BDB 33            [ 6] 6006 	inc	sp
   6BDC DD 6E FE      [19] 6007 	ld	l,-2 (ix)
   6BDF DD 66 FF      [19] 6008 	ld	h,-1 (ix)
   6BE2 E5            [11] 6009 	push	hl
   6BE3 CD 89 6A      [17] 6010 	call	_WalkAnim
   6BE6 F1            [10] 6011 	pop	af
   6BE7 33            [ 6] 6012 	inc	sp
   6BE8 18 3B         [12] 6013 	jr	00123$
   6BEA                    6014 00115$:
                           6015 ;src/main.c:1375: else if(cpct_isKeyPressed(ctlDown[pSpr->ident])) {
   6BEA 0A            [ 7] 6016 	ld	a, (bc)
   6BEB 6F            [ 4] 6017 	ld	l, a
   6BEC 26 00         [ 7] 6018 	ld	h, #0x00
   6BEE 29            [11] 6019 	add	hl, hl
   6BEF 11 E1 48      [10] 6020 	ld	de, #_ctlDown
   6BF2 19            [11] 6021 	add	hl, de
   6BF3 7E            [ 7] 6022 	ld	a, (hl)
   6BF4 23            [ 6] 6023 	inc	hl
   6BF5 66            [ 7] 6024 	ld	h, (hl)
   6BF6 6F            [ 4] 6025 	ld	l, a
   6BF7 CD D4 43      [17] 6026 	call	_cpct_isKeyPressed
   6BFA 7D            [ 4] 6027 	ld	a, l
   6BFB B7            [ 4] 6028 	or	a, a
   6BFC 28 19         [12] 6029 	jr	Z,00112$
                           6030 ;src/main.c:1376: MoveDown(pSpr); 
   6BFE C1            [10] 6031 	pop	bc
   6BFF E1            [10] 6032 	pop	hl
   6C00 E5            [11] 6033 	push	hl
   6C01 C5            [11] 6034 	push	bc
   6C02 CD CD 67      [17] 6035 	call	_MoveDown
                           6036 ;src/main.c:1377: WalkAnim(pSpr, D_down);
   6C05 3E 01         [ 7] 6037 	ld	a, #0x01
   6C07 F5            [11] 6038 	push	af
   6C08 33            [ 6] 6039 	inc	sp
   6C09 DD 6E FE      [19] 6040 	ld	l,-2 (ix)
   6C0C DD 66 FF      [19] 6041 	ld	h,-1 (ix)
   6C0F E5            [11] 6042 	push	hl
   6C10 CD 89 6A      [17] 6043 	call	_WalkAnim
   6C13 F1            [10] 6044 	pop	af
   6C14 33            [ 6] 6045 	inc	sp
   6C15 18 0E         [12] 6046 	jr	00123$
   6C17                    6047 00112$:
                           6048 ;src/main.c:1380: pSpr->status = S_stopped;
   6C17 DD 7E FE      [19] 6049 	ld	a, -2 (ix)
   6C1A C6 06         [ 7] 6050 	add	a, #0x06
   6C1C 6F            [ 4] 6051 	ld	l, a
   6C1D DD 7E FF      [19] 6052 	ld	a, -1 (ix)
   6C20 CE 00         [ 7] 6053 	adc	a, #0x00
   6C22 67            [ 4] 6054 	ld	h, a
   6C23 36 04         [10] 6055 	ld	(hl), #0x04
   6C25                    6056 00123$:
   6C25 DD F9         [10] 6057 	ld	sp, ix
   6C27 DD E1         [14] 6058 	pop	ix
   6C29 C9            [10] 6059 	ret
                           6060 ;src/main.c:1385: void RunStatus(TSpr *pSpr) __z88dk_fastcall {
                           6061 ;	---------------------------------
                           6062 ; Function RunStatus
                           6063 ; ---------------------------------
   6C2A                    6064 _RunStatus::
   6C2A 4D            [ 4] 6065 	ld	c, l
   6C2B 44            [ 4] 6066 	ld	b, h
                           6067 ;src/main.c:1386: if (pSpr->status == S_stopped)
   6C2C C5            [11] 6068 	push	bc
   6C2D FD E1         [14] 6069 	pop	iy
   6C2F FD 7E 06      [19] 6070 	ld	a, 6 (iy)
   6C32 D6 04         [ 7] 6071 	sub	a, #0x04
   6C34 20 05         [12] 6072 	jr	NZ,00102$
                           6073 ;src/main.c:1387: Stop(pSpr);
   6C36 69            [ 4] 6074 	ld	l, c
   6C37 60            [ 4] 6075 	ld	h, b
   6C38 C3 A5 69      [10] 6076 	jp  _Stop
   6C3B                    6077 00102$:
                           6078 ;src/main.c:1389: Walk(pSpr);	
   6C3B 69            [ 4] 6079 	ld	l, c
   6C3C 60            [ 4] 6080 	ld	h, b
   6C3D C3 CD 6A      [10] 6081 	jp  _Walk
                           6082 ;src/main.c:1394: void PlayerLoop(TSpr *pSpr) __z88dk_fastcall {
                           6083 ;	---------------------------------
                           6084 ; Function PlayerLoop
                           6085 ; ---------------------------------
   6C40                    6086 _PlayerLoop::
   6C40 DD E5         [15] 6087 	push	ix
   6C42 DD 21 00 00   [14] 6088 	ld	ix,#0
   6C46 DD 39         [15] 6089 	add	ix,sp
   6C48 F5            [11] 6090 	push	af
   6C49 4D            [ 4] 6091 	ld	c, l
   6C4A 44            [ 4] 6092 	ld	b, h
                           6093 ;src/main.c:1395: RunStatus(pSpr); // calls the appropriate function based on the status of the main sprites
   6C4B C5            [11] 6094 	push	bc
   6C4C 69            [ 4] 6095 	ld	l, c
   6C4D 60            [ 4] 6096 	ld	h, b
   6C4E CD 2A 6C      [17] 6097 	call	_RunStatus
   6C51 C1            [10] 6098 	pop	bc
                           6099 ;src/main.c:1396: if (pSpr->print_minV) { // does the sprite have to be reprinted?
   6C52 21 0D 00      [10] 6100 	ld	hl, #0x000d
   6C55 09            [11] 6101 	add	hl,bc
   6C56 E3            [19] 6102 	ex	(sp), hl
   6C57 E1            [10] 6103 	pop	hl
   6C58 E5            [11] 6104 	push	hl
   6C59 7E            [ 7] 6105 	ld	a, (hl)
   6C5A B7            [ 4] 6106 	or	a, a
   6C5B 28 46         [12] 6107 	jr	Z,00106$
                           6108 ;src/main.c:1397: SelectFrame(pSpr); // we assign the next frame of the animation to the sprite
   6C5D C5            [11] 6109 	push	bc
   6C5E 69            [ 4] 6110 	ld	l, c
   6C5F 60            [ 4] 6111 	ld	h, b
   6C60 CD EE 62      [17] 6112 	call	_SelectFrame
   6C63 C1            [10] 6113 	pop	bc
                           6114 ;src/main.c:1398: DeleteSprite(pSpr); // delete the sprite
   6C64 C5            [11] 6115 	push	bc
   6C65 69            [ 4] 6116 	ld	l, c
   6C66 60            [ 4] 6117 	ld	h, b
   6C67 CD 39 62      [17] 6118 	call	_DeleteSprite
   6C6A C1            [10] 6119 	pop	bc
                           6120 ;src/main.c:1399: pSpr->px = pSpr->x; // save the current X coordinate
   6C6B 21 04 00      [10] 6121 	ld	hl, #0x0004
   6C6E 09            [11] 6122 	add	hl,bc
   6C6F EB            [ 4] 6123 	ex	de,hl
   6C70 69            [ 4] 6124 	ld	l, c
   6C71 60            [ 4] 6125 	ld	h, b
   6C72 23            [ 6] 6126 	inc	hl
   6C73 23            [ 6] 6127 	inc	hl
   6C74 7E            [ 7] 6128 	ld	a, (hl)
   6C75 12            [ 7] 6129 	ld	(de), a
                           6130 ;src/main.c:1400: pSpr->py = pSpr->y; // save the current Y coordinate
   6C76 21 05 00      [10] 6131 	ld	hl, #0x0005
   6C79 09            [11] 6132 	add	hl,bc
   6C7A EB            [ 4] 6133 	ex	de,hl
   6C7B 69            [ 4] 6134 	ld	l, c
   6C7C 60            [ 4] 6135 	ld	h, b
   6C7D 23            [ 6] 6136 	inc	hl
   6C7E 23            [ 6] 6137 	inc	hl
   6C7F 23            [ 6] 6138 	inc	hl
   6C80 7E            [ 7] 6139 	ld	a, (hl)
   6C81 12            [ 7] 6140 	ld	(de), a
                           6141 ;src/main.c:1401: PrintSprite(pSpr); // paint the sprite in the new XY position
   6C82 C5            [11] 6142 	push	bc
   6C83 69            [ 4] 6143 	ld	l, c
   6C84 60            [ 4] 6144 	ld	h, b
   6C85 CD 0A 62      [17] 6145 	call	_PrintSprite
   6C88 C1            [10] 6146 	pop	bc
                           6147 ;src/main.c:1402: ctInactivity[pSpr->num] = 0; // on the move
   6C89 11 D6 48      [10] 6148 	ld	de, #_ctInactivity+0
   6C8C 0A            [ 7] 6149 	ld	a, (bc)
   6C8D 6F            [ 4] 6150 	ld	l, a
   6C8E 26 00         [ 7] 6151 	ld	h,#0x00
   6C90 19            [11] 6152 	add	hl, de
   6C91 36 00         [10] 6153 	ld	(hl), #0x00
                           6154 ;src/main.c:1403: if (pSpr->status == S_stopped) 
   6C93 C5            [11] 6155 	push	bc
   6C94 FD E1         [14] 6156 	pop	iy
   6C96 FD 7E 06      [19] 6157 	ld	a, 6 (iy)
   6C99 D6 04         [ 7] 6158 	sub	a, #0x04
   6C9B 20 1E         [12] 6159 	jr	NZ,00108$
                           6160 ;src/main.c:1404: pSpr->print_minV = FALSE; // if it is stopped it is no longer necessary to continue printing the sprite
   6C9D E1            [10] 6161 	pop	hl
   6C9E E5            [11] 6162 	push	hl
   6C9F 36 00         [10] 6163 	ld	(hl), #0x00
   6CA1 18 18         [12] 6164 	jr	00108$
   6CA3                    6165 00106$:
                           6166 ;src/main.c:1407: else if (ctMainLoop % 5 == 0)
   6CA3 C5            [11] 6167 	push	bc
   6CA4 21 05 00      [10] 6168 	ld	hl, #0x0005
   6CA7 E5            [11] 6169 	push	hl
   6CA8 2A DB 48      [16] 6170 	ld	hl, (_ctMainLoop)
   6CAB E5            [11] 6171 	push	hl
   6CAC CD AC 47      [17] 6172 	call	__modsint
   6CAF F1            [10] 6173 	pop	af
   6CB0 F1            [10] 6174 	pop	af
   6CB1 C1            [10] 6175 	pop	bc
   6CB2 7C            [ 4] 6176 	ld	a, h
   6CB3 B5            [ 4] 6177 	or	a,l
   6CB4 20 05         [12] 6178 	jr	NZ,00108$
                           6179 ;src/main.c:1408: PrintSprite(pSpr);
   6CB6 69            [ 4] 6180 	ld	l, c
   6CB7 60            [ 4] 6181 	ld	h, b
   6CB8 CD 0A 62      [17] 6182 	call	_PrintSprite
   6CBB                    6183 00108$:
   6CBB DD F9         [10] 6184 	ld	sp, ix
   6CBD DD E1         [14] 6185 	pop	ix
   6CBF C9            [10] 6186 	ret
                           6187 ;src/main.c:1425: void ExplodePlayerInDuel(u8 player) __z88dk_fastcall {
                           6188 ;	---------------------------------
                           6189 ; Function ExplodePlayerInDuel
                           6190 ; ---------------------------------
   6CC0                    6191 _ExplodePlayerInDuel::
   6CC0 DD E5         [15] 6192 	push	ix
   6CC2 DD 21 00 00   [14] 6193 	ld	ix,#0
   6CC6 DD 39         [15] 6194 	add	ix,sp
   6CC8 3B            [ 6] 6195 	dec	sp
   6CC9 DD 75 FF      [19] 6196 	ld	-1 (ix), l
                           6197 ;src/main.c:1426: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, spr[player].x, 122), cpct_px2byteM0(4, 4), SPR_W, SPR_H);
   6CCC 21 04 04      [10] 6198 	ld	hl, #0x0404
   6CCF E5            [11] 6199 	push	hl
   6CD0 CD 9D 46      [17] 6200 	call	_cpct_px2byteM0
   6CD3 4D            [ 4] 6201 	ld	c, l
   6CD4 06 00         [ 7] 6202 	ld	b, #0x00
   6CD6 DD 5E FF      [19] 6203 	ld	e,-1 (ix)
   6CD9 16 00         [ 7] 6204 	ld	d,#0x00
   6CDB 6B            [ 4] 6205 	ld	l, e
   6CDC 62            [ 4] 6206 	ld	h, d
   6CDD 29            [11] 6207 	add	hl, hl
   6CDE 19            [11] 6208 	add	hl, de
   6CDF 29            [11] 6209 	add	hl, hl
   6CE0 19            [11] 6210 	add	hl, de
   6CE1 29            [11] 6211 	add	hl, hl
   6CE2 19            [11] 6212 	add	hl, de
   6CE3 11 F3 48      [10] 6213 	ld	de, #_spr
   6CE6 19            [11] 6214 	add	hl, de
   6CE7 23            [ 6] 6215 	inc	hl
   6CE8 23            [ 6] 6216 	inc	hl
   6CE9 7E            [ 7] 6217 	ld	a, (hl)
   6CEA C6 B0         [ 7] 6218 	add	a, #0xb0
   6CEC 5F            [ 4] 6219 	ld	e, a
   6CED 3E 00         [ 7] 6220 	ld	a, #0x00
   6CEF CE D4         [ 7] 6221 	adc	a, #0xd4
   6CF1 57            [ 4] 6222 	ld	d, a
   6CF2 D5            [11] 6223 	push	de
   6CF3 FD E1         [14] 6224 	pop	iy
   6CF5 E5            [11] 6225 	push	hl
   6CF6 11 05 0C      [10] 6226 	ld	de, #0x0c05
   6CF9 D5            [11] 6227 	push	de
   6CFA C5            [11] 6228 	push	bc
   6CFB FD E5         [15] 6229 	push	iy
   6CFD CD D7 46      [17] 6230 	call	_cpct_drawSolidBox
   6D00 AF            [ 4] 6231 	xor	a, a
   6D01 F5            [11] 6232 	push	af
   6D02 33            [ 6] 6233 	inc	sp
   6D03 DD 7E FF      [19] 6234 	ld	a, -1 (ix)
   6D06 F5            [11] 6235 	push	af
   6D07 33            [ 6] 6236 	inc	sp
   6D08 CD AA 65      [17] 6237 	call	_ExplodeSprite
   6D0B F1            [10] 6238 	pop	af
   6D0C 01 04 04      [10] 6239 	ld	bc, #0x0404
   6D0F C5            [11] 6240 	push	bc
   6D10 CD 9D 46      [17] 6241 	call	_cpct_px2byteM0
   6D13 4D            [ 4] 6242 	ld	c, l
   6D14 E1            [10] 6243 	pop	hl
   6D15 06 00         [ 7] 6244 	ld	b, #0x00
   6D17 5E            [ 7] 6245 	ld	e, (hl)
   6D18 21 B0 D4      [10] 6246 	ld	hl, #0xd4b0
   6D1B 16 00         [ 7] 6247 	ld	d, #0x00
   6D1D 19            [11] 6248 	add	hl, de
   6D1E 11 05 0C      [10] 6249 	ld	de, #0x0c05
   6D21 D5            [11] 6250 	push	de
   6D22 C5            [11] 6251 	push	bc
   6D23 E5            [11] 6252 	push	hl
   6D24 CD D7 46      [17] 6253 	call	_cpct_drawSolidBox
   6D27 33            [ 6] 6254 	inc	sp
   6D28 DD E1         [14] 6255 	pop	ix
   6D2A C9            [10] 6256 	ret
                           6257 ;src/main.c:1433: void MakeDuel() {
                           6258 ;	---------------------------------
                           6259 ; Function MakeDuel
                           6260 ; ---------------------------------
   6D2B                    6261 _MakeDuel::
   6D2B DD E5         [15] 6262 	push	ix
   6D2D DD 21 00 00   [14] 6263 	ld	ix,#0
   6D31 DD 39         [15] 6264 	add	ix,sp
   6D33 F5            [11] 6265 	push	af
   6D34 3B            [ 6] 6266 	dec	sp
                           6267 ;src/main.c:1436: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 18, 80), cpct_px2byteM0(4, 4), 45, 60);
   6D35 21 04 04      [10] 6268 	ld	hl, #0x0404
   6D38 E5            [11] 6269 	push	hl
   6D39 CD 9D 46      [17] 6270 	call	_cpct_px2byteM0
   6D3C 26 00         [ 7] 6271 	ld	h, #0x00
   6D3E 01 2D 3C      [10] 6272 	ld	bc, #0x3c2d
   6D41 C5            [11] 6273 	push	bc
   6D42 E5            [11] 6274 	push	hl
   6D43 21 32 C3      [10] 6275 	ld	hl, #0xc332
   6D46 E5            [11] 6276 	push	hl
   6D47 CD D7 46      [17] 6277 	call	_cpct_drawSolidBox
                           6278 ;src/main.c:1437: PrintFrame(18,80,60,134);
   6D4A 21 3C 86      [10] 6279 	ld	hl, #0x863c
   6D4D E5            [11] 6280 	push	hl
   6D4E 21 12 50      [10] 6281 	ld	hl, #0x5012
   6D51 E5            [11] 6282 	push	hl
   6D52 CD 89 4D      [17] 6283 	call	_PrintFrame
   6D55 F1            [10] 6284 	pop	af
   6D56 F1            [10] 6285 	pop	af
                           6286 ;src/main.c:1439: spr[0].x = 23; spr[0].y = 122;
   6D57 21 F5 48      [10] 6287 	ld	hl, #(_spr + 0x0002)
   6D5A 36 17         [10] 6288 	ld	(hl), #0x17
   6D5C 21 F6 48      [10] 6289 	ld	hl, #(_spr + 0x0003)
   6D5F 36 7A         [10] 6290 	ld	(hl), #0x7a
                           6291 ;src/main.c:1441: cpct_getScreenPtr(CPCT_VMEM_START, spr[0].x, spr[0].y), SPR_W, SPR_H, g_maskTable);
   6D61 21 F6 48      [10] 6292 	ld	hl, #(_spr + 0x0003) + 0
   6D64 56            [ 7] 6293 	ld	d, (hl)
   6D65 21 F5 48      [10] 6294 	ld	hl, #(_spr + 0x0002) + 0
   6D68 5E            [ 7] 6295 	ld	e, (hl)
   6D69 D5            [11] 6296 	push	de
   6D6A 21 00 C0      [10] 6297 	ld	hl, #0xc000
   6D6D E5            [11] 6298 	push	hl
   6D6E CD B9 47      [17] 6299 	call	_cpct_getScreenPtr
   6D71 4D            [ 4] 6300 	ld	c, l
   6D72 44            [ 4] 6301 	ld	b, h
                           6302 ;src/main.c:1440: cpct_drawSpriteMaskedAlignedTable(g_sorcerer1_06,
   6D73 21 00 01      [10] 6303 	ld	hl, #_g_maskTable
   6D76 E5            [11] 6304 	push	hl
   6D77 21 05 0C      [10] 6305 	ld	hl, #0x0c05
   6D7A E5            [11] 6306 	push	hl
   6D7B C5            [11] 6307 	push	bc
   6D7C 21 D7 2D      [10] 6308 	ld	hl, #_g_sorcerer1_06
   6D7F E5            [11] 6309 	push	hl
   6D80 CD CF 47      [17] 6310 	call	_cpct_drawSpriteMaskedAlignedTable
                           6311 ;src/main.c:1443: spr[1].x = 53; spr[1].y = 122;
   6D83 21 04 49      [10] 6312 	ld	hl, #(_spr + 0x0011)
   6D86 36 35         [10] 6313 	ld	(hl), #0x35
   6D88 21 05 49      [10] 6314 	ld	hl, #(_spr + 0x0012)
   6D8B 36 7A         [10] 6315 	ld	(hl), #0x7a
                           6316 ;src/main.c:1446: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, spr[1].y), SPR_W, SPR_H, g_maskTable);
   6D8D 3A 05 49      [13] 6317 	ld	a,(#(_spr + 0x0012) + 0)
   6D90 DD 77 FF      [19] 6318 	ld	-1 (ix), a
   6D93 3A 04 49      [13] 6319 	ld	a,(#(_spr + 0x0011) + 0)
   6D96 DD 77 FE      [19] 6320 	ld	-2 (ix), a
                           6321 ;src/main.c:1444: if (TwoPlayers) {
   6D99 3A BE 48      [13] 6322 	ld	a,(#_TwoPlayers + 0)
   6D9C B7            [ 4] 6323 	or	a, a
   6D9D 28 20         [12] 6324 	jr	Z,00102$
                           6325 ;src/main.c:1446: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, spr[1].y), SPR_W, SPR_H, g_maskTable);
   6D9F DD 66 FF      [19] 6326 	ld	h, -1 (ix)
   6DA2 DD 6E FE      [19] 6327 	ld	l, -2 (ix)
   6DA5 E5            [11] 6328 	push	hl
   6DA6 21 00 C0      [10] 6329 	ld	hl, #0xc000
   6DA9 E5            [11] 6330 	push	hl
   6DAA CD B9 47      [17] 6331 	call	_cpct_getScreenPtr
                           6332 ;src/main.c:1445: cpct_drawSpriteMaskedAlignedTable(g_sorcerer2_04, 
   6DAD 01 07 2B      [10] 6333 	ld	bc, #_g_sorcerer2_04+0
   6DB0 11 00 01      [10] 6334 	ld	de, #_g_maskTable
   6DB3 D5            [11] 6335 	push	de
   6DB4 11 05 0C      [10] 6336 	ld	de, #0x0c05
   6DB7 D5            [11] 6337 	push	de
   6DB8 E5            [11] 6338 	push	hl
   6DB9 C5            [11] 6339 	push	bc
   6DBA CD CF 47      [17] 6340 	call	_cpct_drawSpriteMaskedAlignedTable
   6DBD 18 1E         [12] 6341 	jr	00103$
   6DBF                    6342 00102$:
                           6343 ;src/main.c:1451: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, spr[1].y), SPR_W, SPR_H, g_maskTable);
   6DBF DD 66 FF      [19] 6344 	ld	h, -1 (ix)
   6DC2 DD 6E FE      [19] 6345 	ld	l, -2 (ix)
   6DC5 E5            [11] 6346 	push	hl
   6DC6 21 00 C0      [10] 6347 	ld	hl, #0xc000
   6DC9 E5            [11] 6348 	push	hl
   6DCA CD B9 47      [17] 6349 	call	_cpct_getScreenPtr
                           6350 ;src/main.c:1450: cpct_drawSpriteMaskedAlignedTable(g_door_0, 
   6DCD 01 87 23      [10] 6351 	ld	bc, #_g_door_0+0
   6DD0 11 00 01      [10] 6352 	ld	de, #_g_maskTable
   6DD3 D5            [11] 6353 	push	de
   6DD4 11 05 0C      [10] 6354 	ld	de, #0x0c05
   6DD7 D5            [11] 6355 	push	de
   6DD8 E5            [11] 6356 	push	hl
   6DD9 C5            [11] 6357 	push	bc
   6DDA CD CF 47      [17] 6358 	call	_cpct_drawSpriteMaskedAlignedTable
   6DDD                    6359 00103$:
                           6360 ;src/main.c:1453: Pause(400);
   6DDD 21 90 01      [10] 6361 	ld	hl, #0x0190
   6DE0 CD 6A 4B      [17] 6362 	call	_Pause
                           6363 ;src/main.c:1457: cpct_getScreenPtr(CPCT_VMEM_START, spr[0].x, spr[0].y), SPR_W, SPR_H, g_maskTable);
   6DE3 21 F6 48      [10] 6364 	ld	hl, #(_spr + 0x0003) + 0
   6DE6 56            [ 7] 6365 	ld	d, (hl)
   6DE7 21 F5 48      [10] 6366 	ld	hl, #(_spr + 0x0002) + 0
   6DEA 5E            [ 7] 6367 	ld	e, (hl)
   6DEB D5            [11] 6368 	push	de
   6DEC 21 00 C0      [10] 6369 	ld	hl, #0xc000
   6DEF E5            [11] 6370 	push	hl
   6DF0 CD B9 47      [17] 6371 	call	_cpct_getScreenPtr
                           6372 ;src/main.c:1456: cpct_drawSpriteMaskedAlignedTable(g_sorcerer1_08, 
   6DF3 01 4F 2E      [10] 6373 	ld	bc, #_g_sorcerer1_08+0
   6DF6 11 00 01      [10] 6374 	ld	de, #_g_maskTable
   6DF9 D5            [11] 6375 	push	de
   6DFA 11 05 0C      [10] 6376 	ld	de, #0x0c05
   6DFD D5            [11] 6377 	push	de
   6DFE E5            [11] 6378 	push	hl
   6DFF C5            [11] 6379 	push	bc
   6E00 CD CF 47      [17] 6380 	call	_cpct_drawSpriteMaskedAlignedTable
                           6381 ;src/main.c:1458: spr[0].x += OBJ_W;
   6E03 3A F5 48      [13] 6382 	ld	a, (#(_spr + 0x0002) + 0)
   6E06 C6 04         [ 7] 6383 	add	a, #0x04
   6E08 32 F5 48      [13] 6384 	ld	(#(_spr + 0x0002)),a
                           6385 ;src/main.c:1459: if (TwoPlayers) {
   6E0B 3A BE 48      [13] 6386 	ld	a,(#_TwoPlayers + 0)
   6E0E B7            [ 4] 6387 	or	a, a
   6E0F 28 28         [12] 6388 	jr	Z,00148$
                           6389 ;src/main.c:1461: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, spr[1].y), SPR_W, SPR_H, g_maskTable);
   6E11 21 05 49      [10] 6390 	ld	hl, #(_spr + 0x0012) + 0
   6E14 56            [ 7] 6391 	ld	d, (hl)
   6E15 21 04 49      [10] 6392 	ld	hl, #(_spr + 0x0011) + 0
   6E18 5E            [ 7] 6393 	ld	e, (hl)
   6E19 D5            [11] 6394 	push	de
   6E1A 21 00 C0      [10] 6395 	ld	hl, #0xc000
   6E1D E5            [11] 6396 	push	hl
   6E1E CD B9 47      [17] 6397 	call	_cpct_getScreenPtr
                           6398 ;src/main.c:1460: cpct_drawSpriteMaskedAlignedTable(g_sorcerer2_08, 
   6E21 01 F7 2B      [10] 6399 	ld	bc, #_g_sorcerer2_08+0
   6E24 11 00 01      [10] 6400 	ld	de, #_g_maskTable
   6E27 D5            [11] 6401 	push	de
   6E28 11 05 0C      [10] 6402 	ld	de, #0x0c05
   6E2B D5            [11] 6403 	push	de
   6E2C E5            [11] 6404 	push	hl
   6E2D C5            [11] 6405 	push	bc
   6E2E CD CF 47      [17] 6406 	call	_cpct_drawSpriteMaskedAlignedTable
                           6407 ;src/main.c:1462: spr[1].x -= OBJ_W;
   6E31 3A 04 49      [13] 6408 	ld	a, (#(_spr + 0x0011) + 0)
   6E34 C6 FC         [ 7] 6409 	add	a, #0xfc
   6E36 32 04 49      [13] 6410 	ld	(#(_spr + 0x0011)),a
                           6411 ;src/main.c:1466: while (spr[0].x < 50)
   6E39                    6412 00148$:
   6E39                    6413 00110$:
                           6414 ;src/main.c:1441: cpct_getScreenPtr(CPCT_VMEM_START, spr[0].x, spr[0].y), SPR_W, SPR_H, g_maskTable);
   6E39 21 F5 48      [10] 6415 	ld	hl, #(_spr + 0x0002) + 0
   6E3C 4E            [ 7] 6416 	ld	c, (hl)
                           6417 ;src/main.c:1466: while (spr[0].x < 50)
   6E3D 79            [ 4] 6418 	ld	a, c
   6E3E D6 32         [ 7] 6419 	sub	a, #0x32
   6E40 D2 DC 6E      [10] 6420 	jp	NC, 00112$
                           6421 ;src/main.c:1469: spr[0].x ++;
   6E43 41            [ 4] 6422 	ld	b, c
   6E44 04            [ 4] 6423 	inc	b
   6E45 21 F5 48      [10] 6424 	ld	hl, #(_spr + 0x0002)
   6E48 70            [ 7] 6425 	ld	(hl), b
                           6426 ;src/main.c:1471: cpct_getScreenPtr(CPCT_VMEM_START, spr[0].x, 125), SHT_W, SHT_H, g_maskTable);
   6E49 3E 7D         [ 7] 6427 	ld	a, #0x7d
   6E4B F5            [11] 6428 	push	af
   6E4C 33            [ 6] 6429 	inc	sp
   6E4D C5            [11] 6430 	push	bc
   6E4E 33            [ 6] 6431 	inc	sp
   6E4F 21 00 C0      [10] 6432 	ld	hl, #0xc000
   6E52 E5            [11] 6433 	push	hl
   6E53 CD B9 47      [17] 6434 	call	_cpct_getScreenPtr
                           6435 ;src/main.c:1470: cpct_drawSpriteMaskedAlignedTable(g_magic_0, 
   6E56 01 00 01      [10] 6436 	ld	bc, #_g_maskTable
   6E59 C5            [11] 6437 	push	bc
   6E5A 01 04 08      [10] 6438 	ld	bc, #0x0804
   6E5D C5            [11] 6439 	push	bc
   6E5E E5            [11] 6440 	push	hl
   6E5F 21 01 16      [10] 6441 	ld	hl, #_g_magic_0
   6E62 E5            [11] 6442 	push	hl
   6E63 CD CF 47      [17] 6443 	call	_cpct_drawSpriteMaskedAlignedTable
                           6444 ;src/main.c:1472: if (TwoPlayers) {
   6E66 3A BE 48      [13] 6445 	ld	a,(#_TwoPlayers + 0)
   6E69 B7            [ 4] 6446 	or	a, a
   6E6A 28 26         [12] 6447 	jr	Z,00107$
                           6448 ;src/main.c:1473: spr[1].x --;
   6E6C 21 04 49      [10] 6449 	ld	hl, #(_spr + 0x0011) + 0
   6E6F 46            [ 7] 6450 	ld	b, (hl)
   6E70 05            [ 4] 6451 	dec	b
   6E71 21 04 49      [10] 6452 	ld	hl, #(_spr + 0x0011)
   6E74 70            [ 7] 6453 	ld	(hl), b
                           6454 ;src/main.c:1475: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, 125), SHT_W, SHT_H, g_maskTable);
   6E75 3E 7D         [ 7] 6455 	ld	a, #0x7d
   6E77 F5            [11] 6456 	push	af
   6E78 33            [ 6] 6457 	inc	sp
   6E79 C5            [11] 6458 	push	bc
   6E7A 33            [ 6] 6459 	inc	sp
   6E7B 21 00 C0      [10] 6460 	ld	hl, #0xc000
   6E7E E5            [11] 6461 	push	hl
   6E7F CD B9 47      [17] 6462 	call	_cpct_getScreenPtr
                           6463 ;src/main.c:1474: cpct_drawSpriteMaskedAlignedTable(g_magic_1, 
   6E82 01 00 01      [10] 6464 	ld	bc, #_g_maskTable
   6E85 C5            [11] 6465 	push	bc
   6E86 01 04 08      [10] 6466 	ld	bc, #0x0804
   6E89 C5            [11] 6467 	push	bc
   6E8A E5            [11] 6468 	push	hl
   6E8B 21 21 16      [10] 6469 	ld	hl, #_g_magic_1
   6E8E E5            [11] 6470 	push	hl
   6E8F CD CF 47      [17] 6471 	call	_cpct_drawSpriteMaskedAlignedTable
   6E92                    6472 00107$:
                           6473 ;src/main.c:1477: Pause(12);
   6E92 21 0C 00      [10] 6474 	ld	hl, #0x000c
   6E95 CD 6A 4B      [17] 6475 	call	_Pause
                           6476 ;src/main.c:1480: cpct_px2byteM0(4, 4), OBJ_W, OBJ_H);
   6E98 21 04 04      [10] 6477 	ld	hl, #0x0404
   6E9B E5            [11] 6478 	push	hl
   6E9C CD 9D 46      [17] 6479 	call	_cpct_px2byteM0
   6E9F 4D            [ 4] 6480 	ld	c, l
   6EA0 06 00         [ 7] 6481 	ld	b, #0x00
                           6482 ;src/main.c:1479: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, spr[0].x, 125), 
   6EA2 21 F5 48      [10] 6483 	ld	hl, #(_spr + 0x0002) + 0
   6EA5 5E            [ 7] 6484 	ld	e, (hl)
   6EA6 21 B0 EC      [10] 6485 	ld	hl, #0xecb0
   6EA9 16 00         [ 7] 6486 	ld	d, #0x00
   6EAB 19            [11] 6487 	add	hl, de
   6EAC 11 04 08      [10] 6488 	ld	de, #0x0804
   6EAF D5            [11] 6489 	push	de
   6EB0 C5            [11] 6490 	push	bc
   6EB1 E5            [11] 6491 	push	hl
   6EB2 CD D7 46      [17] 6492 	call	_cpct_drawSolidBox
                           6493 ;src/main.c:1481: if (TwoPlayers)
   6EB5 3A BE 48      [13] 6494 	ld	a,(#_TwoPlayers + 0)
   6EB8 B7            [ 4] 6495 	or	a, a
   6EB9 CA 39 6E      [10] 6496 	jp	Z, 00110$
                           6497 ;src/main.c:1483: cpct_px2byteM0(4, 4), OBJ_W, OBJ_H);
   6EBC 21 04 04      [10] 6498 	ld	hl, #0x0404
   6EBF E5            [11] 6499 	push	hl
   6EC0 CD 9D 46      [17] 6500 	call	_cpct_px2byteM0
   6EC3 4D            [ 4] 6501 	ld	c, l
   6EC4 06 00         [ 7] 6502 	ld	b, #0x00
                           6503 ;src/main.c:1482: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, spr[1].x, 125), 
   6EC6 21 04 49      [10] 6504 	ld	hl, #(_spr + 0x0011) + 0
   6EC9 5E            [ 7] 6505 	ld	e, (hl)
   6ECA 21 B0 EC      [10] 6506 	ld	hl, #0xecb0
   6ECD 16 00         [ 7] 6507 	ld	d, #0x00
   6ECF 19            [11] 6508 	add	hl, de
   6ED0 11 04 08      [10] 6509 	ld	de, #0x0804
   6ED3 D5            [11] 6510 	push	de
   6ED4 C5            [11] 6511 	push	bc
   6ED5 E5            [11] 6512 	push	hl
   6ED6 CD D7 46      [17] 6513 	call	_cpct_drawSolidBox
   6ED9 C3 39 6E      [10] 6514 	jp	00110$
   6EDC                    6515 00112$:
                           6516 ;src/main.c:1487: spr[0].x = 23;
   6EDC 21 F5 48      [10] 6517 	ld	hl, #(_spr + 0x0002)
   6EDF 36 17         [10] 6518 	ld	(hl), #0x17
                           6519 ;src/main.c:1489: cpct_getScreenPtr(CPCT_VMEM_START, spr[0].x, spr[0].y), SPR_W, SPR_H, g_maskTable);
   6EE1 21 F6 48      [10] 6520 	ld	hl, #(_spr + 0x0003) + 0
   6EE4 46            [ 7] 6521 	ld	b, (hl)
   6EE5 21 F5 48      [10] 6522 	ld	hl, #(_spr + 0x0002) + 0
   6EE8 4E            [ 7] 6523 	ld	c, (hl)
   6EE9 C5            [11] 6524 	push	bc
   6EEA 21 00 C0      [10] 6525 	ld	hl, #0xc000
   6EED E5            [11] 6526 	push	hl
   6EEE CD B9 47      [17] 6527 	call	_cpct_getScreenPtr
                           6528 ;src/main.c:1488: cpct_drawSpriteMaskedAlignedTable(g_sorcerer1_06, 
   6EF1 01 00 01      [10] 6529 	ld	bc, #_g_maskTable
   6EF4 C5            [11] 6530 	push	bc
   6EF5 01 05 0C      [10] 6531 	ld	bc, #0x0c05
   6EF8 C5            [11] 6532 	push	bc
   6EF9 E5            [11] 6533 	push	hl
   6EFA 21 D7 2D      [10] 6534 	ld	hl, #_g_sorcerer1_06
   6EFD E5            [11] 6535 	push	hl
   6EFE CD CF 47      [17] 6536 	call	_cpct_drawSpriteMaskedAlignedTable
                           6537 ;src/main.c:1490: spr[1].x = 53;
   6F01 21 04 49      [10] 6538 	ld	hl, #(_spr + 0x0011)
   6F04 36 35         [10] 6539 	ld	(hl), #0x35
                           6540 ;src/main.c:1492: if (TwoPlayers) {
   6F06 3A BE 48      [13] 6541 	ld	a,(#_TwoPlayers + 0)
   6F09 B7            [ 4] 6542 	or	a, a
   6F0A 28 20         [12] 6543 	jr	Z,00114$
                           6544 ;src/main.c:1494: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, spr[1].y), SPR_W, SPR_H, g_maskTable);
   6F0C 21 05 49      [10] 6545 	ld	hl, #(_spr + 0x0012) + 0
   6F0F 46            [ 7] 6546 	ld	b, (hl)
   6F10 21 04 49      [10] 6547 	ld	hl, #(_spr + 0x0011) + 0
   6F13 4E            [ 7] 6548 	ld	c, (hl)
   6F14 C5            [11] 6549 	push	bc
   6F15 21 00 C0      [10] 6550 	ld	hl, #0xc000
   6F18 E5            [11] 6551 	push	hl
   6F19 CD B9 47      [17] 6552 	call	_cpct_getScreenPtr
                           6553 ;src/main.c:1493: cpct_drawSpriteMaskedAlignedTable(g_sorcerer2_04, 
   6F1C 01 07 2B      [10] 6554 	ld	bc, #_g_sorcerer2_04+0
   6F1F 11 00 01      [10] 6555 	ld	de, #_g_maskTable
   6F22 D5            [11] 6556 	push	de
   6F23 11 05 0C      [10] 6557 	ld	de, #0x0c05
   6F26 D5            [11] 6558 	push	de
   6F27 E5            [11] 6559 	push	hl
   6F28 C5            [11] 6560 	push	bc
   6F29 CD CF 47      [17] 6561 	call	_cpct_drawSpriteMaskedAlignedTable
   6F2C                    6562 00114$:
                           6563 ;src/main.c:1498: if (potScore[0] > potScore[1]) {
   6F2C 21 C5 48      [10] 6564 	ld	hl, #_potScore+0
   6F2F 4E            [ 7] 6565 	ld	c, (hl)
   6F30 23            [ 6] 6566 	inc	hl
   6F31 5E            [ 7] 6567 	ld	e, (hl)
   6F32 7B            [ 4] 6568 	ld	a, e
   6F33 91            [ 4] 6569 	sub	a, c
   6F34 D2 B4 6F      [10] 6570 	jp	NC, 00126$
                           6571 ;src/main.c:1499: loser = 1;
   6F37 DD 36 FD 01   [19] 6572 	ld	-3 (ix), #0x01
                           6573 ;src/main.c:1500: ExplodePlayerInDuel(loser);
   6F3B 2E 01         [ 7] 6574 	ld	l, #0x01
   6F3D CD C0 6C      [17] 6575 	call	_ExplodePlayerInDuel
                           6576 ;src/main.c:1446: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, spr[1].y), SPR_W, SPR_H, g_maskTable);
   6F40 21 05 49      [10] 6577 	ld	hl, #(_spr + 0x0012) + 0
   6F43 4E            [ 7] 6578 	ld	c, (hl)
   6F44 21 04 49      [10] 6579 	ld	hl, #(_spr + 0x0011) + 0
   6F47 5E            [ 7] 6580 	ld	e, (hl)
                           6581 ;src/main.c:1501: if (TwoPlayers) {
   6F48 3A BE 48      [13] 6582 	ld	a,(#_TwoPlayers + 0)
   6F4B B7            [ 4] 6583 	or	a, a
   6F4C 28 39         [12] 6584 	jr	Z,00118$
                           6585 ;src/main.c:1504: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, spr[1].y), SPR_W, SPR_H, g_maskTable);
   6F4E 51            [ 4] 6586 	ld	d, c
   6F4F D5            [11] 6587 	push	de
   6F50 21 00 C0      [10] 6588 	ld	hl, #0xc000
   6F53 E5            [11] 6589 	push	hl
   6F54 CD B9 47      [17] 6590 	call	_cpct_getScreenPtr
                           6591 ;src/main.c:1503: cpct_drawSpriteMaskedAlignedTable(g_sorcerer2_09, 
   6F57 01 33 2C      [10] 6592 	ld	bc, #_g_sorcerer2_09+0
   6F5A 11 00 01      [10] 6593 	ld	de, #_g_maskTable
   6F5D D5            [11] 6594 	push	de
   6F5E 11 05 0C      [10] 6595 	ld	de, #0x0c05
   6F61 D5            [11] 6596 	push	de
   6F62 E5            [11] 6597 	push	hl
   6F63 C5            [11] 6598 	push	bc
   6F64 CD CF 47      [17] 6599 	call	_cpct_drawSpriteMaskedAlignedTable
                           6600 ;src/main.c:1505: PrintText("PLAYER1", 30, 90, 0);
   6F67 21 5A 00      [10] 6601 	ld	hl, #0x005a
   6F6A E5            [11] 6602 	push	hl
   6F6B 3E 1E         [ 7] 6603 	ld	a, #0x1e
   6F6D F5            [11] 6604 	push	af
   6F6E 33            [ 6] 6605 	inc	sp
   6F6F 21 9E 70      [10] 6606 	ld	hl, #___str_29
   6F72 E5            [11] 6607 	push	hl
   6F73 CD E6 4C      [17] 6608 	call	_PrintText
   6F76 F1            [10] 6609 	pop	af
   6F77 F1            [10] 6610 	pop	af
   6F78 33            [ 6] 6611 	inc	sp
                           6612 ;src/main.c:1508: if (spr[0].lives_speed < 9) spr[0].lives_speed++;
   6F79 01 FE 48      [10] 6613 	ld	bc, #_spr + 11
   6F7C 0A            [ 7] 6614 	ld	a, (bc)
   6F7D FE 09         [ 7] 6615 	cp	a, #0x09
   6F7F D2 15 70      [10] 6616 	jp	NC, 00127$
   6F82 3C            [ 4] 6617 	inc	a
   6F83 02            [ 7] 6618 	ld	(bc), a
   6F84 C3 15 70      [10] 6619 	jp	00127$
   6F87                    6620 00118$:
                           6621 ;src/main.c:1513: cpct_getScreenPtr(CPCT_VMEM_START, spr[1].x, spr[1].y), SPR_W, SPR_H, g_maskTable);
   6F87 51            [ 4] 6622 	ld	d, c
   6F88 D5            [11] 6623 	push	de
   6F89 21 00 C0      [10] 6624 	ld	hl, #0xc000
   6F8C E5            [11] 6625 	push	hl
   6F8D CD B9 47      [17] 6626 	call	_cpct_getScreenPtr
                           6627 ;src/main.c:1512: cpct_drawSpriteMaskedAlignedTable(g_door_1, 
   6F90 01 C3 23      [10] 6628 	ld	bc, #_g_door_1+0
   6F93 11 00 01      [10] 6629 	ld	de, #_g_maskTable
   6F96 D5            [11] 6630 	push	de
   6F97 11 05 0C      [10] 6631 	ld	de, #0x0c05
   6F9A D5            [11] 6632 	push	de
   6F9B E5            [11] 6633 	push	hl
   6F9C C5            [11] 6634 	push	bc
   6F9D CD CF 47      [17] 6635 	call	_cpct_drawSpriteMaskedAlignedTable
                           6636 ;src/main.c:1514: PrintText("LEVEL", 33, 90, 0);
   6FA0 21 5A 00      [10] 6637 	ld	hl, #0x005a
   6FA3 E5            [11] 6638 	push	hl
   6FA4 3E 21         [ 7] 6639 	ld	a, #0x21
   6FA6 F5            [11] 6640 	push	af
   6FA7 33            [ 6] 6641 	inc	sp
   6FA8 21 A6 70      [10] 6642 	ld	hl, #___str_30
   6FAB E5            [11] 6643 	push	hl
   6FAC CD E6 4C      [17] 6644 	call	_PrintText
   6FAF F1            [10] 6645 	pop	af
   6FB0 F1            [10] 6646 	pop	af
   6FB1 33            [ 6] 6647 	inc	sp
   6FB2 18 61         [12] 6648 	jr	00127$
   6FB4                    6649 00126$:
                           6650 ;src/main.c:1518: else if (potScore[0] < potScore[1]) {
   6FB4 79            [ 4] 6651 	ld	a, c
   6FB5 93            [ 4] 6652 	sub	a, e
   6FB6 30 47         [12] 6653 	jr	NC,00123$
                           6654 ;src/main.c:1519: loser = 0;
   6FB8 DD 36 FD 00   [19] 6655 	ld	-3 (ix), #0x00
                           6656 ;src/main.c:1520: ExplodePlayerInDuel(loser);
   6FBC 2E 00         [ 7] 6657 	ld	l, #0x00
   6FBE CD C0 6C      [17] 6658 	call	_ExplodePlayerInDuel
                           6659 ;src/main.c:1523: cpct_getScreenPtr(CPCT_VMEM_START, spr[0].x, spr[0].y), SPR_W, SPR_H, g_maskTable);
   6FC1 21 F6 48      [10] 6660 	ld	hl, #(_spr + 0x0003) + 0
   6FC4 56            [ 7] 6661 	ld	d, (hl)
   6FC5 21 F5 48      [10] 6662 	ld	hl, #(_spr + 0x0002) + 0
   6FC8 5E            [ 7] 6663 	ld	e, (hl)
   6FC9 D5            [11] 6664 	push	de
   6FCA 21 00 C0      [10] 6665 	ld	hl, #0xc000
   6FCD E5            [11] 6666 	push	hl
   6FCE CD B9 47      [17] 6667 	call	_cpct_getScreenPtr
                           6668 ;src/main.c:1522: cpct_drawSpriteMaskedAlignedTable(g_sorcerer1_09, 
   6FD1 01 8B 2E      [10] 6669 	ld	bc, #_g_sorcerer1_09+0
   6FD4 11 00 01      [10] 6670 	ld	de, #_g_maskTable
   6FD7 D5            [11] 6671 	push	de
   6FD8 11 05 0C      [10] 6672 	ld	de, #0x0c05
   6FDB D5            [11] 6673 	push	de
   6FDC E5            [11] 6674 	push	hl
   6FDD C5            [11] 6675 	push	bc
   6FDE CD CF 47      [17] 6676 	call	_cpct_drawSpriteMaskedAlignedTable
                           6677 ;src/main.c:1524: PrintText("PLAYER2", 30, 90, 0);
   6FE1 21 5A 00      [10] 6678 	ld	hl, #0x005a
   6FE4 E5            [11] 6679 	push	hl
   6FE5 3E 1E         [ 7] 6680 	ld	a, #0x1e
   6FE7 F5            [11] 6681 	push	af
   6FE8 33            [ 6] 6682 	inc	sp
   6FE9 21 AC 70      [10] 6683 	ld	hl, #___str_31
   6FEC E5            [11] 6684 	push	hl
   6FED CD E6 4C      [17] 6685 	call	_PrintText
   6FF0 F1            [10] 6686 	pop	af
   6FF1 F1            [10] 6687 	pop	af
   6FF2 33            [ 6] 6688 	inc	sp
                           6689 ;src/main.c:1527: if (spr[1].lives_speed < 9) spr[1].lives_speed++;
   6FF3 01 0D 49      [10] 6690 	ld	bc, #_spr + 26
   6FF6 0A            [ 7] 6691 	ld	a, (bc)
   6FF7 FE 09         [ 7] 6692 	cp	a, #0x09
   6FF9 30 1A         [12] 6693 	jr	NC,00127$
   6FFB 3C            [ 4] 6694 	inc	a
   6FFC 02            [ 7] 6695 	ld	(bc), a
   6FFD 18 16         [12] 6696 	jr	00127$
   6FFF                    6697 00123$:
                           6698 ;src/main.c:1531: PrintText("NOBODY", 32, 90, 0);
   6FFF 01 B4 70      [10] 6699 	ld	bc, #___str_32
   7002 21 5A 00      [10] 6700 	ld	hl, #0x005a
   7005 E5            [11] 6701 	push	hl
   7006 3E 20         [ 7] 6702 	ld	a, #0x20
   7008 F5            [11] 6703 	push	af
   7009 33            [ 6] 6704 	inc	sp
   700A C5            [11] 6705 	push	bc
   700B CD E6 4C      [17] 6706 	call	_PrintText
   700E F1            [10] 6707 	pop	af
   700F F1            [10] 6708 	pop	af
   7010 33            [ 6] 6709 	inc	sp
                           6710 ;src/main.c:1532: loser = 2;
   7011 DD 36 FD 02   [19] 6711 	ld	-3 (ix), #0x02
   7015                    6712 00127$:
                           6713 ;src/main.c:1534: if (TwoPlayers)
   7015 3A BE 48      [13] 6714 	ld	a,(#_TwoPlayers + 0)
   7018 B7            [ 4] 6715 	or	a, a
   7019 28 14         [12] 6716 	jr	Z,00129$
                           6717 ;src/main.c:1535: PrintText("WINS>", 33, 101, 0);
   701B 21 65 00      [10] 6718 	ld	hl, #0x0065
   701E E5            [11] 6719 	push	hl
   701F 3E 21         [ 7] 6720 	ld	a, #0x21
   7021 F5            [11] 6721 	push	af
   7022 33            [ 6] 6722 	inc	sp
   7023 21 BB 70      [10] 6723 	ld	hl, #___str_33
   7026 E5            [11] 6724 	push	hl
   7027 CD E6 4C      [17] 6725 	call	_PrintText
   702A F1            [10] 6726 	pop	af
   702B F1            [10] 6727 	pop	af
   702C 33            [ 6] 6728 	inc	sp
   702D 18 12         [12] 6729 	jr	00130$
   702F                    6730 00129$:
                           6731 ;src/main.c:1537: PrintText("COMPLETED", 27, 101, 0);	
   702F 21 65 00      [10] 6732 	ld	hl, #0x0065
   7032 E5            [11] 6733 	push	hl
   7033 3E 1B         [ 7] 6734 	ld	a, #0x1b
   7035 F5            [11] 6735 	push	af
   7036 33            [ 6] 6736 	inc	sp
   7037 21 C1 70      [10] 6737 	ld	hl, #___str_34
   703A E5            [11] 6738 	push	hl
   703B CD E6 4C      [17] 6739 	call	_PrintText
   703E F1            [10] 6740 	pop	af
   703F F1            [10] 6741 	pop	af
   7040 33            [ 6] 6742 	inc	sp
   7041                    6743 00130$:
                           6744 ;src/main.c:1539: Pause(1000);
   7041 21 E8 03      [10] 6745 	ld	hl, #0x03e8
   7044 CD 6A 4B      [17] 6746 	call	_Pause
                           6747 ;src/main.c:1541: if (loser < 2) // if there is no tie
   7047 DD 7E FD      [19] 6748 	ld	a, -3 (ix)
   704A D6 02         [ 7] 6749 	sub	a, #0x02
   704C 3E 00         [ 7] 6750 	ld	a, #0x00
   704E 17            [ 4] 6751 	rla
   704F DD 77 FE      [19] 6752 	ld	-2 (ix), a
   7052 B7            [ 4] 6753 	or	a, a
   7053 28 04         [12] 6754 	jr	Z,00132$
                           6755 ;src/main.c:1542: nMap++; // go to the next screen on the map
   7055 21 BA 48      [10] 6756 	ld	hl, #_nMap+0
   7058 34            [11] 6757 	inc	(hl)
   7059                    6758 00132$:
                           6759 ;src/main.c:1544: if (nMap == 12) { // screens are over. End of the game
   7059 3A BA 48      [13] 6760 	ld	a,(#_nMap + 0)
   705C D6 0C         [ 7] 6761 	sub	a, #0x0c
   705E 20 12         [12] 6762 	jr	NZ,00137$
                           6763 ;src/main.c:1545: if (loser == 0)		
   7060 DD 7E FD      [19] 6764 	ld	a, -3 (ix)
   7063 B7            [ 4] 6765 	or	a, a
   7064 20 07         [12] 6766 	jr	NZ,00134$
                           6767 ;src/main.c:1546: PrintEndGame(1); // player 2 wins
   7066 2E 01         [ 7] 6768 	ld	l, #0x01
   7068 CD 8D 50      [17] 6769 	call	_PrintEndGame
   706B 18 05         [12] 6770 	jr	00137$
   706D                    6771 00134$:
                           6772 ;src/main.c:1548: PrintEndGame(0); // player 1 wins
   706D 2E 00         [ 7] 6773 	ld	l, #0x00
   706F CD 8D 50      [17] 6774 	call	_PrintEndGame
   7072                    6775 00137$:
                           6776 ;src/main.c:1552: ResetObjData(0);
   7072 2E 00         [ 7] 6777 	ld	l, #0x00
   7074 CD 05 57      [17] 6778 	call	_ResetObjData
                           6779 ;src/main.c:1553: ResetObjData(1);
   7077 2E 01         [ 7] 6780 	ld	l, #0x01
   7079 CD 05 57      [17] 6781 	call	_ResetObjData
                           6782 ;src/main.c:1554: InitScoreboard();
   707C CD 81 54      [17] 6783 	call	_InitScoreboard
                           6784 ;src/main.c:1556: if (loser < 2 && TwoPlayers)
   707F DD 7E FE      [19] 6785 	ld	a, -2 (ix)
   7082 B7            [ 4] 6786 	or	a, a
   7083 28 11         [12] 6787 	jr	Z,00139$
   7085 3A BE 48      [13] 6788 	ld	a,(#_TwoPlayers + 0)
   7088 B7            [ 4] 6789 	or	a, a
   7089 28 0B         [12] 6790 	jr	Z,00139$
                           6791 ;src/main.c:1557: GameOver(loser); // the player who loses a duel loses a life
   708B DD 7E FD      [19] 6792 	ld	a, -3 (ix)
   708E F5            [11] 6793 	push	af
   708F 33            [ 6] 6794 	inc	sp
   7090 CD 95 8A      [17] 6795 	call	_GameOver
   7093 33            [ 6] 6796 	inc	sp
   7094 18 03         [12] 6797 	jr	00142$
   7096                    6798 00139$:
                           6799 ;src/main.c:1559: ResetData();
   7096 CD B6 89      [17] 6800 	call	_ResetData
   7099                    6801 00142$:
   7099 DD F9         [10] 6802 	ld	sp, ix
   709B DD E1         [14] 6803 	pop	ix
   709D C9            [10] 6804 	ret
   709E                    6805 ___str_29:
   709E 50 4C 41 59 45 52  6806 	.ascii "PLAYER1"
        31
   70A5 00                 6807 	.db 0x00
   70A6                    6808 ___str_30:
   70A6 4C 45 56 45 4C     6809 	.ascii "LEVEL"
   70AB 00                 6810 	.db 0x00
   70AC                    6811 ___str_31:
   70AC 50 4C 41 59 45 52  6812 	.ascii "PLAYER2"
        32
   70B3 00                 6813 	.db 0x00
   70B4                    6814 ___str_32:
   70B4 4E 4F 42 4F 44 59  6815 	.ascii "NOBODY"
   70BA 00                 6816 	.db 0x00
   70BB                    6817 ___str_33:
   70BB 57 49 4E 53 3E     6818 	.ascii "WINS>"
   70C0 00                 6819 	.db 0x00
   70C1                    6820 ___str_34:
   70C1 43 4F 4D 50 4C 45  6821 	.ascii "COMPLETED"
        54 45 44
   70CA 00                 6822 	.db 0x00
                           6823 ;src/main.c:1564: void CheckDuel() {
                           6824 ;	---------------------------------
                           6825 ; Function CheckDuel
                           6826 ; ---------------------------------
   70CB                    6827 _CheckDuel::
                           6828 ;src/main.c:1565: if ((spr[0].objNum_mov == 5 || spr[1].objNum_mov == 5) && 
   70CB 3A FF 48      [13] 6829 	ld	a, (#_spr + 12)
   70CE D6 05         [ 7] 6830 	sub	a, #0x05
   70D0 28 06         [12] 6831 	jr	Z,00105$
   70D2 3A 0E 49      [13] 6832 	ld	a, (#_spr + 27)
   70D5 D6 05         [ 7] 6833 	sub	a, #0x05
   70D7 C0            [11] 6834 	ret	NZ
   70D8                    6835 00105$:
                           6836 ;src/main.c:1566: SpriteCollision(spr[0].x, spr[0].y, &spr[1], 0)) {				
   70D8 21 F6 48      [10] 6837 	ld	hl, #_spr + 3
   70DB 56            [ 7] 6838 	ld	d, (hl)
   70DC 21 F5 48      [10] 6839 	ld	hl, #_spr + 2
   70DF 46            [ 7] 6840 	ld	b, (hl)
   70E0 AF            [ 4] 6841 	xor	a, a
   70E1 F5            [11] 6842 	push	af
   70E2 33            [ 6] 6843 	inc	sp
   70E3 21 02 49      [10] 6844 	ld	hl, #(_spr + 0x000f)
   70E6 E5            [11] 6845 	push	hl
   70E7 58            [ 4] 6846 	ld	e, b
   70E8 D5            [11] 6847 	push	de
   70E9 CD 6F 66      [17] 6848 	call	_SpriteCollision
   70EC F1            [10] 6849 	pop	af
   70ED F1            [10] 6850 	pop	af
   70EE 33            [ 6] 6851 	inc	sp
   70EF 7D            [ 4] 6852 	ld	a, l
   70F0 B7            [ 4] 6853 	or	a, a
   70F1 C8            [11] 6854 	ret	Z
                           6855 ;src/main.c:1568: for(u8 i=0;i<6;i++)
   70F2 0E 00         [ 7] 6856 	ld	c, #0x00
   70F4                    6857 00107$:
   70F4 79            [ 4] 6858 	ld	a, c
   70F5 D6 06         [ 7] 6859 	sub	a, #0x06
   70F7 30 16         [12] 6860 	jr	NC,00101$
                           6861 ;src/main.c:1569: DeleteSprite(&spr[i]);
   70F9 06 00         [ 7] 6862 	ld	b,#0x00
   70FB 69            [ 4] 6863 	ld	l, c
   70FC 60            [ 4] 6864 	ld	h, b
   70FD 29            [11] 6865 	add	hl, hl
   70FE 09            [11] 6866 	add	hl, bc
   70FF 29            [11] 6867 	add	hl, hl
   7100 09            [11] 6868 	add	hl, bc
   7101 29            [11] 6869 	add	hl, hl
   7102 09            [11] 6870 	add	hl, bc
   7103 11 F3 48      [10] 6871 	ld	de, #_spr
   7106 19            [11] 6872 	add	hl, de
   7107 C5            [11] 6873 	push	bc
   7108 CD 39 62      [17] 6874 	call	_DeleteSprite
   710B C1            [10] 6875 	pop	bc
                           6876 ;src/main.c:1568: for(u8 i=0;i<6;i++)
   710C 0C            [ 4] 6877 	inc	c
   710D 18 E5         [12] 6878 	jr	00107$
   710F                    6879 00101$:
                           6880 ;src/main.c:1570: DeleteObject(0);
   710F 2E 00         [ 7] 6881 	ld	l, #0x00
   7111 CD 92 57      [17] 6882 	call	_DeleteObject
                           6883 ;src/main.c:1571: DeleteObject(1);
   7114 2E 01         [ 7] 6884 	ld	l, #0x01
   7116 CD 92 57      [17] 6885 	call	_DeleteObject
                           6886 ;src/main.c:1573: MakeDuel();
   7119 C3 2B 6D      [10] 6887 	jp  _MakeDuel
                           6888 ;src/main.c:1591: void MakeShot(u8 x, u8 y, u8 dir) {	
                           6889 ;	---------------------------------
                           6890 ; Function MakeShot
                           6891 ; ---------------------------------
   711C                    6892 _MakeShot::
                           6893 ;src/main.c:1592: if (sht.active == FALSE) { // if there is no active shot...
   711C 01 5C 49      [10] 6894 	ld	bc, #_sht+0
   711F 21 04 00      [10] 6895 	ld	hl, #0x0004
   7122 09            [11] 6896 	add	hl, bc
   7123 7E            [ 7] 6897 	ld	a, (hl)
   7124 B7            [ 4] 6898 	or	a, a
   7125 C0            [11] 6899 	ret	NZ
                           6900 ;src/main.c:1593: sht.active = TRUE; // activate it
   7126 36 01         [10] 6901 	ld	(hl), #0x01
                           6902 ;src/main.c:1594: sht.dir = dir; // the direction of the shot is that of the sprite that shoots
   7128 21 5F 49      [10] 6903 	ld	hl, #(_sht + 0x0003)
   712B FD 21 04 00   [14] 6904 	ld	iy, #4
   712F FD 39         [15] 6905 	add	iy, sp
   7131 FD 7E 00      [19] 6906 	ld	a, 0 (iy)
   7134 77            [ 7] 6907 	ld	(hl), a
                           6908 ;src/main.c:1595: sht.y = y + 5; // adjusts to the height of the gun (hand)
   7135 59            [ 4] 6909 	ld	e, c
   7136 50            [ 4] 6910 	ld	d, b
   7137 13            [ 6] 6911 	inc	de
   7138 21 03 00      [10] 6912 	ld	hl, #3+0
   713B 39            [11] 6913 	add	hl, sp
   713C 7E            [ 7] 6914 	ld	a, (hl)
   713D C6 05         [ 7] 6915 	add	a, #0x05
   713F 12            [ 7] 6916 	ld	(de), a
                           6917 ;src/main.c:1597: if (sht.dir == D_right) sht.x = x + SPR_W;
   7140 21 04 00      [10] 6918 	ld	hl, #4+0
   7143 39            [11] 6919 	add	hl, sp
   7144 7E            [ 7] 6920 	ld	a, (hl)
   7145 D6 03         [ 7] 6921 	sub	a, #0x03
   7147 20 09         [12] 6922 	jr	NZ,00102$
   7149 21 02 00      [10] 6923 	ld	hl, #2+0
   714C 39            [11] 6924 	add	hl, sp
   714D 7E            [ 7] 6925 	ld	a, (hl)
   714E C6 05         [ 7] 6926 	add	a, #0x05
   7150 02            [ 7] 6927 	ld	(bc), a
   7151 C9            [10] 6928 	ret
   7152                    6929 00102$:
                           6930 ;src/main.c:1598: else sht.x = x - SHT_W;
   7152 21 02 00      [10] 6931 	ld	hl, #2+0
   7155 39            [11] 6932 	add	hl, sp
   7156 7E            [ 7] 6933 	ld	a, (hl)
   7157 C6 FC         [ 7] 6934 	add	a, #0xfc
   7159 02            [ 7] 6935 	ld	(bc), a
   715A C9            [10] 6936 	ret
                           6937 ;src/main.c:1604: void DeleteShot() {
                           6938 ;	---------------------------------
                           6939 ; Function DeleteShot
                           6940 ; ---------------------------------
   715B                    6941 _DeleteShot::
   715B DD E5         [15] 6942 	push	ix
   715D DD 21 00 00   [14] 6943 	ld	ix,#0
   7161 DD 39         [15] 6944 	add	ix,sp
   7163 F5            [11] 6945 	push	af
   7164 3B            [ 6] 6946 	dec	sp
                           6947 ;src/main.c:1606: 2 + (sht.px & 1), 2 + (sht.y & 3 ? 1 : 0), 
   7165 21 5D 49      [10] 6948 	ld	hl, #_sht + 1
   7168 4E            [ 7] 6949 	ld	c, (hl)
   7169 79            [ 4] 6950 	ld	a, c
   716A E6 03         [ 7] 6951 	and	a, #0x03
   716C 28 04         [12] 6952 	jr	Z,00103$
   716E 16 01         [ 7] 6953 	ld	d, #0x01
   7170 18 02         [12] 6954 	jr	00104$
   7172                    6955 00103$:
   7172 16 00         [ 7] 6956 	ld	d, #0x00
   7174                    6957 00104$:
   7174 14            [ 4] 6958 	inc	d
   7175 14            [ 4] 6959 	inc	d
   7176 21 5E 49      [10] 6960 	ld	hl, #_sht + 2
   7179 5E            [ 7] 6961 	ld	e, (hl)
   717A 7B            [ 4] 6962 	ld	a, e
   717B E6 01         [ 7] 6963 	and	a, #0x01
   717D C6 02         [ 7] 6964 	add	a, #0x02
   717F DD 77 FF      [19] 6965 	ld	-1 (ix), a
                           6966 ;src/main.c:1605: cpct_etm_drawTileBox2x4(sht.px / 2, (sht.y - ORIG_MAP_Y) / 4, 
   7182 06 00         [ 7] 6967 	ld	b, #0x00
   7184 79            [ 4] 6968 	ld	a, c
   7185 C6 E0         [ 7] 6969 	add	a, #0xe0
   7187 DD 77 FD      [19] 6970 	ld	-3 (ix), a
   718A 78            [ 4] 6971 	ld	a, b
   718B CE FF         [ 7] 6972 	adc	a, #0xff
   718D DD 77 FE      [19] 6973 	ld	-2 (ix), a
   7190 E1            [10] 6974 	pop	hl
   7191 E5            [11] 6975 	push	hl
   7192 DD CB FE 7E   [20] 6976 	bit	7, -2 (ix)
   7196 28 04         [12] 6977 	jr	Z,00105$
   7198 21 E3 FF      [10] 6978 	ld	hl, #0xffe3
   719B 09            [11] 6979 	add	hl, bc
   719C                    6980 00105$:
   719C CB 2C         [ 8] 6981 	sra	h
   719E CB 1D         [ 8] 6982 	rr	l
   71A0 CB 2C         [ 8] 6983 	sra	h
   71A2 CB 1D         [ 8] 6984 	rr	l
   71A4 4D            [ 4] 6985 	ld	c, l
   71A5 CB 3B         [ 8] 6986 	srl	e
   71A7 21 71 0F      [10] 6987 	ld	hl, #0x0f71
   71AA E5            [11] 6988 	push	hl
   71AB 21 40 C1      [10] 6989 	ld	hl, #0xc140
   71AE E5            [11] 6990 	push	hl
   71AF 3E 28         [ 7] 6991 	ld	a, #0x28
   71B1 F5            [11] 6992 	push	af
   71B2 33            [ 6] 6993 	inc	sp
   71B3 D5            [11] 6994 	push	de
   71B4 33            [ 6] 6995 	inc	sp
   71B5 DD 7E FF      [19] 6996 	ld	a, -1 (ix)
   71B8 F5            [11] 6997 	push	af
   71B9 33            [ 6] 6998 	inc	sp
   71BA 51            [ 4] 6999 	ld	d, c
   71BB D5            [11] 7000 	push	de
   71BC CD FB 44      [17] 7001 	call	_cpct_etm_drawTileBox2x4
   71BF DD F9         [10] 7002 	ld	sp, ix
   71C1 DD E1         [14] 7003 	pop	ix
   71C3 C9            [10] 7004 	ret
                           7005 ;src/main.c:1611: void PrintShot(u8* magic) __z88dk_fastcall {
                           7006 ;	---------------------------------
                           7007 ; Function PrintShot
                           7008 ; ---------------------------------
   71C4                    7009 _PrintShot::
                           7010 ;src/main.c:1612: DeleteShot(); // delete the previous shot
   71C4 E5            [11] 7011 	push	hl
   71C5 CD 5B 71      [17] 7012 	call	_DeleteShot
   71C8 C1            [10] 7013 	pop	bc
                           7014 ;src/main.c:1613: if (!sht.active) return; // outside the margins. no need to print
   71C9 3A 60 49      [13] 7015 	ld	a, (#_sht + 4)
   71CC B7            [ 4] 7016 	or	a, a
   71CD C8            [11] 7017 	ret	Z
                           7018 ;src/main.c:1615: SHT_W, SHT_H, g_maskTable);
                           7019 ;src/main.c:1614: cpct_drawSpriteMaskedAlignedTable(magic, cpct_getScreenPtr(CPCT_VMEM_START, sht.x, sht.y), 
   71CE 21 5D 49      [10] 7020 	ld	hl, #_sht + 1
   71D1 56            [ 7] 7021 	ld	d, (hl)
   71D2 3A 5C 49      [13] 7022 	ld	a, (#_sht + 0)
   71D5 C5            [11] 7023 	push	bc
   71D6 5F            [ 4] 7024 	ld	e, a
   71D7 D5            [11] 7025 	push	de
   71D8 21 00 C0      [10] 7026 	ld	hl, #0xc000
   71DB E5            [11] 7027 	push	hl
   71DC CD B9 47      [17] 7028 	call	_cpct_getScreenPtr
   71DF C1            [10] 7029 	pop	bc
   71E0 11 00 01      [10] 7030 	ld	de, #_g_maskTable
   71E3 D5            [11] 7031 	push	de
   71E4 11 04 08      [10] 7032 	ld	de, #0x0804
   71E7 D5            [11] 7033 	push	de
   71E8 E5            [11] 7034 	push	hl
   71E9 C5            [11] 7035 	push	bc
   71EA CD CF 47      [17] 7036 	call	_cpct_drawSpriteMaskedAlignedTable
   71ED C9            [10] 7037 	ret
                           7038 ;src/main.c:1620: void MoveShot() {
                           7039 ;	---------------------------------
                           7040 ; Function MoveShot
                           7041 ; ---------------------------------
   71EE                    7042 _MoveShot::
                           7043 ;src/main.c:1621: sht.px = sht.x; // save the current X coordinate
   71EE 01 5C 49      [10] 7044 	ld	bc, #_sht+0
   71F1 0A            [ 7] 7045 	ld	a, (bc)
   71F2 32 5E 49      [13] 7046 	ld	(#(_sht + 0x0002)),a
                           7047 ;src/main.c:1623: if (sht.dir == D_right)	sht.x++; else sht.x--;
   71F5 21 5F 49      [10] 7048 	ld	hl, #_sht + 3
   71F8 56            [ 7] 7049 	ld	d, (hl)
                           7050 ;src/main.c:1621: sht.px = sht.x; // save the current X coordinate
   71F9 0A            [ 7] 7051 	ld	a, (bc)
   71FA 5F            [ 4] 7052 	ld	e, a
                           7053 ;src/main.c:1623: if (sht.dir == D_right)	sht.x++; else sht.x--;
   71FB 7A            [ 4] 7054 	ld	a, d
   71FC D6 03         [ 7] 7055 	sub	a, #0x03
   71FE 20 05         [12] 7056 	jr	NZ,00102$
   7200 1C            [ 4] 7057 	inc	e
   7201 7B            [ 4] 7058 	ld	a, e
   7202 02            [ 7] 7059 	ld	(bc), a
   7203 18 03         [12] 7060 	jr	00103$
   7205                    7061 00102$:
   7205 1D            [ 4] 7062 	dec	e
   7206 7B            [ 4] 7063 	ld	a, e
   7207 02            [ 7] 7064 	ld	(bc), a
   7208                    7065 00103$:
                           7066 ;src/main.c:1621: sht.px = sht.x; // save the current X coordinate
   7208 0A            [ 7] 7067 	ld	a, (bc)
   7209 5F            [ 4] 7068 	ld	e, a
                           7069 ;src/main.c:1625: if (sht.x + SHT_W >= GLOBAL_MAX_X || sht.x <= 0) {
   720A 6B            [ 4] 7070 	ld	l, e
   720B 26 00         [ 7] 7071 	ld	h, #0x00
   720D 23            [ 6] 7072 	inc	hl
   720E 23            [ 6] 7073 	inc	hl
   720F 23            [ 6] 7074 	inc	hl
   7210 23            [ 6] 7075 	inc	hl
   7211 7D            [ 4] 7076 	ld	a, l
   7212 D6 50         [ 7] 7077 	sub	a, #0x50
   7214 7C            [ 4] 7078 	ld	a, h
   7215 17            [ 4] 7079 	rla
   7216 3F            [ 4] 7080 	ccf
   7217 1F            [ 4] 7081 	rra
   7218 DE 80         [ 7] 7082 	sbc	a, #0x80
   721A 30 03         [12] 7083 	jr	NC,00104$
   721C 7B            [ 4] 7084 	ld	a, e
   721D B7            [ 4] 7085 	or	a, a
   721E C0            [11] 7086 	ret	NZ
   721F                    7087 00104$:
                           7088 ;src/main.c:1626: sht.active = FALSE;
   721F 21 60 49      [10] 7089 	ld	hl, #(_sht + 0x0004)
   7222 36 00         [10] 7090 	ld	(hl), #0x00
                           7091 ;src/main.c:1627: DeleteShot();
   7224 C3 5B 71      [10] 7092 	jp  _DeleteShot
                           7093 ;src/main.c:1644: void PrintWizard(u8 shooting) __z88dk_fastcall {
                           7094 ;	---------------------------------
                           7095 ; Function PrintWizard
                           7096 ; ---------------------------------
   7227                    7097 _PrintWizard::
   7227 4D            [ 4] 7098 	ld	c, l
                           7099 ;src/main.c:1646: u8 x = 0;
   7228 1E 00         [ 7] 7100 	ld	e, #0x00
                           7101 ;src/main.c:1648: if (spr[6].dir == D_left) { // on the right bank facing left
   722A 3A 54 49      [13] 7102 	ld	a, (#_spr + 97)
                           7103 ;src/main.c:1649: if (shooting) wizard = g_wizard_1;
   722D D6 02         [ 7] 7104 	sub	a,#0x02
   722F 20 0F         [12] 7105 	jr	NZ,00108$
   7231 B1            [ 4] 7106 	or	a,c
   7232 28 05         [12] 7107 	jr	Z,00102$
   7234 01 E3 21      [10] 7108 	ld	bc, #_g_wizard_1+0
   7237 18 03         [12] 7109 	jr	00103$
   7239                    7110 00102$:
                           7111 ;src/main.c:1650: else wizard = g_wizard_0;
   7239 01 A7 21      [10] 7112 	ld	bc, #_g_wizard_0
   723C                    7113 00103$:
                           7114 ;src/main.c:1651: x = 75;
   723C 1E 4B         [ 7] 7115 	ld	e, #0x4b
   723E 18 0C         [12] 7116 	jr	00109$
   7240                    7117 00108$:
                           7118 ;src/main.c:1654: if (shooting) wizard = g_wizard_3; 
   7240 79            [ 4] 7119 	ld	a, c
   7241 B7            [ 4] 7120 	or	a, a
   7242 28 05         [12] 7121 	jr	Z,00105$
   7244 01 5B 22      [10] 7122 	ld	bc, #_g_wizard_3
   7247 18 03         [12] 7123 	jr	00109$
   7249                    7124 00105$:
                           7125 ;src/main.c:1655: else wizard = g_wizard_2;
   7249 01 1F 22      [10] 7126 	ld	bc, #_g_wizard_2
   724C                    7127 00109$:
                           7128 ;src/main.c:1659: SPR_W, SPR_H, g_maskTable); 							
                           7129 ;src/main.c:1658: cpct_drawSpriteMaskedAlignedTable(wizard, cpct_getScreenPtr(CPCT_VMEM_START, x, spr[6].y), 
   724C 21 50 49      [10] 7130 	ld	hl, #_spr + 93
   724F 56            [ 7] 7131 	ld	d, (hl)
   7250 C5            [11] 7132 	push	bc
   7251 D5            [11] 7133 	push	de
   7252 21 00 C0      [10] 7134 	ld	hl, #0xc000
   7255 E5            [11] 7135 	push	hl
   7256 CD B9 47      [17] 7136 	call	_cpct_getScreenPtr
   7259 C1            [10] 7137 	pop	bc
   725A 11 00 01      [10] 7138 	ld	de, #_g_maskTable
   725D D5            [11] 7139 	push	de
   725E 11 05 0C      [10] 7140 	ld	de, #0x0c05
   7261 D5            [11] 7141 	push	de
   7262 E5            [11] 7142 	push	hl
   7263 C5            [11] 7143 	push	bc
   7264 CD CF 47      [17] 7144 	call	_cpct_drawSpriteMaskedAlignedTable
   7267 C9            [10] 7145 	ret
                           7146 ;src/main.c:1664: void WizardAnim() {
                           7147 ;	---------------------------------
                           7148 ; Function WizardAnim
                           7149 ; ---------------------------------
   7268                    7150 _WizardAnim::
                           7151 ;src/main.c:1665: if (ctWizardAnim > 0) {
   7268 FD 21 DA 48   [14] 7152 	ld	iy, #_ctWizardAnim
   726C FD 7E 00      [19] 7153 	ld	a, 0 (iy)
   726F B7            [ 4] 7154 	or	a, a
   7270 C8            [11] 7155 	ret	Z
                           7156 ;src/main.c:1666: switch(ctWizardAnim++) {			
   7271 FD 4E 00      [19] 7157 	ld	c, 0 (iy)
   7274 FD 34 00      [23] 7158 	inc	0 (iy)
   7277 79            [ 4] 7159 	ld	a, c
   7278 3D            [ 4] 7160 	dec	a
   7279 28 39         [12] 7161 	jr	Z,00102$
   727B 79            [ 4] 7162 	ld	a,c
   727C FE 02         [ 7] 7163 	cp	a,#0x02
   727E 28 41         [12] 7164 	jr	Z,00104$
   7280 FE 03         [ 7] 7165 	cp	a,#0x03
   7282 28 4B         [12] 7166 	jr	Z,00106$
   7284 FE 04         [ 7] 7167 	cp	a,#0x04
   7286 28 5A         [12] 7168 	jr	Z,00107$
   7288 FE 05         [ 7] 7169 	cp	a,#0x05
   728A 28 61         [12] 7170 	jr	Z,00108$
   728C FE 06         [ 7] 7171 	cp	a,#0x06
   728E C8            [11] 7172 	ret	Z
   728F FE 07         [ 7] 7173 	cp	a,#0x07
   7291 C8            [11] 7174 	ret	Z
   7292 FE 08         [ 7] 7175 	cp	a,#0x08
   7294 C8            [11] 7176 	ret	Z
   7295 FE 09         [ 7] 7177 	cp	a,#0x09
   7297 C8            [11] 7178 	ret	Z
   7298 FE 0A         [ 7] 7179 	cp	a,#0x0a
   729A C8            [11] 7180 	ret	Z
   729B FE 0B         [ 7] 7181 	cp	a,#0x0b
   729D C8            [11] 7182 	ret	Z
   729E FE 0C         [ 7] 7183 	cp	a,#0x0c
   72A0 28 63         [12] 7184 	jr	Z,00115$
   72A2 FE 1D         [ 7] 7185 	cp	a,#0x1d
   72A4 28 0E         [12] 7186 	jr	Z,00102$
   72A6 FE 1E         [ 7] 7187 	cp	a,#0x1e
   72A8 28 17         [12] 7188 	jr	Z,00104$
   72AA FE 1F         [ 7] 7189 	cp	a,#0x1f
   72AC 28 21         [12] 7190 	jr	Z,00106$
   72AE D6 20         [ 7] 7191 	sub	a, #0x20
   72B0 28 5E         [12] 7192 	jr	Z,00116$
   72B2 18 68         [12] 7193 	jr	00117$
                           7194 ;src/main.c:1669: case 29:	{ PrintExplosion(&spr[6], 0); break; }
   72B4                    7195 00102$:
   72B4 AF            [ 4] 7196 	xor	a, a
   72B5 F5            [11] 7197 	push	af
   72B6 33            [ 6] 7198 	inc	sp
   72B7 21 4D 49      [10] 7199 	ld	hl, #(_spr + 0x005a)
   72BA E5            [11] 7200 	push	hl
   72BB CD 64 65      [17] 7201 	call	_PrintExplosion
   72BE F1            [10] 7202 	pop	af
   72BF 33            [ 6] 7203 	inc	sp
   72C0 C9            [10] 7204 	ret
                           7205 ;src/main.c:1671: case 30:	{ PrintExplosion(&spr[6], 1); break; }
   72C1                    7206 00104$:
   72C1 3E 01         [ 7] 7207 	ld	a, #0x01
   72C3 F5            [11] 7208 	push	af
   72C4 33            [ 6] 7209 	inc	sp
   72C5 21 4D 49      [10] 7210 	ld	hl, #(_spr + 0x005a)
   72C8 E5            [11] 7211 	push	hl
   72C9 CD 64 65      [17] 7212 	call	_PrintExplosion
   72CC F1            [10] 7213 	pop	af
   72CD 33            [ 6] 7214 	inc	sp
   72CE C9            [10] 7215 	ret
                           7216 ;src/main.c:1673: case 31:	{ DeleteSprite(&spr[6]); PrintExplosion(&spr[6], 0); break; }						
   72CF                    7217 00106$:
   72CF 21 4D 49      [10] 7218 	ld	hl, #(_spr + 0x005a)
   72D2 CD 39 62      [17] 7219 	call	_DeleteSprite
   72D5 AF            [ 4] 7220 	xor	a, a
   72D6 F5            [11] 7221 	push	af
   72D7 33            [ 6] 7222 	inc	sp
   72D8 21 4D 49      [10] 7223 	ld	hl, #(_spr + 0x005a)
   72DB E5            [11] 7224 	push	hl
   72DC CD 64 65      [17] 7225 	call	_PrintExplosion
   72DF F1            [10] 7226 	pop	af
   72E0 33            [ 6] 7227 	inc	sp
   72E1 C9            [10] 7228 	ret
                           7229 ;src/main.c:1675: case 4:		{ DeleteSprite(&spr[6]); PrintWizard(TRUE); break; }		
   72E2                    7230 00107$:
   72E2 21 4D 49      [10] 7231 	ld	hl, #(_spr + 0x005a)
   72E5 CD 39 62      [17] 7232 	call	_DeleteSprite
   72E8 2E 01         [ 7] 7233 	ld	l, #0x01
   72EA C3 27 72      [10] 7234 	jp  _PrintWizard
                           7235 ;src/main.c:1677: case 5:		{ MakeShot(spr[6].x, spr[6].y-3, spr[6].dir); break; }			
   72ED                    7236 00108$:
   72ED 21 54 49      [10] 7237 	ld	hl, #_spr + 97
   72F0 56            [ 7] 7238 	ld	d, (hl)
   72F1 3A 50 49      [13] 7239 	ld	a, (#_spr + 93)
   72F4 C6 FD         [ 7] 7240 	add	a, #0xfd
   72F6 4F            [ 4] 7241 	ld	c, a
   72F7 21 4F 49      [10] 7242 	ld	hl, #_spr + 92
   72FA 46            [ 7] 7243 	ld	b, (hl)
   72FB 59            [ 4] 7244 	ld	e, c
   72FC D5            [11] 7245 	push	de
   72FD C5            [11] 7246 	push	bc
   72FE 33            [ 6] 7247 	inc	sp
   72FF CD 1C 71      [17] 7248 	call	_MakeShot
   7302 F1            [10] 7249 	pop	af
   7303 33            [ 6] 7250 	inc	sp
   7304 C9            [10] 7251 	ret
                           7252 ;src/main.c:1686: case 12:    { DeleteSprite(&spr[6]); PrintWizard(FALSE); break;}
   7305                    7253 00115$:
   7305 21 4D 49      [10] 7254 	ld	hl, #(_spr + 0x005a)
   7308 CD 39 62      [17] 7255 	call	_DeleteSprite
   730B 2E 00         [ 7] 7256 	ld	l, #0x00
   730D C3 27 72      [10] 7257 	jp  _PrintWizard
                           7258 ;src/main.c:1688: case 32:    { DeleteSprite(&spr[6]); ctWizardAnim = 0; return; }
   7310                    7259 00116$:
   7310 21 4D 49      [10] 7260 	ld	hl, #(_spr + 0x005a)
   7313 CD 39 62      [17] 7261 	call	_DeleteSprite
   7316 21 DA 48      [10] 7262 	ld	hl,#_ctWizardAnim + 0
   7319 36 00         [10] 7263 	ld	(hl), #0x00
   731B C9            [10] 7264 	ret
                           7265 ;src/main.c:1690: default:	{ PrintWizard(FALSE); break;	}			
   731C                    7266 00117$:
   731C 2E 00         [ 7] 7267 	ld	l, #0x00
                           7268 ;src/main.c:1691: }		
   731E C3 27 72      [10] 7269 	jp  _PrintWizard
                           7270 ;src/main.c:1697: void MakeWizardAnim(u8 player) __z88dk_fastcall {
                           7271 ;	---------------------------------
                           7272 ; Function MakeWizardAnim
                           7273 ; ---------------------------------
   7321                    7274 _MakeWizardAnim::
   7321 4D            [ 4] 7275 	ld	c, l
                           7276 ;src/main.c:1698: if (ctInactivity[player]++ == 80 && !sht.active) {	
   7322 11 D6 48      [10] 7277 	ld	de, #_ctInactivity+0
   7325 69            [ 4] 7278 	ld	l,c
   7326 26 00         [ 7] 7279 	ld	h,#0x00
   7328 19            [11] 7280 	add	hl, de
   7329 46            [ 7] 7281 	ld	b, (hl)
   732A 58            [ 4] 7282 	ld	e, b
   732B 1C            [ 4] 7283 	inc	e
   732C 73            [ 7] 7284 	ld	(hl), e
   732D 78            [ 4] 7285 	ld	a, b
   732E D6 50         [ 7] 7286 	sub	a, #0x50
   7330 C0            [11] 7287 	ret	NZ
   7331 3A 60 49      [13] 7288 	ld	a, (#(_sht + 0x0004) + 0)
   7334 B7            [ 4] 7289 	or	a, a
   7335 C0            [11] 7290 	ret	NZ
                           7291 ;src/main.c:1699: spr[6].y = spr[6].py = spr[player].y;
   7336 11 F3 48      [10] 7292 	ld	de, #_spr+0
   7339 06 00         [ 7] 7293 	ld	b,#0x00
   733B 69            [ 4] 7294 	ld	l, c
   733C 60            [ 4] 7295 	ld	h, b
   733D 29            [11] 7296 	add	hl, hl
   733E 09            [11] 7297 	add	hl, bc
   733F 29            [11] 7298 	add	hl, hl
   7340 09            [11] 7299 	add	hl, bc
   7341 29            [11] 7300 	add	hl, hl
   7342 09            [11] 7301 	add	hl, bc
   7343 19            [11] 7302 	add	hl,de
   7344 4D            [ 4] 7303 	ld	c,l
   7345 44            [ 4] 7304 	ld	b,h
   7346 23            [ 6] 7305 	inc	hl
   7347 23            [ 6] 7306 	inc	hl
   7348 23            [ 6] 7307 	inc	hl
   7349 7E            [ 7] 7308 	ld	a, (hl)
   734A 32 52 49      [13] 7309 	ld	(#(_spr + 0x005f)),a
   734D 32 50 49      [13] 7310 	ld	(#(_spr + 0x005d)),a
                           7311 ;src/main.c:1701: if (spr[player].x < 40) {
   7350 69            [ 4] 7312 	ld	l, c
   7351 60            [ 4] 7313 	ld	h, b
   7352 23            [ 6] 7314 	inc	hl
   7353 23            [ 6] 7315 	inc	hl
   7354 4E            [ 7] 7316 	ld	c, (hl)
                           7317 ;src/main.c:1702: spr[6].x = spr[6].px = 74;		
   7355 21 5E 00      [10] 7318 	ld	hl, #0x005e
   7358 19            [11] 7319 	add	hl, de
                           7320 ;src/main.c:1703: spr[6].dir = D_left;
                           7321 ;src/main.c:1701: if (spr[player].x < 40) {
   7359 79            [ 4] 7322 	ld	a, c
   735A D6 28         [ 7] 7323 	sub	a, #0x28
   735C 30 0E         [12] 7324 	jr	NC,00102$
                           7325 ;src/main.c:1702: spr[6].x = spr[6].px = 74;		
   735E 36 4A         [10] 7326 	ld	(hl), #0x4a
   7360 21 4F 49      [10] 7327 	ld	hl, #(_spr + 0x005c)
   7363 36 4A         [10] 7328 	ld	(hl), #0x4a
                           7329 ;src/main.c:1703: spr[6].dir = D_left;
   7365 21 54 49      [10] 7330 	ld	hl, #(_spr + 0x0061)
   7368 36 02         [10] 7331 	ld	(hl), #0x02
   736A 18 0C         [12] 7332 	jr	00103$
   736C                    7333 00102$:
                           7334 ;src/main.c:1706: spr[6].x = spr[6].px = 1;
   736C 36 01         [10] 7335 	ld	(hl), #0x01
   736E 21 4F 49      [10] 7336 	ld	hl, #(_spr + 0x005c)
   7371 36 01         [10] 7337 	ld	(hl), #0x01
                           7338 ;src/main.c:1707: spr[6].dir = D_right;
   7373 21 54 49      [10] 7339 	ld	hl, #(_spr + 0x0061)
   7376 36 03         [10] 7340 	ld	(hl), #0x03
   7378                    7341 00103$:
                           7342 ;src/main.c:1709: ctWizardAnim++; // makes the wizard shooting animation start
   7378 21 DA 48      [10] 7343 	ld	hl, #_ctWizardAnim+0
   737B 34            [11] 7344 	inc	(hl)
   737C C9            [10] 7345 	ret
                           7346 ;src/main.c:1727: void MoveEnemy(TSpr *pSpr) {
                           7347 ;	---------------------------------
                           7348 ; Function MoveEnemy
                           7349 ; ---------------------------------
   737D                    7350 _MoveEnemy::
   737D DD E5         [15] 7351 	push	ix
   737F DD 21 00 00   [14] 7352 	ld	ix,#0
   7383 DD 39         [15] 7353 	add	ix,sp
   7385 21 F0 FF      [10] 7354 	ld	hl, #-16
   7388 39            [11] 7355 	add	hl, sp
   7389 F9            [ 6] 7356 	ld	sp, hl
                           7357 ;src/main.c:1728: u8 z = 255;	// multipurpose variable
   738A DD 36 F0 FF   [19] 7358 	ld	-16 (ix), #0xff
                           7359 ;src/main.c:1729: switch(pSpr->objNum_mov) {
   738E DD 7E 04      [19] 7360 	ld	a, 4 (ix)
   7391 DD 77 F1      [19] 7361 	ld	-15 (ix), a
   7394 DD 7E 05      [19] 7362 	ld	a, 5 (ix)
   7397 DD 77 F2      [19] 7363 	ld	-14 (ix), a
   739A DD 6E F1      [19] 7364 	ld	l,-15 (ix)
   739D DD 66 F2      [19] 7365 	ld	h,-14 (ix)
   73A0 11 0C 00      [10] 7366 	ld	de, #0x000c
   73A3 19            [11] 7367 	add	hl, de
   73A4 7E            [ 7] 7368 	ld	a, (hl)
   73A5 DD 77 F5      [19] 7369 	ld	-11 (ix), a
                           7370 ;src/main.c:1732: if (pSpr->dir == D_right) {
   73A8 DD 7E F1      [19] 7371 	ld	a, -15 (ix)
   73AB C6 07         [ 7] 7372 	add	a, #0x07
   73AD DD 77 F3      [19] 7373 	ld	-13 (ix), a
   73B0 DD 7E F2      [19] 7374 	ld	a, -14 (ix)
   73B3 CE 00         [ 7] 7375 	adc	a, #0x00
   73B5 DD 77 F4      [19] 7376 	ld	-12 (ix), a
                           7377 ;src/main.c:1734: if (pSpr->x < pSpr->power_maxV) 
   73B8 DD 7E F1      [19] 7378 	ld	a, -15 (ix)
   73BB C6 02         [ 7] 7379 	add	a, #0x02
   73BD DD 77 F6      [19] 7380 	ld	-10 (ix), a
   73C0 DD 7E F2      [19] 7381 	ld	a, -14 (ix)
   73C3 CE 00         [ 7] 7382 	adc	a, #0x00
   73C5 DD 77 F7      [19] 7383 	ld	-9 (ix), a
   73C8 DD 7E F1      [19] 7384 	ld	a, -15 (ix)
   73CB C6 0E         [ 7] 7385 	add	a, #0x0e
   73CD DD 77 FA      [19] 7386 	ld	-6 (ix), a
   73D0 DD 7E F2      [19] 7387 	ld	a, -14 (ix)
   73D3 CE 00         [ 7] 7388 	adc	a, #0x00
   73D5 DD 77 FB      [19] 7389 	ld	-5 (ix), a
                           7390 ;src/main.c:1735: pSpr->x = pSpr->x + pSpr->lives_speed;
   73D8 DD 7E F1      [19] 7391 	ld	a, -15 (ix)
   73DB C6 0B         [ 7] 7392 	add	a, #0x0b
   73DD DD 77 F8      [19] 7393 	ld	-8 (ix), a
   73E0 DD 7E F2      [19] 7394 	ld	a, -14 (ix)
   73E3 CE 00         [ 7] 7395 	adc	a, #0x00
   73E5 DD 77 F9      [19] 7396 	ld	-7 (ix), a
                           7397 ;src/main.c:1741: if (pSpr->x > pSpr->print_minV)  
   73E8 DD 7E F1      [19] 7398 	ld	a, -15 (ix)
   73EB C6 0D         [ 7] 7399 	add	a, #0x0d
   73ED DD 77 FC      [19] 7400 	ld	-4 (ix), a
   73F0 DD 7E F2      [19] 7401 	ld	a, -14 (ix)
   73F3 CE 00         [ 7] 7402 	adc	a, #0x00
   73F5 DD 77 FD      [19] 7403 	ld	-3 (ix), a
                           7404 ;src/main.c:1748: if (pSpr->y > (spr[0].y - SHT_H) && pSpr->y < (spr[0].y + SHT_H)) z = 0; // P1
   73F8 DD 7E F1      [19] 7405 	ld	a, -15 (ix)
   73FB C6 03         [ 7] 7406 	add	a, #0x03
   73FD DD 77 FE      [19] 7407 	ld	-2 (ix), a
   7400 DD 7E F2      [19] 7408 	ld	a, -14 (ix)
   7403 CE 00         [ 7] 7409 	adc	a, #0x00
   7405 DD 77 FF      [19] 7410 	ld	-1 (ix), a
                           7411 ;src/main.c:1729: switch(pSpr->objNum_mov) {
   7408 DD 7E F5      [19] 7412 	ld	a, -11 (ix)
   740B B7            [ 4] 7413 	or	a, a
   740C 28 1A         [12] 7414 	jr	Z,00101$
   740E DD 7E F5      [19] 7415 	ld	a, -11 (ix)
   7411 3D            [ 4] 7416 	dec	a
   7412 CA 52 75      [10] 7417 	jp	Z,00125$
   7415 DD 7E F5      [19] 7418 	ld	a, -11 (ix)
   7418 D6 02         [ 7] 7419 	sub	a, #0x02
   741A CA B7 75      [10] 7420 	jp	Z,00135$
   741D DD 7E F5      [19] 7421 	ld	a, -11 (ix)
   7420 D6 03         [ 7] 7422 	sub	a, #0x03
   7422 CA F6 76      [10] 7423 	jp	Z,00152$
   7425 C3 08 78      [10] 7424 	jp	00168$
                           7425 ;src/main.c:1731: case M_linear_X:
   7428                    7426 00101$:
                           7427 ;src/main.c:1732: if (pSpr->dir == D_right) {
   7428 DD 6E F3      [19] 7428 	ld	l,-13 (ix)
   742B DD 66 F4      [19] 7429 	ld	h,-12 (ix)
   742E 7E            [ 7] 7430 	ld	a, (hl)
                           7431 ;src/main.c:1751: if (spr[z].x > pSpr->x) pSpr->dir = D_right; 
   742F DD 6E F6      [19] 7432 	ld	l,-10 (ix)
   7432 DD 66 F7      [19] 7433 	ld	h,-9 (ix)
   7435 4E            [ 7] 7434 	ld	c, (hl)
                           7435 ;src/main.c:1732: if (pSpr->dir == D_right) {
   7436 D6 03         [ 7] 7436 	sub	a, #0x03
   7438 20 27         [12] 7437 	jr	NZ,00109$
                           7438 ;src/main.c:1734: if (pSpr->x < pSpr->power_maxV) 
   743A DD 6E FA      [19] 7439 	ld	l,-6 (ix)
   743D DD 66 FB      [19] 7440 	ld	h,-5 (ix)
   7440 46            [ 7] 7441 	ld	b, (hl)
   7441 79            [ 4] 7442 	ld	a, c
   7442 90            [ 4] 7443 	sub	a, b
   7443 30 12         [12] 7444 	jr	NC,00103$
                           7445 ;src/main.c:1735: pSpr->x = pSpr->x + pSpr->lives_speed;
   7445 DD 6E F8      [19] 7446 	ld	l,-8 (ix)
   7448 DD 66 F9      [19] 7447 	ld	h,-7 (ix)
   744B 46            [ 7] 7448 	ld	b, (hl)
   744C 79            [ 4] 7449 	ld	a, c
   744D 80            [ 4] 7450 	add	a, b
   744E DD 6E F6      [19] 7451 	ld	l,-10 (ix)
   7451 DD 66 F7      [19] 7452 	ld	h,-9 (ix)
   7454 77            [ 7] 7453 	ld	(hl), a
   7455 18 2E         [12] 7454 	jr	00110$
   7457                    7455 00103$:
                           7456 ;src/main.c:1737: pSpr->dir = D_left;
   7457 DD 6E F3      [19] 7457 	ld	l,-13 (ix)
   745A DD 66 F4      [19] 7458 	ld	h,-12 (ix)
   745D 36 02         [10] 7459 	ld	(hl), #0x02
   745F 18 24         [12] 7460 	jr	00110$
   7461                    7461 00109$:
                           7462 ;src/main.c:1741: if (pSpr->x > pSpr->print_minV)  
   7461 DD 6E FC      [19] 7463 	ld	l,-4 (ix)
   7464 DD 66 FD      [19] 7464 	ld	h,-3 (ix)
   7467 7E            [ 7] 7465 	ld	a, (hl)
   7468 91            [ 4] 7466 	sub	a, c
   7469 30 12         [12] 7467 	jr	NC,00106$
                           7468 ;src/main.c:1742: pSpr->x = pSpr->x - pSpr->lives_speed;
   746B DD 6E F8      [19] 7469 	ld	l,-8 (ix)
   746E DD 66 F9      [19] 7470 	ld	h,-7 (ix)
   7471 46            [ 7] 7471 	ld	b, (hl)
   7472 79            [ 4] 7472 	ld	a, c
   7473 90            [ 4] 7473 	sub	a, b
   7474 DD 6E F6      [19] 7474 	ld	l,-10 (ix)
   7477 DD 66 F7      [19] 7475 	ld	h,-9 (ix)
   747A 77            [ 7] 7476 	ld	(hl), a
   747B 18 08         [12] 7477 	jr	00110$
   747D                    7478 00106$:
                           7479 ;src/main.c:1744: pSpr->dir = D_right; 
   747D DD 6E F3      [19] 7480 	ld	l,-13 (ix)
   7480 DD 66 F4      [19] 7481 	ld	h,-12 (ix)
   7483 36 03         [10] 7482 	ld	(hl), #0x03
   7485                    7483 00110$:
                           7484 ;src/main.c:1747: if (pSpr->ident == WITCH) {
   7485 DD 6E F1      [19] 7485 	ld	l,-15 (ix)
   7488 DD 66 F2      [19] 7486 	ld	h,-14 (ix)
   748B 23            [ 6] 7487 	inc	hl
   748C 7E            [ 7] 7488 	ld	a, (hl)
   748D D6 06         [ 7] 7489 	sub	a, #0x06
   748F C2 08 78      [10] 7490 	jp	NZ,00168$
                           7491 ;src/main.c:1748: if (pSpr->y > (spr[0].y - SHT_H) && pSpr->y < (spr[0].y + SHT_H)) z = 0; // P1
   7492 DD 6E FE      [19] 7492 	ld	l,-2 (ix)
   7495 DD 66 FF      [19] 7493 	ld	h,-1 (ix)
   7498 5E            [ 7] 7494 	ld	e, (hl)
   7499 21 F6 48      [10] 7495 	ld	hl, #_spr + 3
   749C 4E            [ 7] 7496 	ld	c, (hl)
   749D 06 00         [ 7] 7497 	ld	b, #0x00
   749F 79            [ 4] 7498 	ld	a, c
   74A0 C6 F8         [ 7] 7499 	add	a, #0xf8
   74A2 6F            [ 4] 7500 	ld	l, a
   74A3 78            [ 4] 7501 	ld	a, b
   74A4 CE FF         [ 7] 7502 	adc	a, #0xff
   74A6 67            [ 4] 7503 	ld	h, a
   74A7 16 00         [ 7] 7504 	ld	d, #0x00
   74A9 7D            [ 4] 7505 	ld	a, l
   74AA 93            [ 4] 7506 	sub	a, e
   74AB 7C            [ 4] 7507 	ld	a, h
   74AC 9A            [ 4] 7508 	sbc	a, d
   74AD E2 B2 74      [10] 7509 	jp	PO, 00302$
   74B0 EE 80         [ 7] 7510 	xor	a, #0x80
   74B2                    7511 00302$:
   74B2 F2 CB 74      [10] 7512 	jp	P, 00115$
   74B5 21 08 00      [10] 7513 	ld	hl, #0x0008
   74B8 09            [11] 7514 	add	hl, bc
   74B9 7B            [ 4] 7515 	ld	a, e
   74BA 95            [ 4] 7516 	sub	a, l
   74BB 7A            [ 4] 7517 	ld	a, d
   74BC 9C            [ 4] 7518 	sbc	a, h
   74BD E2 C2 74      [10] 7519 	jp	PO, 00303$
   74C0 EE 80         [ 7] 7520 	xor	a, #0x80
   74C2                    7521 00303$:
   74C2 F2 CB 74      [10] 7522 	jp	P, 00115$
   74C5 DD 36 F0 00   [19] 7523 	ld	-16 (ix), #0x00
   74C9 18 2E         [12] 7524 	jr	00116$
   74CB                    7525 00115$:
                           7526 ;src/main.c:1749: else if (pSpr->y > (spr[1].y - SHT_H) && pSpr->y < (spr[1].y + SHT_H)) z = 1; // P2
   74CB 21 05 49      [10] 7527 	ld	hl, #_spr + 18
   74CE 4E            [ 7] 7528 	ld	c, (hl)
   74CF 06 00         [ 7] 7529 	ld	b, #0x00
   74D1 79            [ 4] 7530 	ld	a, c
   74D2 C6 F8         [ 7] 7531 	add	a, #0xf8
   74D4 6F            [ 4] 7532 	ld	l, a
   74D5 78            [ 4] 7533 	ld	a, b
   74D6 CE FF         [ 7] 7534 	adc	a, #0xff
   74D8 67            [ 4] 7535 	ld	h, a
   74D9 7D            [ 4] 7536 	ld	a, l
   74DA 93            [ 4] 7537 	sub	a, e
   74DB 7C            [ 4] 7538 	ld	a, h
   74DC 9A            [ 4] 7539 	sbc	a, d
   74DD E2 E2 74      [10] 7540 	jp	PO, 00304$
   74E0 EE 80         [ 7] 7541 	xor	a, #0x80
   74E2                    7542 00304$:
   74E2 F2 F9 74      [10] 7543 	jp	P, 00116$
   74E5 21 08 00      [10] 7544 	ld	hl, #0x0008
   74E8 09            [11] 7545 	add	hl, bc
   74E9 7B            [ 4] 7546 	ld	a, e
   74EA 95            [ 4] 7547 	sub	a, l
   74EB 7A            [ 4] 7548 	ld	a, d
   74EC 9C            [ 4] 7549 	sbc	a, h
   74ED E2 F2 74      [10] 7550 	jp	PO, 00305$
   74F0 EE 80         [ 7] 7551 	xor	a, #0x80
   74F2                    7552 00305$:
   74F2 F2 F9 74      [10] 7553 	jp	P, 00116$
   74F5 DD 36 F0 01   [19] 7554 	ld	-16 (ix), #0x01
   74F9                    7555 00116$:
                           7556 ;src/main.c:1750: if (z < 255) {
   74F9 DD 7E F0      [19] 7557 	ld	a, -16 (ix)
   74FC D6 FF         [ 7] 7558 	sub	a, #0xff
   74FE D2 08 78      [10] 7559 	jp	NC, 00168$
                           7560 ;src/main.c:1751: if (spr[z].x > pSpr->x) pSpr->dir = D_right; 
   7501 DD 4E F0      [19] 7561 	ld	c,-16 (ix)
   7504 06 00         [ 7] 7562 	ld	b,#0x00
   7506 69            [ 4] 7563 	ld	l, c
   7507 60            [ 4] 7564 	ld	h, b
   7508 29            [11] 7565 	add	hl, hl
   7509 09            [11] 7566 	add	hl, bc
   750A 29            [11] 7567 	add	hl, hl
   750B 09            [11] 7568 	add	hl, bc
   750C 29            [11] 7569 	add	hl, hl
   750D 09            [11] 7570 	add	hl, bc
   750E 11 F3 48      [10] 7571 	ld	de, #_spr
   7511 19            [11] 7572 	add	hl, de
   7512 23            [ 6] 7573 	inc	hl
   7513 23            [ 6] 7574 	inc	hl
   7514 4E            [ 7] 7575 	ld	c, (hl)
   7515 DD 6E F6      [19] 7576 	ld	l,-10 (ix)
   7518 DD 66 F7      [19] 7577 	ld	h,-9 (ix)
   751B 7E            [ 7] 7578 	ld	a, (hl)
   751C 91            [ 4] 7579 	sub	a, c
   751D 30 0A         [12] 7580 	jr	NC,00119$
   751F DD 6E F3      [19] 7581 	ld	l,-13 (ix)
   7522 DD 66 F4      [19] 7582 	ld	h,-12 (ix)
   7525 36 03         [10] 7583 	ld	(hl), #0x03
   7527 18 08         [12] 7584 	jr	00120$
   7529                    7585 00119$:
                           7586 ;src/main.c:1752: else pSpr->dir = D_left;
   7529 DD 6E F3      [19] 7587 	ld	l,-13 (ix)
   752C DD 66 F4      [19] 7588 	ld	h,-12 (ix)
   752F 36 02         [10] 7589 	ld	(hl), #0x02
   7531                    7590 00120$:
                           7591 ;src/main.c:1753: MakeShot(pSpr->x, pSpr->y, pSpr->dir);
   7531 DD 6E F3      [19] 7592 	ld	l,-13 (ix)
   7534 DD 66 F4      [19] 7593 	ld	h,-12 (ix)
   7537 7E            [ 7] 7594 	ld	a, (hl)
   7538 DD 6E FE      [19] 7595 	ld	l,-2 (ix)
   753B DD 66 FF      [19] 7596 	ld	h,-1 (ix)
   753E 56            [ 7] 7597 	ld	d, (hl)
   753F DD 6E F6      [19] 7598 	ld	l,-10 (ix)
   7542 DD 66 F7      [19] 7599 	ld	h,-9 (ix)
   7545 46            [ 7] 7600 	ld	b, (hl)
   7546 F5            [11] 7601 	push	af
   7547 33            [ 6] 7602 	inc	sp
   7548 58            [ 4] 7603 	ld	e, b
   7549 D5            [11] 7604 	push	de
   754A CD 1C 71      [17] 7605 	call	_MakeShot
   754D F1            [10] 7606 	pop	af
   754E 33            [ 6] 7607 	inc	sp
                           7608 ;src/main.c:1756: break;
   754F C3 08 78      [10] 7609 	jp	00168$
                           7610 ;src/main.c:1759: case M_linear_Y:
   7552                    7611 00125$:
                           7612 ;src/main.c:1760: if (pSpr->dir == D_down) {
   7552 DD 6E F3      [19] 7613 	ld	l,-13 (ix)
   7555 DD 66 F4      [19] 7614 	ld	h,-12 (ix)
   7558 46            [ 7] 7615 	ld	b, (hl)
                           7616 ;src/main.c:1748: if (pSpr->y > (spr[0].y - SHT_H) && pSpr->y < (spr[0].y + SHT_H)) z = 0; // P1
   7559 DD 6E FE      [19] 7617 	ld	l,-2 (ix)
   755C DD 66 FF      [19] 7618 	ld	h,-1 (ix)
   755F 4E            [ 7] 7619 	ld	c, (hl)
                           7620 ;src/main.c:1760: if (pSpr->dir == D_down) {
   7560 10 2B         [13] 7621 	djnz	00133$
                           7622 ;src/main.c:1762: if (pSpr->y < pSpr->power_maxV)
   7562 DD 6E FA      [19] 7623 	ld	l,-6 (ix)
   7565 DD 66 FB      [19] 7624 	ld	h,-5 (ix)
   7568 46            [ 7] 7625 	ld	b, (hl)
   7569 79            [ 4] 7626 	ld	a, c
   756A 90            [ 4] 7627 	sub	a, b
   756B 30 15         [12] 7628 	jr	NC,00127$
                           7629 ;src/main.c:1763: pSpr->y = pSpr->y + (pSpr->lives_speed*2);
   756D DD 6E F8      [19] 7630 	ld	l,-8 (ix)
   7570 DD 66 F9      [19] 7631 	ld	h,-7 (ix)
   7573 46            [ 7] 7632 	ld	b, (hl)
   7574 CB 20         [ 8] 7633 	sla	b
   7576 79            [ 4] 7634 	ld	a, c
   7577 80            [ 4] 7635 	add	a, b
   7578 DD 6E FE      [19] 7636 	ld	l,-2 (ix)
   757B DD 66 FF      [19] 7637 	ld	h,-1 (ix)
   757E 77            [ 7] 7638 	ld	(hl), a
   757F C3 08 78      [10] 7639 	jp	00168$
   7582                    7640 00127$:
                           7641 ;src/main.c:1765: pSpr->dir = D_up;
   7582 DD 6E F3      [19] 7642 	ld	l,-13 (ix)
   7585 DD 66 F4      [19] 7643 	ld	h,-12 (ix)
   7588 36 00         [10] 7644 	ld	(hl), #0x00
   758A C3 08 78      [10] 7645 	jp	00168$
   758D                    7646 00133$:
                           7647 ;src/main.c:1769: if (pSpr->y > pSpr->print_minV) 
   758D DD 6E FC      [19] 7648 	ld	l,-4 (ix)
   7590 DD 66 FD      [19] 7649 	ld	h,-3 (ix)
   7593 7E            [ 7] 7650 	ld	a, (hl)
   7594 91            [ 4] 7651 	sub	a, c
   7595 30 15         [12] 7652 	jr	NC,00130$
                           7653 ;src/main.c:1770: pSpr->y = pSpr->y - (pSpr->lives_speed*2);
   7597 DD 6E F8      [19] 7654 	ld	l,-8 (ix)
   759A DD 66 F9      [19] 7655 	ld	h,-7 (ix)
   759D 46            [ 7] 7656 	ld	b, (hl)
   759E CB 20         [ 8] 7657 	sla	b
   75A0 79            [ 4] 7658 	ld	a, c
   75A1 90            [ 4] 7659 	sub	a, b
   75A2 DD 6E FE      [19] 7660 	ld	l,-2 (ix)
   75A5 DD 66 FF      [19] 7661 	ld	h,-1 (ix)
   75A8 77            [ 7] 7662 	ld	(hl), a
   75A9 C3 08 78      [10] 7663 	jp	00168$
   75AC                    7664 00130$:
                           7665 ;src/main.c:1772: pSpr->dir = D_down; 
   75AC DD 6E F3      [19] 7666 	ld	l,-13 (ix)
   75AF DD 66 F4      [19] 7667 	ld	h,-12 (ix)
   75B2 36 01         [10] 7668 	ld	(hl), #0x01
                           7669 ;src/main.c:1774: break;
   75B4 C3 08 78      [10] 7670 	jp	00168$
                           7671 ;src/main.c:1777: case M_linear_XY:		
   75B7                    7672 00135$:
                           7673 ;src/main.c:1779: if (pSpr->dir == D_up && OnBackground(pSpr->x, pSpr->y - (pSpr->lives_speed*2)-8))
   75B7 DD 6E F3      [19] 7674 	ld	l,-13 (ix)
   75BA DD 66 F4      [19] 7675 	ld	h,-12 (ix)
   75BD 7E            [ 7] 7676 	ld	a, (hl)
   75BE B7            [ 4] 7677 	or	a, a
   75BF 20 41         [12] 7678 	jr	NZ,00149$
   75C1 DD 6E FE      [19] 7679 	ld	l,-2 (ix)
   75C4 DD 66 FF      [19] 7680 	ld	h,-1 (ix)
   75C7 4E            [ 7] 7681 	ld	c, (hl)
   75C8 DD 6E F8      [19] 7682 	ld	l,-8 (ix)
   75CB DD 66 F9      [19] 7683 	ld	h,-7 (ix)
   75CE 46            [ 7] 7684 	ld	b, (hl)
   75CF CB 20         [ 8] 7685 	sla	b
   75D1 79            [ 4] 7686 	ld	a, c
   75D2 90            [ 4] 7687 	sub	a, b
   75D3 C6 F8         [ 7] 7688 	add	a, #0xf8
   75D5 57            [ 4] 7689 	ld	d, a
   75D6 DD 6E F6      [19] 7690 	ld	l,-10 (ix)
   75D9 DD 66 F7      [19] 7691 	ld	h,-9 (ix)
   75DC 5E            [ 7] 7692 	ld	e, (hl)
   75DD D5            [11] 7693 	push	de
   75DE CD E0 4B      [17] 7694 	call	_OnBackground
   75E1 F1            [10] 7695 	pop	af
   75E2 7D            [ 4] 7696 	ld	a, l
   75E3 B7            [ 4] 7697 	or	a, a
   75E4 28 1C         [12] 7698 	jr	Z,00149$
                           7699 ;src/main.c:1780: pSpr->y = pSpr->y - (pSpr->lives_speed*2);			
   75E6 DD 6E FE      [19] 7700 	ld	l,-2 (ix)
   75E9 DD 66 FF      [19] 7701 	ld	h,-1 (ix)
   75EC 4E            [ 7] 7702 	ld	c, (hl)
   75ED DD 6E F8      [19] 7703 	ld	l,-8 (ix)
   75F0 DD 66 F9      [19] 7704 	ld	h,-7 (ix)
   75F3 46            [ 7] 7705 	ld	b, (hl)
   75F4 CB 20         [ 8] 7706 	sla	b
   75F6 79            [ 4] 7707 	ld	a, c
   75F7 90            [ 4] 7708 	sub	a, b
   75F8 DD 6E FE      [19] 7709 	ld	l,-2 (ix)
   75FB DD 66 FF      [19] 7710 	ld	h,-1 (ix)
   75FE 77            [ 7] 7711 	ld	(hl), a
   75FF C3 08 78      [10] 7712 	jp	00168$
   7602                    7713 00149$:
                           7714 ;src/main.c:1782: else if (pSpr->dir == D_down && OnBackground(pSpr->x, pSpr->y + (pSpr->lives_speed*2)+2))
   7602 DD 6E F3      [19] 7715 	ld	l,-13 (ix)
   7605 DD 66 F4      [19] 7716 	ld	h,-12 (ix)
   7608 4E            [ 7] 7717 	ld	c, (hl)
   7609 0D            [ 4] 7718 	dec	c
   760A 20 40         [12] 7719 	jr	NZ,00145$
   760C DD 6E FE      [19] 7720 	ld	l,-2 (ix)
   760F DD 66 FF      [19] 7721 	ld	h,-1 (ix)
   7612 4E            [ 7] 7722 	ld	c, (hl)
   7613 DD 6E F8      [19] 7723 	ld	l,-8 (ix)
   7616 DD 66 F9      [19] 7724 	ld	h,-7 (ix)
   7619 6E            [ 7] 7725 	ld	l, (hl)
   761A CB 25         [ 8] 7726 	sla	l
   761C 09            [11] 7727 	add	hl, bc
   761D 55            [ 4] 7728 	ld	d, l
   761E 14            [ 4] 7729 	inc	d
   761F 14            [ 4] 7730 	inc	d
   7620 DD 6E F6      [19] 7731 	ld	l,-10 (ix)
   7623 DD 66 F7      [19] 7732 	ld	h,-9 (ix)
   7626 5E            [ 7] 7733 	ld	e, (hl)
   7627 D5            [11] 7734 	push	de
   7628 CD E0 4B      [17] 7735 	call	_OnBackground
   762B F1            [10] 7736 	pop	af
   762C 7D            [ 4] 7737 	ld	a, l
   762D B7            [ 4] 7738 	or	a, a
   762E 28 1C         [12] 7739 	jr	Z,00145$
                           7740 ;src/main.c:1783: pSpr->y = pSpr->y + (pSpr->lives_speed*2);
   7630 DD 6E FE      [19] 7741 	ld	l,-2 (ix)
   7633 DD 66 FF      [19] 7742 	ld	h,-1 (ix)
   7636 4E            [ 7] 7743 	ld	c, (hl)
   7637 DD 6E F8      [19] 7744 	ld	l,-8 (ix)
   763A DD 66 F9      [19] 7745 	ld	h,-7 (ix)
   763D 46            [ 7] 7746 	ld	b, (hl)
   763E CB 20         [ 8] 7747 	sla	b
   7640 79            [ 4] 7748 	ld	a, c
   7641 80            [ 4] 7749 	add	a, b
   7642 DD 6E FE      [19] 7750 	ld	l,-2 (ix)
   7645 DD 66 FF      [19] 7751 	ld	h,-1 (ix)
   7648 77            [ 7] 7752 	ld	(hl), a
   7649 C3 08 78      [10] 7753 	jp	00168$
   764C                    7754 00145$:
                           7755 ;src/main.c:1785: else if (pSpr->dir == D_left && OnBackground((pSpr->x - pSpr->lives_speed)-3, pSpr->y))
   764C DD 6E F3      [19] 7756 	ld	l,-13 (ix)
   764F DD 66 F4      [19] 7757 	ld	h,-12 (ix)
   7652 7E            [ 7] 7758 	ld	a, (hl)
   7653 D6 02         [ 7] 7759 	sub	a, #0x02
   7655 20 3D         [12] 7760 	jr	NZ,00141$
   7657 DD 6E FE      [19] 7761 	ld	l,-2 (ix)
   765A DD 66 FF      [19] 7762 	ld	h,-1 (ix)
   765D 56            [ 7] 7763 	ld	d, (hl)
   765E DD 6E F6      [19] 7764 	ld	l,-10 (ix)
   7661 DD 66 F7      [19] 7765 	ld	h,-9 (ix)
   7664 4E            [ 7] 7766 	ld	c, (hl)
   7665 DD 6E F8      [19] 7767 	ld	l,-8 (ix)
   7668 DD 66 F9      [19] 7768 	ld	h,-7 (ix)
   766B 5E            [ 7] 7769 	ld	e, (hl)
   766C 79            [ 4] 7770 	ld	a, c
   766D 93            [ 4] 7771 	sub	a, e
   766E C6 FD         [ 7] 7772 	add	a, #0xfd
   7670 5F            [ 4] 7773 	ld	e,a
   7671 D5            [11] 7774 	push	de
   7672 CD E0 4B      [17] 7775 	call	_OnBackground
   7675 F1            [10] 7776 	pop	af
   7676 7D            [ 4] 7777 	ld	a, l
   7677 B7            [ 4] 7778 	or	a, a
   7678 28 1A         [12] 7779 	jr	Z,00141$
                           7780 ;src/main.c:1786: pSpr->x = pSpr->x - pSpr->lives_speed;
   767A DD 6E F6      [19] 7781 	ld	l,-10 (ix)
   767D DD 66 F7      [19] 7782 	ld	h,-9 (ix)
   7680 4E            [ 7] 7783 	ld	c, (hl)
   7681 DD 6E F8      [19] 7784 	ld	l,-8 (ix)
   7684 DD 66 F9      [19] 7785 	ld	h,-7 (ix)
   7687 46            [ 7] 7786 	ld	b, (hl)
   7688 79            [ 4] 7787 	ld	a, c
   7689 90            [ 4] 7788 	sub	a, b
   768A DD 6E F6      [19] 7789 	ld	l,-10 (ix)
   768D DD 66 F7      [19] 7790 	ld	h,-9 (ix)
   7690 77            [ 7] 7791 	ld	(hl), a
   7691 C3 08 78      [10] 7792 	jp	00168$
   7694                    7793 00141$:
                           7794 ;src/main.c:1788: else if (pSpr->dir == D_right && OnBackground((pSpr->x + pSpr->lives_speed)+1, pSpr->y))
   7694 DD 6E F3      [19] 7795 	ld	l,-13 (ix)
   7697 DD 66 F4      [19] 7796 	ld	h,-12 (ix)
   769A 7E            [ 7] 7797 	ld	a, (hl)
   769B D6 03         [ 7] 7798 	sub	a, #0x03
   769D 20 3C         [12] 7799 	jr	NZ,00137$
   769F DD 6E FE      [19] 7800 	ld	l,-2 (ix)
   76A2 DD 66 FF      [19] 7801 	ld	h,-1 (ix)
   76A5 56            [ 7] 7802 	ld	d, (hl)
   76A6 DD 6E F6      [19] 7803 	ld	l,-10 (ix)
   76A9 DD 66 F7      [19] 7804 	ld	h,-9 (ix)
   76AC 4E            [ 7] 7805 	ld	c, (hl)
   76AD DD 6E F8      [19] 7806 	ld	l,-8 (ix)
   76B0 DD 66 F9      [19] 7807 	ld	h,-7 (ix)
   76B3 6E            [ 7] 7808 	ld	l, (hl)
   76B4 09            [11] 7809 	add	hl, bc
   76B5 45            [ 4] 7810 	ld	b, l
   76B6 04            [ 4] 7811 	inc	b
   76B7 58            [ 4] 7812 	ld	e, b
   76B8 D5            [11] 7813 	push	de
   76B9 CD E0 4B      [17] 7814 	call	_OnBackground
   76BC F1            [10] 7815 	pop	af
   76BD 7D            [ 4] 7816 	ld	a, l
   76BE B7            [ 4] 7817 	or	a, a
   76BF 28 1A         [12] 7818 	jr	Z,00137$
                           7819 ;src/main.c:1789: pSpr->x = pSpr->x + pSpr->lives_speed;
   76C1 DD 6E F6      [19] 7820 	ld	l,-10 (ix)
   76C4 DD 66 F7      [19] 7821 	ld	h,-9 (ix)
   76C7 4E            [ 7] 7822 	ld	c, (hl)
   76C8 DD 6E F8      [19] 7823 	ld	l,-8 (ix)
   76CB DD 66 F9      [19] 7824 	ld	h,-7 (ix)
   76CE 46            [ 7] 7825 	ld	b, (hl)
   76CF 79            [ 4] 7826 	ld	a, c
   76D0 80            [ 4] 7827 	add	a, b
   76D1 DD 6E F6      [19] 7828 	ld	l,-10 (ix)
   76D4 DD 66 F7      [19] 7829 	ld	h,-9 (ix)
   76D7 77            [ 7] 7830 	ld	(hl), a
   76D8 C3 08 78      [10] 7831 	jp	00168$
   76DB                    7832 00137$:
                           7833 ;src/main.c:1791: else pSpr->dir = cpct_getRandom_lcg_u8(0) / 65; // 0-1-2-3			
   76DB 2E 00         [ 7] 7834 	ld	l, #0x00
   76DD CD BE 45      [17] 7835 	call	_cpct_getRandom_lcg_u8
   76E0 45            [ 4] 7836 	ld	b, l
   76E1 3E 41         [ 7] 7837 	ld	a, #0x41
   76E3 F5            [11] 7838 	push	af
   76E4 33            [ 6] 7839 	inc	sp
   76E5 C5            [11] 7840 	push	bc
   76E6 33            [ 6] 7841 	inc	sp
   76E7 CD 84 43      [17] 7842 	call	__divuchar
   76EA F1            [10] 7843 	pop	af
   76EB 4D            [ 4] 7844 	ld	c, l
   76EC DD 6E F3      [19] 7845 	ld	l,-13 (ix)
   76EF DD 66 F4      [19] 7846 	ld	h,-12 (ix)
   76F2 71            [ 7] 7847 	ld	(hl), c
                           7848 ;src/main.c:1792: break;
   76F3 C3 08 78      [10] 7849 	jp	00168$
                           7850 ;src/main.c:1795: case M_chaser:
   76F6                    7851 00152$:
                           7852 ;src/main.c:1796: if (ctMainLoop % pSpr->lives_speed == 0) {
   76F6 DD 6E F8      [19] 7853 	ld	l,-8 (ix)
   76F9 DD 66 F9      [19] 7854 	ld	h,-7 (ix)
   76FC 4E            [ 7] 7855 	ld	c, (hl)
   76FD 06 00         [ 7] 7856 	ld	b, #0x00
   76FF C5            [11] 7857 	push	bc
   7700 2A DB 48      [16] 7858 	ld	hl, (_ctMainLoop)
   7703 E5            [11] 7859 	push	hl
   7704 CD AC 47      [17] 7860 	call	__modsint
   7707 F1            [10] 7861 	pop	af
   7708 F1            [10] 7862 	pop	af
   7709 7C            [ 4] 7863 	ld	a, h
                           7864 ;src/main.c:1797: z = 0;
   770A B5            [ 4] 7865 	or	a,l
   770B C2 08 78      [10] 7866 	jp	NZ,00168$
   770E 4F            [ 4] 7867 	ld	c,a
                           7868 ;src/main.c:1799: if (TwoPlayers)
   770F 3A BE 48      [13] 7869 	ld	a,(#_TwoPlayers + 0)
   7712 B7            [ 4] 7870 	or	a, a
   7713 CA 99 77      [10] 7871 	jp	Z, 00154$
                           7872 ;src/main.c:1800: z = Abs(pSpr->x - spr[1].x)*2 + Abs(pSpr->y - spr[1].y) <
   7716 DD 6E F6      [19] 7873 	ld	l,-10 (ix)
   7719 DD 66 F7      [19] 7874 	ld	h,-9 (ix)
   771C 4E            [ 7] 7875 	ld	c, (hl)
   771D 06 00         [ 7] 7876 	ld	b, #0x00
   771F 21 04 49      [10] 7877 	ld	hl, #_spr + 17
   7722 5E            [ 7] 7878 	ld	e, (hl)
   7723 16 00         [ 7] 7879 	ld	d, #0x00
   7725 79            [ 4] 7880 	ld	a, c
   7726 93            [ 4] 7881 	sub	a, e
   7727 6F            [ 4] 7882 	ld	l, a
   7728 78            [ 4] 7883 	ld	a, b
   7729 9A            [ 4] 7884 	sbc	a, d
   772A 67            [ 4] 7885 	ld	h, a
   772B CD 6C 49      [17] 7886 	call	_Abs
   772E 29            [11] 7887 	add	hl, hl
   772F 4D            [ 4] 7888 	ld	c, l
   7730 44            [ 4] 7889 	ld	b, h
   7731 DD 6E FE      [19] 7890 	ld	l,-2 (ix)
   7734 DD 66 FF      [19] 7891 	ld	h,-1 (ix)
   7737 5E            [ 7] 7892 	ld	e, (hl)
   7738 16 00         [ 7] 7893 	ld	d, #0x00
   773A 21 05 49      [10] 7894 	ld	hl, #_spr + 18
   773D 6E            [ 7] 7895 	ld	l, (hl)
   773E 26 00         [ 7] 7896 	ld	h, #0x00
   7740 7B            [ 4] 7897 	ld	a, e
   7741 95            [ 4] 7898 	sub	a, l
   7742 6F            [ 4] 7899 	ld	l, a
   7743 7A            [ 4] 7900 	ld	a, d
   7744 9C            [ 4] 7901 	sbc	a, h
   7745 67            [ 4] 7902 	ld	h, a
   7746 C5            [11] 7903 	push	bc
   7747 CD 6C 49      [17] 7904 	call	_Abs
   774A C1            [10] 7905 	pop	bc
   774B 09            [11] 7906 	add	hl,bc
   774C DD 75 FC      [19] 7907 	ld	-4 (ix), l
   774F DD 74 FD      [19] 7908 	ld	-3 (ix), h
                           7909 ;src/main.c:1801: Abs(pSpr->x - spr[0].x)*2 + Abs(pSpr->y - spr[0].y);
   7752 DD 6E F6      [19] 7910 	ld	l,-10 (ix)
   7755 DD 66 F7      [19] 7911 	ld	h,-9 (ix)
   7758 4E            [ 7] 7912 	ld	c, (hl)
   7759 06 00         [ 7] 7913 	ld	b, #0x00
   775B 21 F5 48      [10] 7914 	ld	hl, #_spr + 2
   775E 5E            [ 7] 7915 	ld	e, (hl)
   775F 16 00         [ 7] 7916 	ld	d, #0x00
   7761 79            [ 4] 7917 	ld	a, c
   7762 93            [ 4] 7918 	sub	a, e
   7763 6F            [ 4] 7919 	ld	l, a
   7764 78            [ 4] 7920 	ld	a, b
   7765 9A            [ 4] 7921 	sbc	a, d
   7766 67            [ 4] 7922 	ld	h, a
   7767 CD 6C 49      [17] 7923 	call	_Abs
   776A 29            [11] 7924 	add	hl, hl
   776B 4D            [ 4] 7925 	ld	c, l
   776C 44            [ 4] 7926 	ld	b, h
   776D DD 6E FE      [19] 7927 	ld	l,-2 (ix)
   7770 DD 66 FF      [19] 7928 	ld	h,-1 (ix)
   7773 5E            [ 7] 7929 	ld	e, (hl)
   7774 16 00         [ 7] 7930 	ld	d, #0x00
   7776 21 F6 48      [10] 7931 	ld	hl, #_spr + 3
   7779 6E            [ 7] 7932 	ld	l, (hl)
   777A 26 00         [ 7] 7933 	ld	h, #0x00
   777C 7B            [ 4] 7934 	ld	a, e
   777D 95            [ 4] 7935 	sub	a, l
   777E 6F            [ 4] 7936 	ld	l, a
   777F 7A            [ 4] 7937 	ld	a, d
   7780 9C            [ 4] 7938 	sbc	a, h
   7781 67            [ 4] 7939 	ld	h, a
   7782 C5            [11] 7940 	push	bc
   7783 CD 6C 49      [17] 7941 	call	_Abs
   7786 C1            [10] 7942 	pop	bc
   7787 09            [11] 7943 	add	hl, bc
   7788 DD 7E FC      [19] 7944 	ld	a, -4 (ix)
   778B 95            [ 4] 7945 	sub	a, l
   778C DD 7E FD      [19] 7946 	ld	a, -3 (ix)
   778F 9C            [ 4] 7947 	sbc	a, h
   7790 E2 95 77      [10] 7948 	jp	PO, 00314$
   7793 EE 80         [ 7] 7949 	xor	a, #0x80
   7795                    7950 00314$:
   7795 07            [ 4] 7951 	rlca
   7796 E6 01         [ 7] 7952 	and	a,#0x01
   7798 4F            [ 4] 7953 	ld	c, a
   7799                    7954 00154$:
                           7955 ;src/main.c:1803: if (pSpr->x < spr[z].x) {
   7799 DD 6E F6      [19] 7956 	ld	l,-10 (ix)
   779C DD 66 F7      [19] 7957 	ld	h,-9 (ix)
   779F 46            [ 7] 7958 	ld	b, (hl)
   77A0 11 F3 48      [10] 7959 	ld	de, #_spr+0
   77A3 D5            [11] 7960 	push	de
   77A4 59            [ 4] 7961 	ld	e,c
   77A5 16 00         [ 7] 7962 	ld	d,#0x00
   77A7 6B            [ 4] 7963 	ld	l, e
   77A8 62            [ 4] 7964 	ld	h, d
   77A9 29            [11] 7965 	add	hl, hl
   77AA 19            [11] 7966 	add	hl, de
   77AB 29            [11] 7967 	add	hl, hl
   77AC 19            [11] 7968 	add	hl, de
   77AD 29            [11] 7969 	add	hl, hl
   77AE 19            [11] 7970 	add	hl, de
   77AF D1            [10] 7971 	pop	de
   77B0 19            [11] 7972 	add	hl,de
   77B1 5D            [ 4] 7973 	ld	e,l
   77B2 54            [ 4] 7974 	ld	d,h
   77B3 23            [ 6] 7975 	inc	hl
   77B4 23            [ 6] 7976 	inc	hl
   77B5 4E            [ 7] 7977 	ld	c, (hl)
   77B6 78            [ 4] 7978 	ld	a, b
   77B7 91            [ 4] 7979 	sub	a, c
   77B8 30 12         [12] 7980 	jr	NC,00158$
                           7981 ;src/main.c:1804: pSpr->x++;
   77BA 04            [ 4] 7982 	inc	b
   77BB DD 6E F6      [19] 7983 	ld	l,-10 (ix)
   77BE DD 66 F7      [19] 7984 	ld	h,-9 (ix)
   77C1 70            [ 7] 7985 	ld	(hl), b
                           7986 ;src/main.c:1805: pSpr->dir = D_right;
   77C2 DD 6E F3      [19] 7987 	ld	l,-13 (ix)
   77C5 DD 66 F4      [19] 7988 	ld	h,-12 (ix)
   77C8 36 03         [10] 7989 	ld	(hl), #0x03
   77CA 18 14         [12] 7990 	jr	00159$
   77CC                    7991 00158$:
                           7992 ;src/main.c:1808: else if (pSpr->x > spr[z].x) {
   77CC 79            [ 4] 7993 	ld	a, c
   77CD 90            [ 4] 7994 	sub	a, b
   77CE 30 10         [12] 7995 	jr	NC,00159$
                           7996 ;src/main.c:1809: pSpr->x--;
   77D0 05            [ 4] 7997 	dec	b
   77D1 DD 6E F6      [19] 7998 	ld	l,-10 (ix)
   77D4 DD 66 F7      [19] 7999 	ld	h,-9 (ix)
   77D7 70            [ 7] 8000 	ld	(hl), b
                           8001 ;src/main.c:1810: pSpr->dir = D_left;
   77D8 DD 6E F3      [19] 8002 	ld	l,-13 (ix)
   77DB DD 66 F4      [19] 8003 	ld	h,-12 (ix)
   77DE 36 02         [10] 8004 	ld	(hl), #0x02
   77E0                    8005 00159$:
                           8006 ;src/main.c:1813: if (pSpr->y < spr[z].y) {
   77E0 DD 6E FE      [19] 8007 	ld	l,-2 (ix)
   77E3 DD 66 FF      [19] 8008 	ld	h,-1 (ix)
   77E6 4E            [ 7] 8009 	ld	c, (hl)
   77E7 EB            [ 4] 8010 	ex	de,hl
   77E8 23            [ 6] 8011 	inc	hl
   77E9 23            [ 6] 8012 	inc	hl
   77EA 23            [ 6] 8013 	inc	hl
   77EB 46            [ 7] 8014 	ld	b, (hl)
   77EC 79            [ 4] 8015 	ld	a, c
   77ED 90            [ 4] 8016 	sub	a, b
   77EE 30 0B         [12] 8017 	jr	NC,00163$
                           8018 ;src/main.c:1814: pSpr->y+=2;
   77F0 0C            [ 4] 8019 	inc	c
   77F1 0C            [ 4] 8020 	inc	c
   77F2 DD 6E FE      [19] 8021 	ld	l,-2 (ix)
   77F5 DD 66 FF      [19] 8022 	ld	h,-1 (ix)
   77F8 71            [ 7] 8023 	ld	(hl), c
   77F9 18 0D         [12] 8024 	jr	00168$
   77FB                    8025 00163$:
                           8026 ;src/main.c:1817: else if (pSpr->y > spr[z].y) {
   77FB 78            [ 4] 8027 	ld	a, b
   77FC 91            [ 4] 8028 	sub	a, c
   77FD 30 09         [12] 8029 	jr	NC,00168$
                           8030 ;src/main.c:1818: pSpr->y-=2;
   77FF 0D            [ 4] 8031 	dec	c
   7800 0D            [ 4] 8032 	dec	c
   7801 DD 6E FE      [19] 8033 	ld	l,-2 (ix)
   7804 DD 66 FF      [19] 8034 	ld	h,-1 (ix)
   7807 71            [ 7] 8035 	ld	(hl), c
                           8036 ;src/main.c:1822: }
   7808                    8037 00168$:
   7808 DD F9         [10] 8038 	ld	sp, ix
   780A DD E1         [14] 8039 	pop	ix
   780C C9            [10] 8040 	ret
                           8041 ;src/main.c:1827: void SetEnemyParams(u8 i, u8 ident, u8 mov, u8 dir, u8 speed, u8 x, u8 y, u8 minV, u8 maxV) {
                           8042 ;	---------------------------------
                           8043 ; Function SetEnemyParams
                           8044 ; ---------------------------------
   780D                    8045 _SetEnemyParams::
   780D DD E5         [15] 8046 	push	ix
   780F DD 21 00 00   [14] 8047 	ld	ix,#0
   7813 DD 39         [15] 8048 	add	ix,sp
                           8049 ;src/main.c:1828: spr[i].num = i;
   7815 01 F3 48      [10] 8050 	ld	bc, #_spr+0
   7818 DD 5E 04      [19] 8051 	ld	e,4 (ix)
   781B 16 00         [ 7] 8052 	ld	d,#0x00
   781D 6B            [ 4] 8053 	ld	l, e
   781E 62            [ 4] 8054 	ld	h, d
   781F 29            [11] 8055 	add	hl, hl
   7820 19            [11] 8056 	add	hl, de
   7821 29            [11] 8057 	add	hl, hl
   7822 19            [11] 8058 	add	hl, de
   7823 29            [11] 8059 	add	hl, hl
   7824 19            [11] 8060 	add	hl, de
   7825 09            [11] 8061 	add	hl,bc
   7826 4D            [ 4] 8062 	ld	c, l
   7827 44            [ 4] 8063 	ld	b, h
   7828 DD 7E 04      [19] 8064 	ld	a, 4 (ix)
   782B 02            [ 7] 8065 	ld	(bc), a
                           8066 ;src/main.c:1829: spr[i].ident = ident; 
   782C 59            [ 4] 8067 	ld	e, c
   782D 50            [ 4] 8068 	ld	d, b
   782E 13            [ 6] 8069 	inc	de
   782F DD 7E 05      [19] 8070 	ld	a, 5 (ix)
   7832 12            [ 7] 8071 	ld	(de), a
                           8072 ;src/main.c:1830: spr[i].objNum_mov = mov;	 
   7833 21 0C 00      [10] 8073 	ld	hl, #0x000c
   7836 09            [11] 8074 	add	hl, bc
   7837 DD 7E 06      [19] 8075 	ld	a, 6 (ix)
   783A 77            [ 7] 8076 	ld	(hl), a
                           8077 ;src/main.c:1831: spr[i].dir = dir; 
   783B 21 07 00      [10] 8078 	ld	hl, #0x0007
   783E 09            [11] 8079 	add	hl, bc
   783F DD 7E 07      [19] 8080 	ld	a, 7 (ix)
   7842 77            [ 7] 8081 	ld	(hl), a
                           8082 ;src/main.c:1832: spr[i].lives_speed = speed;
   7843 21 0B 00      [10] 8083 	ld	hl, #0x000b
   7846 09            [11] 8084 	add	hl, bc
   7847 DD 7E 08      [19] 8085 	ld	a, 8 (ix)
   784A 77            [ 7] 8086 	ld	(hl), a
                           8087 ;src/main.c:1833: spr[i].x = spr[i].px = x;
   784B 59            [ 4] 8088 	ld	e, c
   784C 50            [ 4] 8089 	ld	d, b
   784D 13            [ 6] 8090 	inc	de
   784E 13            [ 6] 8091 	inc	de
   784F 21 04 00      [10] 8092 	ld	hl, #0x0004
   7852 09            [11] 8093 	add	hl, bc
   7853 DD 7E 09      [19] 8094 	ld	a, 9 (ix)
   7856 77            [ 7] 8095 	ld	(hl), a
   7857 DD 7E 09      [19] 8096 	ld	a, 9 (ix)
   785A 12            [ 7] 8097 	ld	(de), a
                           8098 ;src/main.c:1834: spr[i].y = spr[i].py = y;
   785B 59            [ 4] 8099 	ld	e, c
   785C 50            [ 4] 8100 	ld	d, b
   785D 13            [ 6] 8101 	inc	de
   785E 13            [ 6] 8102 	inc	de
   785F 13            [ 6] 8103 	inc	de
   7860 21 05 00      [10] 8104 	ld	hl, #0x0005
   7863 09            [11] 8105 	add	hl, bc
   7864 DD 7E 0A      [19] 8106 	ld	a, 10 (ix)
   7867 77            [ 7] 8107 	ld	(hl), a
   7868 DD 7E 0A      [19] 8108 	ld	a, 10 (ix)
   786B 12            [ 7] 8109 	ld	(de), a
                           8110 ;src/main.c:1835: spr[i].print_minV = minV;
   786C 21 0D 00      [10] 8111 	ld	hl, #0x000d
   786F 09            [11] 8112 	add	hl, bc
   7870 DD 7E 0B      [19] 8113 	ld	a, 11 (ix)
   7873 77            [ 7] 8114 	ld	(hl), a
                           8115 ;src/main.c:1836: spr[i].power_maxV = maxV;
   7874 21 0E 00      [10] 8116 	ld	hl, #0x000e
   7877 09            [11] 8117 	add	hl, bc
   7878 DD 7E 0C      [19] 8118 	ld	a, 12 (ix)
   787B 77            [ 7] 8119 	ld	(hl), a
   787C DD E1         [14] 8120 	pop	ix
   787E C9            [10] 8121 	ret
                           8122 ;src/main.c:1846: void SetEnemies() {
                           8123 ;	---------------------------------
                           8124 ; Function SetEnemies
                           8125 ; ---------------------------------
   787F                    8126 _SetEnemies::
                           8127 ;src/main.c:1847: switch (nMap) {
   787F 3E 0B         [ 7] 8128 	ld	a, #0x0b
   7881 FD 21 BA 48   [14] 8129 	ld	iy, #_nMap
   7885 FD 96 00      [19] 8130 	sub	a, 0 (iy)
   7888 DA 5E 81      [10] 8131 	jp	C, 00113$
   788B FD 4E 00      [19] 8132 	ld	c, 0 (iy)
   788E 06 00         [ 7] 8133 	ld	b, #0x00
   7890 21 97 78      [10] 8134 	ld	hl, #00126$
   7893 09            [11] 8135 	add	hl, bc
   7894 09            [11] 8136 	add	hl, bc
   7895 09            [11] 8137 	add	hl, bc
   7896 E9            [ 4] 8138 	jp	(hl)
   7897                    8139 00126$:
   7897 C3 BB 78      [10] 8140 	jp	00101$
   789A C3 72 79      [10] 8141 	jp	00102$
   789D C3 2A 7A      [10] 8142 	jp	00103$
   78A0 C3 E3 7A      [10] 8143 	jp	00104$
   78A3 C3 9C 7B      [10] 8144 	jp	00105$
   78A6 C3 56 7C      [10] 8145 	jp	00106$
   78A9 C3 0F 7D      [10] 8146 	jp	00107$
   78AC C3 C9 7D      [10] 8147 	jp	00108$
   78AF C3 81 7E      [10] 8148 	jp	00109$
   78B2 C3 3A 7F      [10] 8149 	jp	00110$
   78B5 C3 F2 7F      [10] 8150 	jp	00111$
   78B8 C3 A8 80      [10] 8151 	jp	00112$
                           8152 ;src/main.c:1849: case 0: {			 
   78BB                    8153 00101$:
                           8154 ;src/main.c:1851: SetEnemyParams(2, SENTINEL,	M_linear_X, 	D_left,     1, 73, 158,   2,  73);						
   78BB 21 02 49      [10] 8155 	ld	hl, #0x4902
   78BE E5            [11] 8156 	push	hl
   78BF 21 49 9E      [10] 8157 	ld	hl, #0x9e49
   78C2 E5            [11] 8158 	push	hl
   78C3 21 02 01      [10] 8159 	ld	hl, #0x0102
   78C6 E5            [11] 8160 	push	hl
   78C7 26 00         [ 7] 8161 	ld	h, #0x00
   78C9 E5            [11] 8162 	push	hl
   78CA 3E 02         [ 7] 8163 	ld	a, #0x02
   78CC F5            [11] 8164 	push	af
   78CD 33            [ 6] 8165 	inc	sp
   78CE CD 0D 78      [17] 8166 	call	_SetEnemyParams
   78D1 21 09 00      [10] 8167 	ld	hl, #9
   78D4 39            [11] 8168 	add	hl, sp
   78D5 F9            [ 6] 8169 	ld	sp, hl
                           8170 ;src/main.c:1852: SetEnemyParams(3, SENTINEL,	M_linear_X, 	D_right,    1,  3, 110,   2,  73);
   78D6 21 02 49      [10] 8171 	ld	hl, #0x4902
   78D9 E5            [11] 8172 	push	hl
   78DA 21 03 6E      [10] 8173 	ld	hl, #0x6e03
   78DD E5            [11] 8174 	push	hl
   78DE 26 01         [ 7] 8175 	ld	h, #0x01
   78E0 E5            [11] 8176 	push	hl
   78E1 21 02 00      [10] 8177 	ld	hl, #0x0002
   78E4 E5            [11] 8178 	push	hl
   78E5 3E 03         [ 7] 8179 	ld	a, #0x03
   78E7 F5            [11] 8180 	push	af
   78E8 33            [ 6] 8181 	inc	sp
   78E9 CD 0D 78      [17] 8182 	call	_SetEnemyParams
   78EC 21 09 00      [10] 8183 	ld	hl, #9
   78EF 39            [11] 8184 	add	hl, sp
   78F0 F9            [ 6] 8185 	ld	sp, hl
                           8186 ;src/main.c:1853: SetEnemyParams(4, SENTINEL,	M_linear_X, 	D_left,     1, 73,  62,  40,  73);
   78F1 21 28 49      [10] 8187 	ld	hl, #0x4928
   78F4 E5            [11] 8188 	push	hl
   78F5 21 49 3E      [10] 8189 	ld	hl, #0x3e49
   78F8 E5            [11] 8190 	push	hl
   78F9 21 02 01      [10] 8191 	ld	hl, #0x0102
   78FC E5            [11] 8192 	push	hl
   78FD 26 00         [ 7] 8193 	ld	h, #0x00
   78FF E5            [11] 8194 	push	hl
   7900 3E 04         [ 7] 8195 	ld	a, #0x04
   7902 F5            [11] 8196 	push	af
   7903 33            [ 6] 8197 	inc	sp
   7904 CD 0D 78      [17] 8198 	call	_SetEnemyParams
   7907 21 09 00      [10] 8199 	ld	hl, #9
   790A 39            [11] 8200 	add	hl, sp
   790B F9            [ 6] 8201 	ld	sp, hl
                           8202 ;src/main.c:1854: SetEnemyParams(5, SENTINEL,	M_linear_X, 	D_right,    1,  2,  62,   2,  35);
   790C 21 02 23      [10] 8203 	ld	hl, #0x2302
   790F E5            [11] 8204 	push	hl
   7910 26 3E         [ 7] 8205 	ld	h, #0x3e
   7912 E5            [11] 8206 	push	hl
   7913 21 03 01      [10] 8207 	ld	hl, #0x0103
   7916 E5            [11] 8208 	push	hl
   7917 21 02 00      [10] 8209 	ld	hl, #0x0002
   791A E5            [11] 8210 	push	hl
   791B 3E 05         [ 7] 8211 	ld	a, #0x05
   791D F5            [11] 8212 	push	af
   791E 33            [ 6] 8213 	inc	sp
   791F CD 0D 78      [17] 8214 	call	_SetEnemyParams
   7922 21 09 00      [10] 8215 	ld	hl, #9
   7925 39            [11] 8216 	add	hl, sp
   7926 F9            [ 6] 8217 	ld	sp, hl
                           8218 ;src/main.c:1856: spr[0].x = spr[0].px = 6; 
   7927 21 F7 48      [10] 8219 	ld	hl, #(_spr + 0x0004)
   792A 36 06         [10] 8220 	ld	(hl), #0x06
   792C 21 F5 48      [10] 8221 	ld	hl, #(_spr + 0x0002)
   792F 36 06         [10] 8222 	ld	(hl), #0x06
                           8223 ;src/main.c:1857: spr[0].y = spr[0].py = 178;			
   7931 21 F8 48      [10] 8224 	ld	hl, #(_spr + 0x0005)
   7934 36 B2         [10] 8225 	ld	(hl), #0xb2
   7936 21 F6 48      [10] 8226 	ld	hl, #(_spr + 0x0003)
   7939 36 B2         [10] 8227 	ld	(hl), #0xb2
                           8228 ;src/main.c:1859: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk0_end);
   793B 21 5B 3C      [10] 8229 	ld	hl, #(_mappk0 + 0x0279)
   793E E5            [11] 8230 	push	hl
   793F 21 00 16      [10] 8231 	ld	hl, #0x1600
   7942 E5            [11] 8232 	push	hl
   7943 CD 44 46      [17] 8233 	call	_cpct_zx7b_decrunch_s
                           8234 ;src/main.c:1861: lName = "1;1@@GARDENS";
   7946 21 7C 81      [10] 8235 	ld	hl, #___str_35+0
   7949 22 BC 48      [16] 8236 	ld	(_lName), hl
                           8237 ;src/main.c:1863: doorKey[0] = 4;	// toad snot
   794C 21 C9 48      [10] 8238 	ld	hl, #_doorKey
   794F 36 04         [10] 8239 	ld	(hl), #0x04
                           8240 ;src/main.c:1864: doorKey[1] = 5;	// diamond dust
   7951 21 CA 48      [10] 8241 	ld	hl, #(_doorKey + 0x0001)
   7954 36 05         [10] 8242 	ld	(hl), #0x05
                           8243 ;src/main.c:1865: doorKey[2] = 4;	// toad snot
   7956 21 CB 48      [10] 8244 	ld	hl, #(_doorKey + 0x0002)
   7959 36 04         [10] 8245 	ld	(hl), #0x04
                           8246 ;src/main.c:1866: doorKey[3] = 5;	// diamond dust
   795B 21 CC 48      [10] 8247 	ld	hl, #(_doorKey + 0x0003)
   795E 36 05         [10] 8248 	ld	(hl), #0x05
                           8249 ;src/main.c:1867: doorKey[4] = 4; // toad snot
   7960 21 CD 48      [10] 8250 	ld	hl, #(_doorKey + 0x0004)
   7963 36 04         [10] 8251 	ld	(hl), #0x04
                           8252 ;src/main.c:1869: storeX = 51;
   7965 21 D3 48      [10] 8253 	ld	hl,#_storeX + 0
   7968 36 33         [10] 8254 	ld	(hl), #0x33
                           8255 ;src/main.c:1870: storeY = 11;
   796A 21 D4 48      [10] 8256 	ld	hl,#_storeY + 0
   796D 36 0B         [10] 8257 	ld	(hl), #0x0b
                           8258 ;src/main.c:1871: break;
   796F C3 5E 81      [10] 8259 	jp	00113$
                           8260 ;src/main.c:1874: case 1: {
   7972                    8261 00102$:
                           8262 ;src/main.c:1876: SetEnemyParams(2, NOBODY,	M_linear_X, 	D_left,     1,  0,   0,   0,   0);
   7972 21 00 00      [10] 8263 	ld	hl, #0x0000
   7975 E5            [11] 8264 	push	hl
   7976 2E 00         [ 7] 8265 	ld	l, #0x00
   7978 E5            [11] 8266 	push	hl
   7979 21 02 01      [10] 8267 	ld	hl, #0x0102
   797C E5            [11] 8268 	push	hl
   797D 21 09 00      [10] 8269 	ld	hl, #0x0009
   7980 E5            [11] 8270 	push	hl
   7981 3E 02         [ 7] 8271 	ld	a, #0x02
   7983 F5            [11] 8272 	push	af
   7984 33            [ 6] 8273 	inc	sp
   7985 CD 0D 78      [17] 8274 	call	_SetEnemyParams
   7988 21 09 00      [10] 8275 	ld	hl, #9
   798B 39            [11] 8276 	add	hl, sp
   798C F9            [ 6] 8277 	ld	sp, hl
                           8278 ;src/main.c:1877: SetEnemyParams(3, SENTINEL,	M_linear_X, 	D_right,    1,  2, 114,   2,  73);						
   798D 21 02 49      [10] 8279 	ld	hl, #0x4902
   7990 E5            [11] 8280 	push	hl
   7991 26 72         [ 7] 8281 	ld	h, #0x72
   7993 E5            [11] 8282 	push	hl
   7994 21 03 01      [10] 8283 	ld	hl, #0x0103
   7997 E5            [11] 8284 	push	hl
   7998 21 02 00      [10] 8285 	ld	hl, #0x0002
   799B E5            [11] 8286 	push	hl
   799C 3E 03         [ 7] 8287 	ld	a, #0x03
   799E F5            [11] 8288 	push	af
   799F 33            [ 6] 8289 	inc	sp
   79A0 CD 0D 78      [17] 8290 	call	_SetEnemyParams
   79A3 21 09 00      [10] 8291 	ld	hl, #9
   79A6 39            [11] 8292 	add	hl, sp
   79A7 F9            [ 6] 8293 	ld	sp, hl
                           8294 ;src/main.c:1878: SetEnemyParams(4, KNIGHT, 	M_linear_XY,    D_right,    1, 10,  62,   0,   0);
   79A8 21 00 00      [10] 8295 	ld	hl, #0x0000
   79AB E5            [11] 8296 	push	hl
   79AC 21 0A 3E      [10] 8297 	ld	hl, #0x3e0a
   79AF E5            [11] 8298 	push	hl
   79B0 21 03 01      [10] 8299 	ld	hl, #0x0103
   79B3 E5            [11] 8300 	push	hl
   79B4 26 02         [ 7] 8301 	ld	h, #0x02
   79B6 E5            [11] 8302 	push	hl
   79B7 3E 04         [ 7] 8303 	ld	a, #0x04
   79B9 F5            [11] 8304 	push	af
   79BA 33            [ 6] 8305 	inc	sp
   79BB CD 0D 78      [17] 8306 	call	_SetEnemyParams
   79BE 21 09 00      [10] 8307 	ld	hl, #9
   79C1 39            [11] 8308 	add	hl, sp
   79C2 F9            [ 6] 8309 	ld	sp, hl
                           8310 ;src/main.c:1879: SetEnemyParams(5, KNIGHT,	M_linear_XY,	D_down,     1,  2,  38,   0,   0);
   79C3 21 00 00      [10] 8311 	ld	hl, #0x0000
   79C6 E5            [11] 8312 	push	hl
   79C7 21 02 26      [10] 8313 	ld	hl, #0x2602
   79CA E5            [11] 8314 	push	hl
   79CB 21 01 01      [10] 8315 	ld	hl, #0x0101
   79CE E5            [11] 8316 	push	hl
   79CF 21 03 02      [10] 8317 	ld	hl, #0x0203
   79D2 E5            [11] 8318 	push	hl
   79D3 3E 05         [ 7] 8319 	ld	a, #0x05
   79D5 F5            [11] 8320 	push	af
   79D6 33            [ 6] 8321 	inc	sp
   79D7 CD 0D 78      [17] 8322 	call	_SetEnemyParams
   79DA 21 09 00      [10] 8323 	ld	hl, #9
   79DD 39            [11] 8324 	add	hl, sp
   79DE F9            [ 6] 8325 	ld	sp, hl
                           8326 ;src/main.c:1881: spr[0].x = spr[0].px = 58; 
   79DF 21 F7 48      [10] 8327 	ld	hl, #(_spr + 0x0004)
   79E2 36 3A         [10] 8328 	ld	(hl), #0x3a
   79E4 21 F5 48      [10] 8329 	ld	hl, #(_spr + 0x0002)
   79E7 36 3A         [10] 8330 	ld	(hl), #0x3a
                           8331 ;src/main.c:1882: spr[0].y = spr[0].py = 178;	
   79E9 21 F8 48      [10] 8332 	ld	hl, #(_spr + 0x0005)
   79EC 36 B2         [10] 8333 	ld	(hl), #0xb2
   79EE 21 F6 48      [10] 8334 	ld	hl, #(_spr + 0x0003)
   79F1 36 B2         [10] 8335 	ld	(hl), #0xb2
                           8336 ;src/main.c:1884: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk1_end);
   79F3 21 E1 39      [10] 8337 	ld	hl, #(_mappk1 + 0x02a0)
   79F6 E5            [11] 8338 	push	hl
   79F7 21 00 16      [10] 8339 	ld	hl, #0x1600
   79FA E5            [11] 8340 	push	hl
   79FB CD 44 46      [17] 8341 	call	_cpct_zx7b_decrunch_s
                           8342 ;src/main.c:1886: lName = "1;2@@GARDENS";
   79FE 21 89 81      [10] 8343 	ld	hl, #___str_36+0
   7A01 22 BC 48      [16] 8344 	ld	(_lName), hl
                           8345 ;src/main.c:1888: doorKey[0] = 4;	// toad snot
   7A04 21 C9 48      [10] 8346 	ld	hl, #_doorKey
   7A07 36 04         [10] 8347 	ld	(hl), #0x04
                           8348 ;src/main.c:1889: doorKey[1] = 6;	// newt eye
   7A09 21 CA 48      [10] 8349 	ld	hl, #(_doorKey + 0x0001)
   7A0C 36 06         [10] 8350 	ld	(hl), #0x06
                           8351 ;src/main.c:1890: doorKey[2] = 5; // diamond dust
   7A0E 21 CB 48      [10] 8352 	ld	hl, #(_doorKey + 0x0002)
   7A11 36 05         [10] 8353 	ld	(hl), #0x05
                           8354 ;src/main.c:1891: doorKey[3] = 6; // newt eye
   7A13 21 CC 48      [10] 8355 	ld	hl, #(_doorKey + 0x0003)
   7A16 36 06         [10] 8356 	ld	(hl), #0x06
                           8357 ;src/main.c:1892: doorKey[4] = 4; // toad snot
   7A18 21 CD 48      [10] 8358 	ld	hl, #(_doorKey + 0x0004)
   7A1B 36 04         [10] 8359 	ld	(hl), #0x04
                           8360 ;src/main.c:1894: storeX = 51;
   7A1D 21 D3 48      [10] 8361 	ld	hl,#_storeX + 0
   7A20 36 33         [10] 8362 	ld	(hl), #0x33
                           8363 ;src/main.c:1895: storeY = 55;
   7A22 21 D4 48      [10] 8364 	ld	hl,#_storeY + 0
   7A25 36 37         [10] 8365 	ld	(hl), #0x37
                           8366 ;src/main.c:1896: break;
   7A27 C3 5E 81      [10] 8367 	jp	00113$
                           8368 ;src/main.c:1899: case 2: {			 
   7A2A                    8369 00103$:
                           8370 ;src/main.c:1901: SetEnemyParams(2, GHOST,	M_linear_XY, 	D_right,    1,  3, 120,   0,   0);						
   7A2A 21 00 00      [10] 8371 	ld	hl, #0x0000
   7A2D E5            [11] 8372 	push	hl
   7A2E 21 03 78      [10] 8373 	ld	hl, #0x7803
   7A31 E5            [11] 8374 	push	hl
   7A32 26 01         [ 7] 8375 	ld	h, #0x01
   7A34 E5            [11] 8376 	push	hl
   7A35 21 04 02      [10] 8377 	ld	hl, #0x0204
   7A38 E5            [11] 8378 	push	hl
   7A39 3E 02         [ 7] 8379 	ld	a, #0x02
   7A3B F5            [11] 8380 	push	af
   7A3C 33            [ 6] 8381 	inc	sp
   7A3D CD 0D 78      [17] 8382 	call	_SetEnemyParams
   7A40 21 09 00      [10] 8383 	ld	hl, #9
   7A43 39            [11] 8384 	add	hl, sp
   7A44 F9            [ 6] 8385 	ld	sp, hl
                           8386 ;src/main.c:1902: SetEnemyParams(3, GHOST,	M_linear_XY, 	D_left,     1, 73,  99,   0,   0);
   7A45 21 00 00      [10] 8387 	ld	hl, #0x0000
   7A48 E5            [11] 8388 	push	hl
   7A49 21 49 63      [10] 8389 	ld	hl, #0x6349
   7A4C E5            [11] 8390 	push	hl
   7A4D 21 02 01      [10] 8391 	ld	hl, #0x0102
   7A50 E5            [11] 8392 	push	hl
   7A51 21 04 02      [10] 8393 	ld	hl, #0x0204
   7A54 E5            [11] 8394 	push	hl
   7A55 3E 03         [ 7] 8395 	ld	a, #0x03
   7A57 F5            [11] 8396 	push	af
   7A58 33            [ 6] 8397 	inc	sp
   7A59 CD 0D 78      [17] 8398 	call	_SetEnemyParams
   7A5C 21 09 00      [10] 8399 	ld	hl, #9
   7A5F 39            [11] 8400 	add	hl, sp
   7A60 F9            [ 6] 8401 	ld	sp, hl
                           8402 ;src/main.c:1903: SetEnemyParams(4, BAT,	 	M_linear_X,    	D_right,    1, 22,  58,  22,  60);																		
   7A61 21 16 3C      [10] 8403 	ld	hl, #0x3c16
   7A64 E5            [11] 8404 	push	hl
   7A65 26 3A         [ 7] 8405 	ld	h, #0x3a
   7A67 E5            [11] 8406 	push	hl
   7A68 21 03 01      [10] 8407 	ld	hl, #0x0103
   7A6B E5            [11] 8408 	push	hl
   7A6C 21 05 00      [10] 8409 	ld	hl, #0x0005
   7A6F E5            [11] 8410 	push	hl
   7A70 3E 04         [ 7] 8411 	ld	a, #0x04
   7A72 F5            [11] 8412 	push	af
   7A73 33            [ 6] 8413 	inc	sp
   7A74 CD 0D 78      [17] 8414 	call	_SetEnemyParams
   7A77 21 09 00      [10] 8415 	ld	hl, #9
   7A7A 39            [11] 8416 	add	hl, sp
   7A7B F9            [ 6] 8417 	ld	sp, hl
                           8418 ;src/main.c:1904: SetEnemyParams(5, WITCH,	M_linear_X,		D_left,     1,  3,  78,   2,  73);
   7A7C 21 02 49      [10] 8419 	ld	hl, #0x4902
   7A7F E5            [11] 8420 	push	hl
   7A80 21 03 4E      [10] 8421 	ld	hl, #0x4e03
   7A83 E5            [11] 8422 	push	hl
   7A84 21 02 01      [10] 8423 	ld	hl, #0x0102
   7A87 E5            [11] 8424 	push	hl
   7A88 21 06 00      [10] 8425 	ld	hl, #0x0006
   7A8B E5            [11] 8426 	push	hl
   7A8C 3E 05         [ 7] 8427 	ld	a, #0x05
   7A8E F5            [11] 8428 	push	af
   7A8F 33            [ 6] 8429 	inc	sp
   7A90 CD 0D 78      [17] 8430 	call	_SetEnemyParams
   7A93 21 09 00      [10] 8431 	ld	hl, #9
   7A96 39            [11] 8432 	add	hl, sp
   7A97 F9            [ 6] 8433 	ld	sp, hl
                           8434 ;src/main.c:1906: spr[0].x = spr[0].px = 58; 
   7A98 21 F7 48      [10] 8435 	ld	hl, #(_spr + 0x0004)
   7A9B 36 3A         [10] 8436 	ld	(hl), #0x3a
   7A9D 21 F5 48      [10] 8437 	ld	hl, #(_spr + 0x0002)
   7AA0 36 3A         [10] 8438 	ld	(hl), #0x3a
                           8439 ;src/main.c:1907: spr[0].y = spr[0].py = 178;			
   7AA2 21 F8 48      [10] 8440 	ld	hl, #(_spr + 0x0005)
   7AA5 36 B2         [10] 8441 	ld	(hl), #0xb2
   7AA7 21 F6 48      [10] 8442 	ld	hl, #(_spr + 0x0003)
   7AAA 36 B2         [10] 8443 	ld	(hl), #0xb2
                           8444 ;src/main.c:1909: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk2_end);
   7AAC 21 40 37      [10] 8445 	ld	hl, #(_mappk2 - 0x0001)
   7AAF E5            [11] 8446 	push	hl
   7AB0 21 00 16      [10] 8447 	ld	hl, #0x1600
   7AB3 E5            [11] 8448 	push	hl
   7AB4 CD 44 46      [17] 8449 	call	_cpct_zx7b_decrunch_s
                           8450 ;src/main.c:1911: lName = "2;1@CEMETERY";
   7AB7 21 96 81      [10] 8451 	ld	hl, #___str_37+0
   7ABA 22 BC 48      [16] 8452 	ld	(_lName), hl
                           8453 ;src/main.c:1913: doorKey[0] = 4;	// toad snot
   7ABD 21 C9 48      [10] 8454 	ld	hl, #_doorKey
   7AC0 36 04         [10] 8455 	ld	(hl), #0x04
                           8456 ;src/main.c:1914: doorKey[1] = 5;	// diamond dust
   7AC2 21 CA 48      [10] 8457 	ld	hl, #(_doorKey + 0x0001)
   7AC5 36 05         [10] 8458 	ld	(hl), #0x05
                           8459 ;src/main.c:1915: doorKey[2] = 6; // newt eye
   7AC7 21 CB 48      [10] 8460 	ld	hl, #(_doorKey + 0x0002)
   7ACA 36 06         [10] 8461 	ld	(hl), #0x06
                           8462 ;src/main.c:1916: doorKey[3] = 7;	// mammoth poop
   7ACC 21 CC 48      [10] 8463 	ld	hl, #(_doorKey + 0x0003)
   7ACF 36 07         [10] 8464 	ld	(hl), #0x07
                           8465 ;src/main.c:1917: doorKey[4] = 8; // kraken ink
   7AD1 21 CD 48      [10] 8466 	ld	hl, #(_doorKey + 0x0004)
   7AD4 36 08         [10] 8467 	ld	(hl), #0x08
                           8468 ;src/main.c:1919: storeX = 3;
   7AD6 21 D3 48      [10] 8469 	ld	hl,#_storeX + 0
   7AD9 36 03         [10] 8470 	ld	(hl), #0x03
                           8471 ;src/main.c:1920: storeY = 11;
   7ADB 21 D4 48      [10] 8472 	ld	hl,#_storeY + 0
   7ADE 36 0B         [10] 8473 	ld	(hl), #0x0b
                           8474 ;src/main.c:1921: break;
   7AE0 C3 5E 81      [10] 8475 	jp	00113$
                           8476 ;src/main.c:1924: case 3: {			 
   7AE3                    8477 00104$:
                           8478 ;src/main.c:1926: SetEnemyParams(2, GHOST,	M_linear_XY, 	D_left,     1,  2, 180,   0,   0);
   7AE3 21 00 00      [10] 8479 	ld	hl, #0x0000
   7AE6 E5            [11] 8480 	push	hl
   7AE7 21 02 B4      [10] 8481 	ld	hl, #0xb402
   7AEA E5            [11] 8482 	push	hl
   7AEB 26 01         [ 7] 8483 	ld	h, #0x01
   7AED E5            [11] 8484 	push	hl
   7AEE 21 04 02      [10] 8485 	ld	hl, #0x0204
   7AF1 E5            [11] 8486 	push	hl
   7AF2 3E 02         [ 7] 8487 	ld	a, #0x02
   7AF4 F5            [11] 8488 	push	af
   7AF5 33            [ 6] 8489 	inc	sp
   7AF6 CD 0D 78      [17] 8490 	call	_SetEnemyParams
   7AF9 21 09 00      [10] 8491 	ld	hl, #9
   7AFC 39            [11] 8492 	add	hl, sp
   7AFD F9            [ 6] 8493 	ld	sp, hl
                           8494 ;src/main.c:1927: SetEnemyParams(3, GHOST,	M_linear_XY, 	D_right,    1,  2, 136,   0,   0);
   7AFE 21 00 00      [10] 8495 	ld	hl, #0x0000
   7B01 E5            [11] 8496 	push	hl
   7B02 21 02 88      [10] 8497 	ld	hl, #0x8802
   7B05 E5            [11] 8498 	push	hl
   7B06 21 03 01      [10] 8499 	ld	hl, #0x0103
   7B09 E5            [11] 8500 	push	hl
   7B0A 21 04 02      [10] 8501 	ld	hl, #0x0204
   7B0D E5            [11] 8502 	push	hl
   7B0E 3E 03         [ 7] 8503 	ld	a, #0x03
   7B10 F5            [11] 8504 	push	af
   7B11 33            [ 6] 8505 	inc	sp
   7B12 CD 0D 78      [17] 8506 	call	_SetEnemyParams
   7B15 21 09 00      [10] 8507 	ld	hl, #9
   7B18 39            [11] 8508 	add	hl, sp
   7B19 F9            [ 6] 8509 	ld	sp, hl
                           8510 ;src/main.c:1928: SetEnemyParams(4, GHOST,	M_linear_XY, 	D_left,     1, 70,  40,   0,   0);
   7B1A 21 00 00      [10] 8511 	ld	hl, #0x0000
   7B1D E5            [11] 8512 	push	hl
   7B1E 21 46 28      [10] 8513 	ld	hl, #0x2846
   7B21 E5            [11] 8514 	push	hl
   7B22 21 02 01      [10] 8515 	ld	hl, #0x0102
   7B25 E5            [11] 8516 	push	hl
   7B26 21 04 02      [10] 8517 	ld	hl, #0x0204
   7B29 E5            [11] 8518 	push	hl
   7B2A 3E 04         [ 7] 8519 	ld	a, #0x04
   7B2C F5            [11] 8520 	push	af
   7B2D 33            [ 6] 8521 	inc	sp
   7B2E CD 0D 78      [17] 8522 	call	_SetEnemyParams
   7B31 21 09 00      [10] 8523 	ld	hl, #9
   7B34 39            [11] 8524 	add	hl, sp
   7B35 F9            [ 6] 8525 	ld	sp, hl
                           8526 ;src/main.c:1929: SetEnemyParams(5, GHOST,	M_linear_XY,	D_left,     1,  2,  40,   0,   0);
   7B36 21 00 00      [10] 8527 	ld	hl, #0x0000
   7B39 E5            [11] 8528 	push	hl
   7B3A 21 02 28      [10] 8529 	ld	hl, #0x2802
   7B3D E5            [11] 8530 	push	hl
   7B3E 26 01         [ 7] 8531 	ld	h, #0x01
   7B40 E5            [11] 8532 	push	hl
   7B41 21 04 02      [10] 8533 	ld	hl, #0x0204
   7B44 E5            [11] 8534 	push	hl
   7B45 3E 05         [ 7] 8535 	ld	a, #0x05
   7B47 F5            [11] 8536 	push	af
   7B48 33            [ 6] 8537 	inc	sp
   7B49 CD 0D 78      [17] 8538 	call	_SetEnemyParams
   7B4C 21 09 00      [10] 8539 	ld	hl, #9
   7B4F 39            [11] 8540 	add	hl, sp
   7B50 F9            [ 6] 8541 	ld	sp, hl
                           8542 ;src/main.c:1931: spr[0].x = spr[0].px = 36; 
   7B51 21 F7 48      [10] 8543 	ld	hl, #(_spr + 0x0004)
   7B54 36 24         [10] 8544 	ld	(hl), #0x24
   7B56 21 F5 48      [10] 8545 	ld	hl, #(_spr + 0x0002)
   7B59 36 24         [10] 8546 	ld	(hl), #0x24
                           8547 ;src/main.c:1932: spr[0].y = spr[0].py = 178;			
   7B5B 21 F8 48      [10] 8548 	ld	hl, #(_spr + 0x0005)
   7B5E 36 B2         [10] 8549 	ld	(hl), #0xb2
   7B60 21 F6 48      [10] 8550 	ld	hl, #(_spr + 0x0003)
   7B63 36 B2         [10] 8551 	ld	(hl), #0xb2
                           8552 ;src/main.c:1934: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk3_end);
   7B65 21 40 37      [10] 8553 	ld	hl, #(_mappk3 - 0x0001)
   7B68 E5            [11] 8554 	push	hl
   7B69 21 00 16      [10] 8555 	ld	hl, #0x1600
   7B6C E5            [11] 8556 	push	hl
   7B6D CD 44 46      [17] 8557 	call	_cpct_zx7b_decrunch_s
                           8558 ;src/main.c:1936: lName = "2;2@CEMETERY";
   7B70 21 A3 81      [10] 8559 	ld	hl, #___str_38+0
   7B73 22 BC 48      [16] 8560 	ld	(_lName), hl
                           8561 ;src/main.c:1938: doorKey[0] = 5;	// diamond dust
   7B76 21 C9 48      [10] 8562 	ld	hl, #_doorKey
   7B79 36 05         [10] 8563 	ld	(hl), #0x05
                           8564 ;src/main.c:1939: doorKey[1] = 7; // mammooth poop
   7B7B 21 CA 48      [10] 8565 	ld	hl, #(_doorKey + 0x0001)
   7B7E 36 07         [10] 8566 	ld	(hl), #0x07
                           8567 ;src/main.c:1940: doorKey[2] = 6; // newt eye
   7B80 21 CB 48      [10] 8568 	ld	hl, #(_doorKey + 0x0002)
   7B83 36 06         [10] 8569 	ld	(hl), #0x06
                           8570 ;src/main.c:1941: doorKey[3] = 7; // mammooth poop
   7B85 21 CC 48      [10] 8571 	ld	hl, #(_doorKey + 0x0003)
   7B88 36 07         [10] 8572 	ld	(hl), #0x07
                           8573 ;src/main.c:1942: doorKey[4] = 5; // diamond dust
   7B8A 21 CD 48      [10] 8574 	ld	hl, #(_doorKey + 0x0004)
   7B8D 36 05         [10] 8575 	ld	(hl), #0x05
                           8576 ;src/main.c:1944: storeX = 41;
   7B8F 21 D3 48      [10] 8577 	ld	hl,#_storeX + 0
   7B92 36 29         [10] 8578 	ld	(hl), #0x29
                           8579 ;src/main.c:1945: storeY = 71;
   7B94 21 D4 48      [10] 8580 	ld	hl,#_storeY + 0
   7B97 36 47         [10] 8581 	ld	(hl), #0x47
                           8582 ;src/main.c:1946: break;
   7B99 C3 5E 81      [10] 8583 	jp	00113$
                           8584 ;src/main.c:1949: case 4: {			 
   7B9C                    8585 00105$:
                           8586 ;src/main.c:1951: SetEnemyParams(2, BAT,		M_linear_X, 	D_left,     1, 73, 134,  16,  73);							
   7B9C 21 10 49      [10] 8587 	ld	hl, #0x4910
   7B9F E5            [11] 8588 	push	hl
   7BA0 21 49 86      [10] 8589 	ld	hl, #0x8649
   7BA3 E5            [11] 8590 	push	hl
   7BA4 21 02 01      [10] 8591 	ld	hl, #0x0102
   7BA7 E5            [11] 8592 	push	hl
   7BA8 21 05 00      [10] 8593 	ld	hl, #0x0005
   7BAB E5            [11] 8594 	push	hl
   7BAC 3E 02         [ 7] 8595 	ld	a, #0x02
   7BAE F5            [11] 8596 	push	af
   7BAF 33            [ 6] 8597 	inc	sp
   7BB0 CD 0D 78      [17] 8598 	call	_SetEnemyParams
   7BB3 21 09 00      [10] 8599 	ld	hl, #9
   7BB6 39            [11] 8600 	add	hl, sp
   7BB7 F9            [ 6] 8601 	ld	sp, hl
                           8602 ;src/main.c:1952: SetEnemyParams(3, BAT,		M_linear_X, 	D_right,    1,  3,  94,   2,  73);		
   7BB8 21 02 49      [10] 8603 	ld	hl, #0x4902
   7BBB E5            [11] 8604 	push	hl
   7BBC 21 03 5E      [10] 8605 	ld	hl, #0x5e03
   7BBF E5            [11] 8606 	push	hl
   7BC0 26 01         [ 7] 8607 	ld	h, #0x01
   7BC2 E5            [11] 8608 	push	hl
   7BC3 21 05 00      [10] 8609 	ld	hl, #0x0005
   7BC6 E5            [11] 8610 	push	hl
   7BC7 3E 03         [ 7] 8611 	ld	a, #0x03
   7BC9 F5            [11] 8612 	push	af
   7BCA 33            [ 6] 8613 	inc	sp
   7BCB CD 0D 78      [17] 8614 	call	_SetEnemyParams
   7BCE 21 09 00      [10] 8615 	ld	hl, #9
   7BD1 39            [11] 8616 	add	hl, sp
   7BD2 F9            [ 6] 8617 	ld	sp, hl
                           8618 ;src/main.c:1953: SetEnemyParams(4, KNIGHT,	M_linear_XY, 	D_down,    	1, 17,  50,   0,   0);
   7BD3 21 00 00      [10] 8619 	ld	hl, #0x0000
   7BD6 E5            [11] 8620 	push	hl
   7BD7 21 11 32      [10] 8621 	ld	hl, #0x3211
   7BDA E5            [11] 8622 	push	hl
   7BDB 21 01 01      [10] 8623 	ld	hl, #0x0101
   7BDE E5            [11] 8624 	push	hl
   7BDF 21 03 02      [10] 8625 	ld	hl, #0x0203
   7BE2 E5            [11] 8626 	push	hl
   7BE3 3E 04         [ 7] 8627 	ld	a, #0x04
   7BE5 F5            [11] 8628 	push	af
   7BE6 33            [ 6] 8629 	inc	sp
   7BE7 CD 0D 78      [17] 8630 	call	_SetEnemyParams
   7BEA 21 09 00      [10] 8631 	ld	hl, #9
   7BED 39            [11] 8632 	add	hl, sp
   7BEE F9            [ 6] 8633 	ld	sp, hl
                           8634 ;src/main.c:1954: SetEnemyParams(5, KNIGHT,	M_linear_XY, 	D_up,     	1, 57, 156,   0,   0);
   7BEF 21 00 00      [10] 8635 	ld	hl, #0x0000
   7BF2 E5            [11] 8636 	push	hl
   7BF3 21 39 9C      [10] 8637 	ld	hl, #0x9c39
   7BF6 E5            [11] 8638 	push	hl
   7BF7 21 00 01      [10] 8639 	ld	hl, #0x0100
   7BFA E5            [11] 8640 	push	hl
   7BFB 21 03 02      [10] 8641 	ld	hl, #0x0203
   7BFE E5            [11] 8642 	push	hl
   7BFF 3E 05         [ 7] 8643 	ld	a, #0x05
   7C01 F5            [11] 8644 	push	af
   7C02 33            [ 6] 8645 	inc	sp
   7C03 CD 0D 78      [17] 8646 	call	_SetEnemyParams
   7C06 21 09 00      [10] 8647 	ld	hl, #9
   7C09 39            [11] 8648 	add	hl, sp
   7C0A F9            [ 6] 8649 	ld	sp, hl
                           8650 ;src/main.c:1956: spr[0].x = spr[0].px = 6; 
   7C0B 21 F7 48      [10] 8651 	ld	hl, #(_spr + 0x0004)
   7C0E 36 06         [10] 8652 	ld	(hl), #0x06
   7C10 21 F5 48      [10] 8653 	ld	hl, #(_spr + 0x0002)
   7C13 36 06         [10] 8654 	ld	(hl), #0x06
                           8655 ;src/main.c:1957: spr[0].y = spr[0].py = 175;			
   7C15 21 F8 48      [10] 8656 	ld	hl, #(_spr + 0x0005)
   7C18 36 AF         [10] 8657 	ld	(hl), #0xaf
   7C1A 21 F6 48      [10] 8658 	ld	hl, #(_spr + 0x0003)
   7C1D 36 AF         [10] 8659 	ld	(hl), #0xaf
                           8660 ;src/main.c:1959: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk4_end);
   7C1F 21 40 37      [10] 8661 	ld	hl, #(_mappk4 - 0x0001)
   7C22 E5            [11] 8662 	push	hl
   7C23 21 00 16      [10] 8663 	ld	hl, #0x1600
   7C26 E5            [11] 8664 	push	hl
   7C27 CD 44 46      [17] 8665 	call	_cpct_zx7b_decrunch_s
                           8666 ;src/main.c:1961: lName = "3;1@@CELLARS";	
   7C2A 21 B0 81      [10] 8667 	ld	hl, #___str_39+0
   7C2D 22 BC 48      [16] 8668 	ld	(_lName), hl
                           8669 ;src/main.c:1963: doorKey[0] = 4; // toad snot
   7C30 21 C9 48      [10] 8670 	ld	hl, #_doorKey
   7C33 36 04         [10] 8671 	ld	(hl), #0x04
                           8672 ;src/main.c:1964: doorKey[1] = 9; // mermaid tear
   7C35 21 CA 48      [10] 8673 	ld	hl, #(_doorKey + 0x0001)
   7C38 36 09         [10] 8674 	ld	(hl), #0x09
                           8675 ;src/main.c:1965: doorKey[2] = 10;// martian mushroom
   7C3A 21 CB 48      [10] 8676 	ld	hl, #(_doorKey + 0x0002)
   7C3D 36 0A         [10] 8677 	ld	(hl), #0x0a
                           8678 ;src/main.c:1966: doorKey[3] = 9; // mermaid tear
   7C3F 21 CC 48      [10] 8679 	ld	hl, #(_doorKey + 0x0003)
   7C42 36 09         [10] 8680 	ld	(hl), #0x09
                           8681 ;src/main.c:1967: doorKey[4] = 4; // toad snot
   7C44 21 CD 48      [10] 8682 	ld	hl, #(_doorKey + 0x0004)
   7C47 36 04         [10] 8683 	ld	(hl), #0x04
                           8684 ;src/main.c:1969: storeX = 5;
   7C49 21 D3 48      [10] 8685 	ld	hl,#_storeX + 0
   7C4C 36 05         [10] 8686 	ld	(hl), #0x05
                           8687 ;src/main.c:1970: storeY = 103;		
   7C4E 21 D4 48      [10] 8688 	ld	hl,#_storeY + 0
   7C51 36 67         [10] 8689 	ld	(hl), #0x67
                           8690 ;src/main.c:1971: break;
   7C53 C3 5E 81      [10] 8691 	jp	00113$
                           8692 ;src/main.c:1974: case 5: {			 
   7C56                    8693 00106$:
                           8694 ;src/main.c:1976: SetEnemyParams(2, SENTINEL,	M_linear_X, 	D_left,     1,  3, 142,   2,  73);
   7C56 21 02 49      [10] 8695 	ld	hl, #0x4902
   7C59 E5            [11] 8696 	push	hl
   7C5A 21 03 8E      [10] 8697 	ld	hl, #0x8e03
   7C5D E5            [11] 8698 	push	hl
   7C5E 21 02 01      [10] 8699 	ld	hl, #0x0102
   7C61 E5            [11] 8700 	push	hl
   7C62 26 00         [ 7] 8701 	ld	h, #0x00
   7C64 E5            [11] 8702 	push	hl
   7C65 3E 02         [ 7] 8703 	ld	a, #0x02
   7C67 F5            [11] 8704 	push	af
   7C68 33            [ 6] 8705 	inc	sp
   7C69 CD 0D 78      [17] 8706 	call	_SetEnemyParams
   7C6C 21 09 00      [10] 8707 	ld	hl, #9
   7C6F 39            [11] 8708 	add	hl, sp
   7C70 F9            [ 6] 8709 	ld	sp, hl
                           8710 ;src/main.c:1977: SetEnemyParams(3, SENTINEL,	M_linear_X, 	D_right,    1, 73, 102,   2,  73);						
   7C71 21 02 49      [10] 8711 	ld	hl, #0x4902
   7C74 E5            [11] 8712 	push	hl
   7C75 21 49 66      [10] 8713 	ld	hl, #0x6649
   7C78 E5            [11] 8714 	push	hl
   7C79 21 03 01      [10] 8715 	ld	hl, #0x0103
   7C7C E5            [11] 8716 	push	hl
   7C7D 21 02 00      [10] 8717 	ld	hl, #0x0002
   7C80 E5            [11] 8718 	push	hl
   7C81 3E 03         [ 7] 8719 	ld	a, #0x03
   7C83 F5            [11] 8720 	push	af
   7C84 33            [ 6] 8721 	inc	sp
   7C85 CD 0D 78      [17] 8722 	call	_SetEnemyParams
   7C88 21 09 00      [10] 8723 	ld	hl, #9
   7C8B 39            [11] 8724 	add	hl, sp
   7C8C F9            [ 6] 8725 	ld	sp, hl
                           8726 ;src/main.c:1978: SetEnemyParams(4, KNIGHT,	M_linear_Y, 	D_down,     1, 38,  50,  50, 178);
   7C8D 21 32 B2      [10] 8727 	ld	hl, #0xb232
   7C90 E5            [11] 8728 	push	hl
   7C91 21 26 32      [10] 8729 	ld	hl, #0x3226
   7C94 E5            [11] 8730 	push	hl
   7C95 21 01 01      [10] 8731 	ld	hl, #0x0101
   7C98 E5            [11] 8732 	push	hl
   7C99 2E 03         [ 7] 8733 	ld	l, #0x03
   7C9B E5            [11] 8734 	push	hl
   7C9C 3E 04         [ 7] 8735 	ld	a, #0x04
   7C9E F5            [11] 8736 	push	af
   7C9F 33            [ 6] 8737 	inc	sp
   7CA0 CD 0D 78      [17] 8738 	call	_SetEnemyParams
   7CA3 21 09 00      [10] 8739 	ld	hl, #9
   7CA6 39            [11] 8740 	add	hl, sp
   7CA7 F9            [ 6] 8741 	ld	sp, hl
                           8742 ;src/main.c:1979: SetEnemyParams(5, WITCH,	M_linear_X,		D_left,     1,  3,  62,   2,  73);
   7CA8 21 02 49      [10] 8743 	ld	hl, #0x4902
   7CAB E5            [11] 8744 	push	hl
   7CAC 21 03 3E      [10] 8745 	ld	hl, #0x3e03
   7CAF E5            [11] 8746 	push	hl
   7CB0 21 02 01      [10] 8747 	ld	hl, #0x0102
   7CB3 E5            [11] 8748 	push	hl
   7CB4 21 06 00      [10] 8749 	ld	hl, #0x0006
   7CB7 E5            [11] 8750 	push	hl
   7CB8 3E 05         [ 7] 8751 	ld	a, #0x05
   7CBA F5            [11] 8752 	push	af
   7CBB 33            [ 6] 8753 	inc	sp
   7CBC CD 0D 78      [17] 8754 	call	_SetEnemyParams
   7CBF 21 09 00      [10] 8755 	ld	hl, #9
   7CC2 39            [11] 8756 	add	hl, sp
   7CC3 F9            [ 6] 8757 	ld	sp, hl
                           8758 ;src/main.c:1981: spr[0].x = spr[0].px = 34; 
   7CC4 21 F7 48      [10] 8759 	ld	hl, #(_spr + 0x0004)
   7CC7 36 22         [10] 8760 	ld	(hl), #0x22
   7CC9 21 F5 48      [10] 8761 	ld	hl, #(_spr + 0x0002)
   7CCC 36 22         [10] 8762 	ld	(hl), #0x22
                           8763 ;src/main.c:1982: spr[0].y = spr[0].py = 176;			
   7CCE 21 F8 48      [10] 8764 	ld	hl, #(_spr + 0x0005)
   7CD1 36 B0         [10] 8765 	ld	(hl), #0xb0
   7CD3 21 F6 48      [10] 8766 	ld	hl, #(_spr + 0x0003)
   7CD6 36 B0         [10] 8767 	ld	(hl), #0xb0
                           8768 ;src/main.c:1984: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk5_end);
   7CD8 21 40 37      [10] 8769 	ld	hl, #(_mappk5 - 0x0001)
   7CDB E5            [11] 8770 	push	hl
   7CDC 21 00 16      [10] 8771 	ld	hl, #0x1600
   7CDF E5            [11] 8772 	push	hl
   7CE0 CD 44 46      [17] 8773 	call	_cpct_zx7b_decrunch_s
                           8774 ;src/main.c:1986: lName = "3;2@@CELLARS";
   7CE3 21 BD 81      [10] 8775 	ld	hl, #___str_40+0
   7CE6 22 BC 48      [16] 8776 	ld	(_lName), hl
                           8777 ;src/main.c:1988: doorKey[0] = 7; // mammooth poop
   7CE9 21 C9 48      [10] 8778 	ld	hl, #_doorKey
   7CEC 36 07         [10] 8779 	ld	(hl), #0x07
                           8780 ;src/main.c:1989: doorKey[1] = 8; // kraken ink
   7CEE 21 CA 48      [10] 8781 	ld	hl, #(_doorKey + 0x0001)
   7CF1 36 08         [10] 8782 	ld	(hl), #0x08
                           8783 ;src/main.c:1990: doorKey[2] = 9; // mermaid tear
   7CF3 21 CB 48      [10] 8784 	ld	hl, #(_doorKey + 0x0002)
   7CF6 36 09         [10] 8785 	ld	(hl), #0x09
                           8786 ;src/main.c:1991: doorKey[3] = 6; // newt eye
   7CF8 21 CC 48      [10] 8787 	ld	hl, #(_doorKey + 0x0003)
   7CFB 36 06         [10] 8788 	ld	(hl), #0x06
                           8789 ;src/main.c:1992: doorKey[4] = 5; // diamond dust
   7CFD 21 CD 48      [10] 8790 	ld	hl, #(_doorKey + 0x0004)
   7D00 36 05         [10] 8791 	ld	(hl), #0x05
                           8792 ;src/main.c:1994: storeX = 3;
   7D02 21 D3 48      [10] 8793 	ld	hl,#_storeX + 0
   7D05 36 03         [10] 8794 	ld	(hl), #0x03
                           8795 ;src/main.c:1995: storeY = 143;
   7D07 21 D4 48      [10] 8796 	ld	hl,#_storeY + 0
   7D0A 36 8F         [10] 8797 	ld	(hl), #0x8f
                           8798 ;src/main.c:1996: break;
   7D0C C3 5E 81      [10] 8799 	jp	00113$
                           8800 ;src/main.c:1999: case 6: {			 
   7D0F                    8801 00107$:
                           8802 ;src/main.c:2001: SetEnemyParams(2, KNIGHT,	M_linear_XY, 	D_up,     	1,  2, 174,   0,   0);
   7D0F 21 00 00      [10] 8803 	ld	hl, #0x0000
   7D12 E5            [11] 8804 	push	hl
   7D13 21 02 AE      [10] 8805 	ld	hl, #0xae02
   7D16 E5            [11] 8806 	push	hl
   7D17 21 00 01      [10] 8807 	ld	hl, #0x0100
   7D1A E5            [11] 8808 	push	hl
   7D1B 21 03 02      [10] 8809 	ld	hl, #0x0203
   7D1E E5            [11] 8810 	push	hl
   7D1F 3E 02         [ 7] 8811 	ld	a, #0x02
   7D21 F5            [11] 8812 	push	af
   7D22 33            [ 6] 8813 	inc	sp
   7D23 CD 0D 78      [17] 8814 	call	_SetEnemyParams
   7D26 21 09 00      [10] 8815 	ld	hl, #9
   7D29 39            [11] 8816 	add	hl, sp
   7D2A F9            [ 6] 8817 	ld	sp, hl
                           8818 ;src/main.c:2002: SetEnemyParams(3, KNIGHT,	M_linear_XY, 	D_left,    	1, 60, 116,   0,   0);
   7D2B 21 00 00      [10] 8819 	ld	hl, #0x0000
   7D2E E5            [11] 8820 	push	hl
   7D2F 21 3C 74      [10] 8821 	ld	hl, #0x743c
   7D32 E5            [11] 8822 	push	hl
   7D33 21 02 01      [10] 8823 	ld	hl, #0x0102
   7D36 E5            [11] 8824 	push	hl
   7D37 21 03 02      [10] 8825 	ld	hl, #0x0203
   7D3A E5            [11] 8826 	push	hl
   7D3B 3E 03         [ 7] 8827 	ld	a, #0x03
   7D3D F5            [11] 8828 	push	af
   7D3E 33            [ 6] 8829 	inc	sp
   7D3F CD 0D 78      [17] 8830 	call	_SetEnemyParams
   7D42 21 09 00      [10] 8831 	ld	hl, #9
   7D45 39            [11] 8832 	add	hl, sp
   7D46 F9            [ 6] 8833 	ld	sp, hl
                           8834 ;src/main.c:2003: SetEnemyParams(4, SENTINEL,	M_linear_XY, 	D_left,     1, 73,  96,   0,   0);
   7D47 21 00 00      [10] 8835 	ld	hl, #0x0000
   7D4A E5            [11] 8836 	push	hl
   7D4B 21 49 60      [10] 8837 	ld	hl, #0x6049
   7D4E E5            [11] 8838 	push	hl
   7D4F 21 02 01      [10] 8839 	ld	hl, #0x0102
   7D52 E5            [11] 8840 	push	hl
   7D53 26 02         [ 7] 8841 	ld	h, #0x02
   7D55 E5            [11] 8842 	push	hl
   7D56 3E 04         [ 7] 8843 	ld	a, #0x04
   7D58 F5            [11] 8844 	push	af
   7D59 33            [ 6] 8845 	inc	sp
   7D5A CD 0D 78      [17] 8846 	call	_SetEnemyParams
   7D5D 21 09 00      [10] 8847 	ld	hl, #9
   7D60 39            [11] 8848 	add	hl, sp
   7D61 F9            [ 6] 8849 	ld	sp, hl
                           8850 ;src/main.c:2004: SetEnemyParams(5, WITCH,	M_linear_X,		D_left,     1,  3,  60,   2,  73);
   7D62 21 02 49      [10] 8851 	ld	hl, #0x4902
   7D65 E5            [11] 8852 	push	hl
   7D66 21 03 3C      [10] 8853 	ld	hl, #0x3c03
   7D69 E5            [11] 8854 	push	hl
   7D6A 21 02 01      [10] 8855 	ld	hl, #0x0102
   7D6D E5            [11] 8856 	push	hl
   7D6E 21 06 00      [10] 8857 	ld	hl, #0x0006
   7D71 E5            [11] 8858 	push	hl
   7D72 3E 05         [ 7] 8859 	ld	a, #0x05
   7D74 F5            [11] 8860 	push	af
   7D75 33            [ 6] 8861 	inc	sp
   7D76 CD 0D 78      [17] 8862 	call	_SetEnemyParams
   7D79 21 09 00      [10] 8863 	ld	hl, #9
   7D7C 39            [11] 8864 	add	hl, sp
   7D7D F9            [ 6] 8865 	ld	sp, hl
                           8866 ;src/main.c:2006: spr[0].x = spr[0].px = 67; 
   7D7E 21 F7 48      [10] 8867 	ld	hl, #(_spr + 0x0004)
   7D81 36 43         [10] 8868 	ld	(hl), #0x43
   7D83 21 F5 48      [10] 8869 	ld	hl, #(_spr + 0x0002)
   7D86 36 43         [10] 8870 	ld	(hl), #0x43
                           8871 ;src/main.c:2007: spr[0].y = spr[0].py = 176;			
   7D88 21 F8 48      [10] 8872 	ld	hl, #(_spr + 0x0005)
   7D8B 36 B0         [10] 8873 	ld	(hl), #0xb0
   7D8D 21 F6 48      [10] 8874 	ld	hl, #(_spr + 0x0003)
   7D90 36 B0         [10] 8875 	ld	(hl), #0xb0
                           8876 ;src/main.c:2009: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk6_end);
   7D92 21 40 37      [10] 8877 	ld	hl, #(_mappk6 - 0x0001)
   7D95 E5            [11] 8878 	push	hl
   7D96 21 00 16      [10] 8879 	ld	hl, #0x1600
   7D99 E5            [11] 8880 	push	hl
   7D9A CD 44 46      [17] 8881 	call	_cpct_zx7b_decrunch_s
                           8882 ;src/main.c:2011: lName = "4;1@@@CASTLE";	
   7D9D 21 CA 81      [10] 8883 	ld	hl, #___str_41+0
   7DA0 22 BC 48      [16] 8884 	ld	(_lName), hl
                           8885 ;src/main.c:2013: doorKey[0] = 10; // martian mushroom
   7DA3 21 C9 48      [10] 8886 	ld	hl, #_doorKey
   7DA6 36 0A         [10] 8887 	ld	(hl), #0x0a
                           8888 ;src/main.c:2014: doorKey[1] = 6; // newt eye
   7DA8 21 CA 48      [10] 8889 	ld	hl, #(_doorKey + 0x0001)
   7DAB 36 06         [10] 8890 	ld	(hl), #0x06
                           8891 ;src/main.c:2015: doorKey[2] = 11; // dragon blood
   7DAD 21 CB 48      [10] 8892 	ld	hl, #(_doorKey + 0x0002)
   7DB0 36 0B         [10] 8893 	ld	(hl), #0x0b
                           8894 ;src/main.c:2016: doorKey[3] = 6; // newt eye
   7DB2 21 CC 48      [10] 8895 	ld	hl, #(_doorKey + 0x0003)
   7DB5 36 06         [10] 8896 	ld	(hl), #0x06
                           8897 ;src/main.c:2017: doorKey[4] = 10; // martian mushroom
   7DB7 21 CD 48      [10] 8898 	ld	hl, #(_doorKey + 0x0004)
   7DBA 36 0A         [10] 8899 	ld	(hl), #0x0a
                           8900 ;src/main.c:2019: storeX = 3;
   7DBC 21 D3 48      [10] 8901 	ld	hl,#_storeX + 0
   7DBF 36 03         [10] 8902 	ld	(hl), #0x03
                           8903 ;src/main.c:2020: storeY = 11;		
   7DC1 21 D4 48      [10] 8904 	ld	hl,#_storeY + 0
   7DC4 36 0B         [10] 8905 	ld	(hl), #0x0b
                           8906 ;src/main.c:2021: break;
   7DC6 C3 5E 81      [10] 8907 	jp	00113$
                           8908 ;src/main.c:2024: case 7: {			 
   7DC9                    8909 00108$:
                           8910 ;src/main.c:2026: SetEnemyParams(2, NOBODY,	M_linear_XY, 	D_left,     1,  0,   0,   0,   0);
   7DC9 21 00 00      [10] 8911 	ld	hl, #0x0000
   7DCC E5            [11] 8912 	push	hl
   7DCD 2E 00         [ 7] 8913 	ld	l, #0x00
   7DCF E5            [11] 8914 	push	hl
   7DD0 21 02 01      [10] 8915 	ld	hl, #0x0102
   7DD3 E5            [11] 8916 	push	hl
   7DD4 21 09 02      [10] 8917 	ld	hl, #0x0209
   7DD7 E5            [11] 8918 	push	hl
   7DD8 3E 02         [ 7] 8919 	ld	a, #0x02
   7DDA F5            [11] 8920 	push	af
   7DDB 33            [ 6] 8921 	inc	sp
   7DDC CD 0D 78      [17] 8922 	call	_SetEnemyParams
   7DDF 21 09 00      [10] 8923 	ld	hl, #9
   7DE2 39            [11] 8924 	add	hl, sp
   7DE3 F9            [ 6] 8925 	ld	sp, hl
                           8926 ;src/main.c:2027: SetEnemyParams(3, GHOST,	M_linear_XY, 	D_up,       1,  3, 176,   0,   0);
   7DE4 21 00 00      [10] 8927 	ld	hl, #0x0000
   7DE7 E5            [11] 8928 	push	hl
   7DE8 21 03 B0      [10] 8929 	ld	hl, #0xb003
   7DEB E5            [11] 8930 	push	hl
   7DEC 21 00 01      [10] 8931 	ld	hl, #0x0100
   7DEF E5            [11] 8932 	push	hl
   7DF0 21 04 02      [10] 8933 	ld	hl, #0x0204
   7DF3 E5            [11] 8934 	push	hl
   7DF4 3E 03         [ 7] 8935 	ld	a, #0x03
   7DF6 F5            [11] 8936 	push	af
   7DF7 33            [ 6] 8937 	inc	sp
   7DF8 CD 0D 78      [17] 8938 	call	_SetEnemyParams
   7DFB 21 09 00      [10] 8939 	ld	hl, #9
   7DFE 39            [11] 8940 	add	hl, sp
   7DFF F9            [ 6] 8941 	ld	sp, hl
                           8942 ;src/main.c:2028: SetEnemyParams(4, KNIGHT,	M_linear_XY, 	D_right,    1,  3,  44,   0,   0);
   7E00 21 00 00      [10] 8943 	ld	hl, #0x0000
   7E03 E5            [11] 8944 	push	hl
   7E04 21 03 2C      [10] 8945 	ld	hl, #0x2c03
   7E07 E5            [11] 8946 	push	hl
   7E08 26 01         [ 7] 8947 	ld	h, #0x01
   7E0A E5            [11] 8948 	push	hl
   7E0B 26 02         [ 7] 8949 	ld	h, #0x02
   7E0D E5            [11] 8950 	push	hl
   7E0E 3E 04         [ 7] 8951 	ld	a, #0x04
   7E10 F5            [11] 8952 	push	af
   7E11 33            [ 6] 8953 	inc	sp
   7E12 CD 0D 78      [17] 8954 	call	_SetEnemyParams
   7E15 21 09 00      [10] 8955 	ld	hl, #9
   7E18 39            [11] 8956 	add	hl, sp
   7E19 F9            [ 6] 8957 	ld	sp, hl
                           8958 ;src/main.c:2029: SetEnemyParams(5, KNIGHT,	M_linear_XY, 	D_down,     1, 73,  44,   0,   0);
   7E1A 21 00 00      [10] 8959 	ld	hl, #0x0000
   7E1D E5            [11] 8960 	push	hl
   7E1E 21 49 2C      [10] 8961 	ld	hl, #0x2c49
   7E21 E5            [11] 8962 	push	hl
   7E22 21 01 01      [10] 8963 	ld	hl, #0x0101
   7E25 E5            [11] 8964 	push	hl
   7E26 21 03 02      [10] 8965 	ld	hl, #0x0203
   7E29 E5            [11] 8966 	push	hl
   7E2A 3E 05         [ 7] 8967 	ld	a, #0x05
   7E2C F5            [11] 8968 	push	af
   7E2D 33            [ 6] 8969 	inc	sp
   7E2E CD 0D 78      [17] 8970 	call	_SetEnemyParams
   7E31 21 09 00      [10] 8971 	ld	hl, #9
   7E34 39            [11] 8972 	add	hl, sp
   7E35 F9            [ 6] 8973 	ld	sp, hl
                           8974 ;src/main.c:2031: spr[0].x = spr[0].px = 36; 
   7E36 21 F7 48      [10] 8975 	ld	hl, #(_spr + 0x0004)
   7E39 36 24         [10] 8976 	ld	(hl), #0x24
   7E3B 21 F5 48      [10] 8977 	ld	hl, #(_spr + 0x0002)
   7E3E 36 24         [10] 8978 	ld	(hl), #0x24
                           8979 ;src/main.c:2032: spr[0].y = spr[0].py = 176;			
   7E40 21 F8 48      [10] 8980 	ld	hl, #(_spr + 0x0005)
   7E43 36 B0         [10] 8981 	ld	(hl), #0xb0
   7E45 21 F6 48      [10] 8982 	ld	hl, #(_spr + 0x0003)
   7E48 36 B0         [10] 8983 	ld	(hl), #0xb0
                           8984 ;src/main.c:2034: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk7_end);
   7E4A 21 40 37      [10] 8985 	ld	hl, #(_mappk7 - 0x0001)
   7E4D E5            [11] 8986 	push	hl
   7E4E 21 00 16      [10] 8987 	ld	hl, #0x1600
   7E51 E5            [11] 8988 	push	hl
   7E52 CD 44 46      [17] 8989 	call	_cpct_zx7b_decrunch_s
                           8990 ;src/main.c:2036: lName = "4;2@@@CASTLE";
   7E55 21 D7 81      [10] 8991 	ld	hl, #___str_42+0
   7E58 22 BC 48      [16] 8992 	ld	(_lName), hl
                           8993 ;src/main.c:2038: doorKey[0] = 5; // diamond dust
   7E5B 21 C9 48      [10] 8994 	ld	hl, #_doorKey
   7E5E 36 05         [10] 8995 	ld	(hl), #0x05
                           8996 ;src/main.c:2039: doorKey[1] = 11; // dragon blood
   7E60 21 CA 48      [10] 8997 	ld	hl, #(_doorKey + 0x0001)
   7E63 36 0B         [10] 8998 	ld	(hl), #0x0b
                           8999 ;src/main.c:2040: doorKey[2] = 7; // mammooth poop
   7E65 21 CB 48      [10] 9000 	ld	hl, #(_doorKey + 0x0002)
   7E68 36 07         [10] 9001 	ld	(hl), #0x07
                           9002 ;src/main.c:2041: doorKey[3] = 11; // dragon blood
   7E6A 21 CC 48      [10] 9003 	ld	hl, #(_doorKey + 0x0003)
   7E6D 36 0B         [10] 9004 	ld	(hl), #0x0b
                           9005 ;src/main.c:2042: doorKey[4] = 5; // diamond dust
   7E6F 21 CD 48      [10] 9006 	ld	hl, #(_doorKey + 0x0004)
   7E72 36 05         [10] 9007 	ld	(hl), #0x05
                           9008 ;src/main.c:2044: storeX = 33;
   7E74 21 D3 48      [10] 9009 	ld	hl,#_storeX + 0
   7E77 36 21         [10] 9010 	ld	(hl), #0x21
                           9011 ;src/main.c:2045: storeY = 95;
   7E79 21 D4 48      [10] 9012 	ld	hl,#_storeY + 0
   7E7C 36 5F         [10] 9013 	ld	(hl), #0x5f
                           9014 ;src/main.c:2046: break;
   7E7E C3 5E 81      [10] 9015 	jp	00113$
                           9016 ;src/main.c:2049: case 8: {			 
   7E81                    9017 00109$:
                           9018 ;src/main.c:2051: SetEnemyParams(2, NOBODY,	M_linear_X, 	D_left,     1,  0,   0,   0,   0);
   7E81 21 00 00      [10] 9019 	ld	hl, #0x0000
   7E84 E5            [11] 9020 	push	hl
   7E85 2E 00         [ 7] 9021 	ld	l, #0x00
   7E87 E5            [11] 9022 	push	hl
   7E88 21 02 01      [10] 9023 	ld	hl, #0x0102
   7E8B E5            [11] 9024 	push	hl
   7E8C 21 09 00      [10] 9025 	ld	hl, #0x0009
   7E8F E5            [11] 9026 	push	hl
   7E90 3E 02         [ 7] 9027 	ld	a, #0x02
   7E92 F5            [11] 9028 	push	af
   7E93 33            [ 6] 9029 	inc	sp
   7E94 CD 0D 78      [17] 9030 	call	_SetEnemyParams
   7E97 21 09 00      [10] 9031 	ld	hl, #9
   7E9A 39            [11] 9032 	add	hl, sp
   7E9B F9            [ 6] 9033 	ld	sp, hl
                           9034 ;src/main.c:2052: SetEnemyParams(3, GHOST,	M_chaser,		D_right,    7,  2, 114,   0,   0);						
   7E9C 21 00 00      [10] 9035 	ld	hl, #0x0000
   7E9F E5            [11] 9036 	push	hl
   7EA0 21 02 72      [10] 9037 	ld	hl, #0x7202
   7EA3 E5            [11] 9038 	push	hl
   7EA4 21 03 07      [10] 9039 	ld	hl, #0x0703
   7EA7 E5            [11] 9040 	push	hl
   7EA8 21 04 03      [10] 9041 	ld	hl, #0x0304
   7EAB E5            [11] 9042 	push	hl
   7EAC 3E 03         [ 7] 9043 	ld	a, #0x03
   7EAE F5            [11] 9044 	push	af
   7EAF 33            [ 6] 9045 	inc	sp
   7EB0 CD 0D 78      [17] 9046 	call	_SetEnemyParams
   7EB3 21 09 00      [10] 9047 	ld	hl, #9
   7EB6 39            [11] 9048 	add	hl, sp
   7EB7 F9            [ 6] 9049 	ld	sp, hl
                           9050 ;src/main.c:2053: SetEnemyParams(4, KNIGHT, 	M_linear_XY,    D_right,    1, 10,  68,   0,   0);
   7EB8 21 00 00      [10] 9051 	ld	hl, #0x0000
   7EBB E5            [11] 9052 	push	hl
   7EBC 21 0A 44      [10] 9053 	ld	hl, #0x440a
   7EBF E5            [11] 9054 	push	hl
   7EC0 21 03 01      [10] 9055 	ld	hl, #0x0103
   7EC3 E5            [11] 9056 	push	hl
   7EC4 26 02         [ 7] 9057 	ld	h, #0x02
   7EC6 E5            [11] 9058 	push	hl
   7EC7 3E 04         [ 7] 9059 	ld	a, #0x04
   7EC9 F5            [11] 9060 	push	af
   7ECA 33            [ 6] 9061 	inc	sp
   7ECB CD 0D 78      [17] 9062 	call	_SetEnemyParams
   7ECE 21 09 00      [10] 9063 	ld	hl, #9
   7ED1 39            [11] 9064 	add	hl, sp
   7ED2 F9            [ 6] 9065 	ld	sp, hl
                           9066 ;src/main.c:2054: SetEnemyParams(5, KNIGHT,	M_linear_XY,	D_down,     1,  2,  38,   0,   0);
   7ED3 21 00 00      [10] 9067 	ld	hl, #0x0000
   7ED6 E5            [11] 9068 	push	hl
   7ED7 21 02 26      [10] 9069 	ld	hl, #0x2602
   7EDA E5            [11] 9070 	push	hl
   7EDB 21 01 01      [10] 9071 	ld	hl, #0x0101
   7EDE E5            [11] 9072 	push	hl
   7EDF 21 03 02      [10] 9073 	ld	hl, #0x0203
   7EE2 E5            [11] 9074 	push	hl
   7EE3 3E 05         [ 7] 9075 	ld	a, #0x05
   7EE5 F5            [11] 9076 	push	af
   7EE6 33            [ 6] 9077 	inc	sp
   7EE7 CD 0D 78      [17] 9078 	call	_SetEnemyParams
   7EEA 21 09 00      [10] 9079 	ld	hl, #9
   7EED 39            [11] 9080 	add	hl, sp
   7EEE F9            [ 6] 9081 	ld	sp, hl
                           9082 ;src/main.c:2056: spr[0].x = spr[0].px = 34; 
   7EEF 21 F7 48      [10] 9083 	ld	hl, #(_spr + 0x0004)
   7EF2 36 22         [10] 9084 	ld	(hl), #0x22
   7EF4 21 F5 48      [10] 9085 	ld	hl, #(_spr + 0x0002)
   7EF7 36 22         [10] 9086 	ld	(hl), #0x22
                           9087 ;src/main.c:2057: spr[0].y = spr[0].py = 176;			
   7EF9 21 F8 48      [10] 9088 	ld	hl, #(_spr + 0x0005)
   7EFC 36 B0         [10] 9089 	ld	(hl), #0xb0
   7EFE 21 F6 48      [10] 9090 	ld	hl, #(_spr + 0x0003)
   7F01 36 B0         [10] 9091 	ld	(hl), #0xb0
                           9092 ;src/main.c:2059: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk8_end);
   7F03 21 40 37      [10] 9093 	ld	hl, #(_mappk8 - 0x0001)
   7F06 E5            [11] 9094 	push	hl
   7F07 21 00 16      [10] 9095 	ld	hl, #0x1600
   7F0A E5            [11] 9096 	push	hl
   7F0B CD 44 46      [17] 9097 	call	_cpct_zx7b_decrunch_s
                           9098 ;src/main.c:2061: lName = "5;1@@@TOWER";	
   7F0E 21 E4 81      [10] 9099 	ld	hl, #___str_43+0
   7F11 22 BC 48      [16] 9100 	ld	(_lName), hl
                           9101 ;src/main.c:2063: doorKey[0] = 8; // kraken ink
   7F14 21 C9 48      [10] 9102 	ld	hl, #_doorKey
   7F17 36 08         [10] 9103 	ld	(hl), #0x08
                           9104 ;src/main.c:2064: doorKey[1] = 9; // mermaid tear
   7F19 21 CA 48      [10] 9105 	ld	hl, #(_doorKey + 0x0001)
   7F1C 36 09         [10] 9106 	ld	(hl), #0x09
                           9107 ;src/main.c:2065: doorKey[2] = 10; // martian mushroom
   7F1E 21 CB 48      [10] 9108 	ld	hl, #(_doorKey + 0x0002)
   7F21 36 0A         [10] 9109 	ld	(hl), #0x0a
                           9110 ;src/main.c:2066: doorKey[3] = 11; // dragon blood
   7F23 21 CC 48      [10] 9111 	ld	hl, #(_doorKey + 0x0003)
   7F26 36 0B         [10] 9112 	ld	(hl), #0x0b
                           9113 ;src/main.c:2067: doorKey[4] = 12; // dodo egg
   7F28 21 CD 48      [10] 9114 	ld	hl, #(_doorKey + 0x0004)
   7F2B 36 0C         [10] 9115 	ld	(hl), #0x0c
                           9116 ;src/main.c:2069: storeX = 25;
   7F2D 21 D3 48      [10] 9117 	ld	hl,#_storeX + 0
   7F30 36 19         [10] 9118 	ld	(hl), #0x19
                           9119 ;src/main.c:2070: storeY = 95;		
   7F32 21 D4 48      [10] 9120 	ld	hl,#_storeY + 0
   7F35 36 5F         [10] 9121 	ld	(hl), #0x5f
                           9122 ;src/main.c:2071: break;
   7F37 C3 5E 81      [10] 9123 	jp	00113$
                           9124 ;src/main.c:2074: case 9: {			 
   7F3A                    9125 00110$:
                           9126 ;src/main.c:2076: SetEnemyParams(2, BAT,		M_linear_X, 	D_left,     1, 73, 111,  41,  73);
   7F3A 21 29 49      [10] 9127 	ld	hl, #0x4929
   7F3D E5            [11] 9128 	push	hl
   7F3E 21 49 6F      [10] 9129 	ld	hl, #0x6f49
   7F41 E5            [11] 9130 	push	hl
   7F42 21 02 01      [10] 9131 	ld	hl, #0x0102
   7F45 E5            [11] 9132 	push	hl
   7F46 21 05 00      [10] 9133 	ld	hl, #0x0005
   7F49 E5            [11] 9134 	push	hl
   7F4A 3E 02         [ 7] 9135 	ld	a, #0x02
   7F4C F5            [11] 9136 	push	af
   7F4D 33            [ 6] 9137 	inc	sp
   7F4E CD 0D 78      [17] 9138 	call	_SetEnemyParams
   7F51 21 09 00      [10] 9139 	ld	hl, #9
   7F54 39            [11] 9140 	add	hl, sp
   7F55 F9            [ 6] 9141 	ld	sp, hl
                           9142 ;src/main.c:2077: SetEnemyParams(3, BAT,		M_linear_X,		D_right,    1,  2, 111,   2,  34);				
   7F56 21 02 22      [10] 9143 	ld	hl, #0x2202
   7F59 E5            [11] 9144 	push	hl
   7F5A 26 6F         [ 7] 9145 	ld	h, #0x6f
   7F5C E5            [11] 9146 	push	hl
   7F5D 21 03 01      [10] 9147 	ld	hl, #0x0103
   7F60 E5            [11] 9148 	push	hl
   7F61 21 05 00      [10] 9149 	ld	hl, #0x0005
   7F64 E5            [11] 9150 	push	hl
   7F65 3E 03         [ 7] 9151 	ld	a, #0x03
   7F67 F5            [11] 9152 	push	af
   7F68 33            [ 6] 9153 	inc	sp
   7F69 CD 0D 78      [17] 9154 	call	_SetEnemyParams
   7F6C 21 09 00      [10] 9155 	ld	hl, #9
   7F6F 39            [11] 9156 	add	hl, sp
   7F70 F9            [ 6] 9157 	ld	sp, hl
                           9158 ;src/main.c:2078: SetEnemyParams(4, SENTINEL, M_linear_Y,    	D_down,     1, 27,  44,  44, 175);
   7F71 21 2C AF      [10] 9159 	ld	hl, #0xaf2c
   7F74 E5            [11] 9160 	push	hl
   7F75 21 1B 2C      [10] 9161 	ld	hl, #0x2c1b
   7F78 E5            [11] 9162 	push	hl
   7F79 21 01 01      [10] 9163 	ld	hl, #0x0101
   7F7C E5            [11] 9164 	push	hl
   7F7D 2E 02         [ 7] 9165 	ld	l, #0x02
   7F7F E5            [11] 9166 	push	hl
   7F80 3E 04         [ 7] 9167 	ld	a, #0x04
   7F82 F5            [11] 9168 	push	af
   7F83 33            [ 6] 9169 	inc	sp
   7F84 CD 0D 78      [17] 9170 	call	_SetEnemyParams
   7F87 21 09 00      [10] 9171 	ld	hl, #9
   7F8A 39            [11] 9172 	add	hl, sp
   7F8B F9            [ 6] 9173 	ld	sp, hl
                           9174 ;src/main.c:2079: SetEnemyParams(5, SENTINEL,	M_linear_Y,		D_up,       1, 49, 160,  44, 175);
   7F8C 21 2C AF      [10] 9175 	ld	hl, #0xaf2c
   7F8F E5            [11] 9176 	push	hl
   7F90 21 31 A0      [10] 9177 	ld	hl, #0xa031
   7F93 E5            [11] 9178 	push	hl
   7F94 21 00 01      [10] 9179 	ld	hl, #0x0100
   7F97 E5            [11] 9180 	push	hl
   7F98 2E 02         [ 7] 9181 	ld	l, #0x02
   7F9A E5            [11] 9182 	push	hl
   7F9B 3E 05         [ 7] 9183 	ld	a, #0x05
   7F9D F5            [11] 9184 	push	af
   7F9E 33            [ 6] 9185 	inc	sp
   7F9F CD 0D 78      [17] 9186 	call	_SetEnemyParams
   7FA2 21 09 00      [10] 9187 	ld	hl, #9
   7FA5 39            [11] 9188 	add	hl, sp
   7FA6 F9            [ 6] 9189 	ld	sp, hl
                           9190 ;src/main.c:2081: spr[0].x = spr[0].px = 34; 
   7FA7 21 F7 48      [10] 9191 	ld	hl, #(_spr + 0x0004)
   7FAA 36 22         [10] 9192 	ld	(hl), #0x22
   7FAC 21 F5 48      [10] 9193 	ld	hl, #(_spr + 0x0002)
   7FAF 36 22         [10] 9194 	ld	(hl), #0x22
                           9195 ;src/main.c:2082: spr[0].y = spr[0].py = 176;			
   7FB1 21 F8 48      [10] 9196 	ld	hl, #(_spr + 0x0005)
   7FB4 36 B0         [10] 9197 	ld	(hl), #0xb0
   7FB6 21 F6 48      [10] 9198 	ld	hl, #(_spr + 0x0003)
   7FB9 36 B0         [10] 9199 	ld	(hl), #0xb0
                           9200 ;src/main.c:2084: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk9_end);
   7FBB 21 40 37      [10] 9201 	ld	hl, #(_mappk9 - 0x0001)
   7FBE E5            [11] 9202 	push	hl
   7FBF 21 00 16      [10] 9203 	ld	hl, #0x1600
   7FC2 E5            [11] 9204 	push	hl
   7FC3 CD 44 46      [17] 9205 	call	_cpct_zx7b_decrunch_s
                           9206 ;src/main.c:2086: lName = "5;2@@@TOWER";	
   7FC6 21 F0 81      [10] 9207 	ld	hl, #___str_44+0
   7FC9 22 BC 48      [16] 9208 	ld	(_lName), hl
                           9209 ;src/main.c:2088: doorKey[0] = 10; // martian mushroom
   7FCC 21 C9 48      [10] 9210 	ld	hl, #_doorKey
   7FCF 36 0A         [10] 9211 	ld	(hl), #0x0a
                           9212 ;src/main.c:2089: doorKey[1] = 5; // diamond dust
   7FD1 21 CA 48      [10] 9213 	ld	hl, #(_doorKey + 0x0001)
   7FD4 36 05         [10] 9214 	ld	(hl), #0x05
                           9215 ;src/main.c:2090: doorKey[2] = 12; // dodo egg
   7FD6 21 CB 48      [10] 9216 	ld	hl, #(_doorKey + 0x0002)
   7FD9 36 0C         [10] 9217 	ld	(hl), #0x0c
                           9218 ;src/main.c:2091: doorKey[3] = 4; // toad snot
   7FDB 21 CC 48      [10] 9219 	ld	hl, #(_doorKey + 0x0003)
   7FDE 36 04         [10] 9220 	ld	(hl), #0x04
                           9221 ;src/main.c:2092: doorKey[4] = 13; // unicorn blood
   7FE0 21 CD 48      [10] 9222 	ld	hl, #(_doorKey + 0x0004)
   7FE3 36 0D         [10] 9223 	ld	(hl), #0x0d
                           9224 ;src/main.c:2094: storeX = 41;
   7FE5 21 D3 48      [10] 9225 	ld	hl,#_storeX + 0
   7FE8 36 29         [10] 9226 	ld	(hl), #0x29
                           9227 ;src/main.c:2095: storeY = 43;		
   7FEA 21 D4 48      [10] 9228 	ld	hl,#_storeY + 0
   7FED 36 2B         [10] 9229 	ld	(hl), #0x2b
                           9230 ;src/main.c:2096: break;
   7FEF C3 5E 81      [10] 9231 	jp	00113$
                           9232 ;src/main.c:2099: case 10: {			 
   7FF2                    9233 00111$:
                           9234 ;src/main.c:2101: SetEnemyParams(2, SENTINEL,	M_linear_X, 	D_left,     1,  2, 156,   2,  73);
   7FF2 21 02 49      [10] 9235 	ld	hl, #0x4902
   7FF5 E5            [11] 9236 	push	hl
   7FF6 26 9C         [ 7] 9237 	ld	h, #0x9c
   7FF8 E5            [11] 9238 	push	hl
   7FF9 26 01         [ 7] 9239 	ld	h, #0x01
   7FFB E5            [11] 9240 	push	hl
   7FFC 26 00         [ 7] 9241 	ld	h, #0x00
   7FFE E5            [11] 9242 	push	hl
   7FFF 3E 02         [ 7] 9243 	ld	a, #0x02
   8001 F5            [11] 9244 	push	af
   8002 33            [ 6] 9245 	inc	sp
   8003 CD 0D 78      [17] 9246 	call	_SetEnemyParams
   8006 21 09 00      [10] 9247 	ld	hl, #9
   8009 39            [11] 9248 	add	hl, sp
   800A F9            [ 6] 9249 	ld	sp, hl
                           9250 ;src/main.c:2102: SetEnemyParams(3, GHOST,	M_chaser, 		D_right,    4,  2, 114,   0,   0);
   800B 21 00 00      [10] 9251 	ld	hl, #0x0000
   800E E5            [11] 9252 	push	hl
   800F 21 02 72      [10] 9253 	ld	hl, #0x7202
   8012 E5            [11] 9254 	push	hl
   8013 21 03 04      [10] 9255 	ld	hl, #0x0403
   8016 E5            [11] 9256 	push	hl
   8017 21 04 03      [10] 9257 	ld	hl, #0x0304
   801A E5            [11] 9258 	push	hl
   801B 3E 03         [ 7] 9259 	ld	a, #0x03
   801D F5            [11] 9260 	push	af
   801E 33            [ 6] 9261 	inc	sp
   801F CD 0D 78      [17] 9262 	call	_SetEnemyParams
   8022 21 09 00      [10] 9263 	ld	hl, #9
   8025 39            [11] 9264 	add	hl, sp
   8026 F9            [ 6] 9265 	ld	sp, hl
                           9266 ;src/main.c:2103: SetEnemyParams(4, KNIGHT,	M_linear_Y, 	D_right,    1, 17,  40,  40, 145);
   8027 21 28 91      [10] 9267 	ld	hl, #0x9128
   802A E5            [11] 9268 	push	hl
   802B 21 11 28      [10] 9269 	ld	hl, #0x2811
   802E E5            [11] 9270 	push	hl
   802F 21 03 01      [10] 9271 	ld	hl, #0x0103
   8032 E5            [11] 9272 	push	hl
   8033 2E 03         [ 7] 9273 	ld	l, #0x03
   8035 E5            [11] 9274 	push	hl
   8036 3E 04         [ 7] 9275 	ld	a, #0x04
   8038 F5            [11] 9276 	push	af
   8039 33            [ 6] 9277 	inc	sp
   803A CD 0D 78      [17] 9278 	call	_SetEnemyParams
   803D 21 09 00      [10] 9279 	ld	hl, #9
   8040 39            [11] 9280 	add	hl, sp
   8041 F9            [ 6] 9281 	ld	sp, hl
                           9282 ;src/main.c:2104: SetEnemyParams(5, KNIGHT,	M_linear_Y, 	D_left,     1, 59,  40,  40, 145);
   8042 21 28 91      [10] 9283 	ld	hl, #0x9128
   8045 E5            [11] 9284 	push	hl
   8046 21 3B 28      [10] 9285 	ld	hl, #0x283b
   8049 E5            [11] 9286 	push	hl
   804A 21 02 01      [10] 9287 	ld	hl, #0x0102
   804D E5            [11] 9288 	push	hl
   804E 2E 03         [ 7] 9289 	ld	l, #0x03
   8050 E5            [11] 9290 	push	hl
   8051 3E 05         [ 7] 9291 	ld	a, #0x05
   8053 F5            [11] 9292 	push	af
   8054 33            [ 6] 9293 	inc	sp
   8055 CD 0D 78      [17] 9294 	call	_SetEnemyParams
   8058 21 09 00      [10] 9295 	ld	hl, #9
   805B 39            [11] 9296 	add	hl, sp
   805C F9            [ 6] 9297 	ld	sp, hl
                           9298 ;src/main.c:2106: spr[0].x = spr[0].px = 54; 
   805D 21 F7 48      [10] 9299 	ld	hl, #(_spr + 0x0004)
   8060 36 36         [10] 9300 	ld	(hl), #0x36
   8062 21 F5 48      [10] 9301 	ld	hl, #(_spr + 0x0002)
   8065 36 36         [10] 9302 	ld	(hl), #0x36
                           9303 ;src/main.c:2107: spr[0].y = spr[0].py = 176;			
   8067 21 F8 48      [10] 9304 	ld	hl, #(_spr + 0x0005)
   806A 36 B0         [10] 9305 	ld	(hl), #0xb0
   806C 21 F6 48      [10] 9306 	ld	hl, #(_spr + 0x0003)
   806F 36 B0         [10] 9307 	ld	(hl), #0xb0
                           9308 ;src/main.c:2109: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk10_end);
   8071 21 40 37      [10] 9309 	ld	hl, #(_mappk10 + 0x01ad)
   8074 E5            [11] 9310 	push	hl
   8075 21 00 16      [10] 9311 	ld	hl, #0x1600
   8078 E5            [11] 9312 	push	hl
   8079 CD 44 46      [17] 9313 	call	_cpct_zx7b_decrunch_s
                           9314 ;src/main.c:2111: lName = "6;1@@LIBRARY";
   807C 21 FC 81      [10] 9315 	ld	hl, #___str_45+0
   807F 22 BC 48      [16] 9316 	ld	(_lName), hl
                           9317 ;src/main.c:2113: doorKey[0] = 11; // dragon blood
   8082 21 C9 48      [10] 9318 	ld	hl, #_doorKey
   8085 36 0B         [10] 9319 	ld	(hl), #0x0b
                           9320 ;src/main.c:2114: doorKey[1] = 8; // kraken ink
   8087 21 CA 48      [10] 9321 	ld	hl, #(_doorKey + 0x0001)
   808A 36 08         [10] 9322 	ld	(hl), #0x08
                           9323 ;src/main.c:2115: doorKey[2] = 9; // dodo egg
   808C 21 CB 48      [10] 9324 	ld	hl, #(_doorKey + 0x0002)
   808F 36 09         [10] 9325 	ld	(hl), #0x09
                           9326 ;src/main.c:2116: doorKey[3] = 10; // martian mushroom
   8091 21 CC 48      [10] 9327 	ld	hl, #(_doorKey + 0x0003)
   8094 36 0A         [10] 9328 	ld	(hl), #0x0a
                           9329 ;src/main.c:2117: doorKey[4] = 15; // mordor lava
   8096 21 CD 48      [10] 9330 	ld	hl, #(_doorKey + 0x0004)
   8099 36 0F         [10] 9331 	ld	(hl), #0x0f
                           9332 ;src/main.c:2119: storeX = 3;
   809B 21 D3 48      [10] 9333 	ld	hl,#_storeX + 0
   809E 36 03         [10] 9334 	ld	(hl), #0x03
                           9335 ;src/main.c:2120: storeY = 143;
   80A0 21 D4 48      [10] 9336 	ld	hl,#_storeY + 0
   80A3 36 8F         [10] 9337 	ld	(hl), #0x8f
                           9338 ;src/main.c:2121: break;
   80A5 C3 5E 81      [10] 9339 	jp	00113$
                           9340 ;src/main.c:2124: case 11: {			 
   80A8                    9341 00112$:
                           9342 ;src/main.c:2126: SetEnemyParams(2, GHOST,	M_linear_X, 	D_left,     1,  2, 132,   2,  72);
   80A8 21 02 48      [10] 9343 	ld	hl, #0x4802
   80AB E5            [11] 9344 	push	hl
   80AC 26 84         [ 7] 9345 	ld	h, #0x84
   80AE E5            [11] 9346 	push	hl
   80AF 26 01         [ 7] 9347 	ld	h, #0x01
   80B1 E5            [11] 9348 	push	hl
   80B2 21 04 00      [10] 9349 	ld	hl, #0x0004
   80B5 E5            [11] 9350 	push	hl
   80B6 3E 02         [ 7] 9351 	ld	a, #0x02
   80B8 F5            [11] 9352 	push	af
   80B9 33            [ 6] 9353 	inc	sp
   80BA CD 0D 78      [17] 9354 	call	_SetEnemyParams
   80BD 21 09 00      [10] 9355 	ld	hl, #9
   80C0 39            [11] 9356 	add	hl, sp
   80C1 F9            [ 6] 9357 	ld	sp, hl
                           9358 ;src/main.c:2127: SetEnemyParams(3, GHOST,	M_chaser, 		D_right,    5,  2, 114,   0,   0);
   80C2 21 00 00      [10] 9359 	ld	hl, #0x0000
   80C5 E5            [11] 9360 	push	hl
   80C6 21 02 72      [10] 9361 	ld	hl, #0x7202
   80C9 E5            [11] 9362 	push	hl
   80CA 21 03 05      [10] 9363 	ld	hl, #0x0503
   80CD E5            [11] 9364 	push	hl
   80CE 21 04 03      [10] 9365 	ld	hl, #0x0304
   80D1 E5            [11] 9366 	push	hl
   80D2 3E 03         [ 7] 9367 	ld	a, #0x03
   80D4 F5            [11] 9368 	push	af
   80D5 33            [ 6] 9369 	inc	sp
   80D6 CD 0D 78      [17] 9370 	call	_SetEnemyParams
   80D9 21 09 00      [10] 9371 	ld	hl, #9
   80DC 39            [11] 9372 	add	hl, sp
   80DD F9            [ 6] 9373 	ld	sp, hl
                           9374 ;src/main.c:2128: SetEnemyParams(4, KNIGHT,	M_linear_XY, 	D_down,     1, 21,  38,   0,   0);
   80DE 21 00 00      [10] 9375 	ld	hl, #0x0000
   80E1 E5            [11] 9376 	push	hl
   80E2 21 15 26      [10] 9377 	ld	hl, #0x2615
   80E5 E5            [11] 9378 	push	hl
   80E6 21 01 01      [10] 9379 	ld	hl, #0x0101
   80E9 E5            [11] 9380 	push	hl
   80EA 21 03 02      [10] 9381 	ld	hl, #0x0203
   80ED E5            [11] 9382 	push	hl
   80EE 3E 04         [ 7] 9383 	ld	a, #0x04
   80F0 F5            [11] 9384 	push	af
   80F1 33            [ 6] 9385 	inc	sp
   80F2 CD 0D 78      [17] 9386 	call	_SetEnemyParams
   80F5 21 09 00      [10] 9387 	ld	hl, #9
   80F8 39            [11] 9388 	add	hl, sp
   80F9 F9            [ 6] 9389 	ld	sp, hl
                           9390 ;src/main.c:2129: SetEnemyParams(5, KNIGHT,	M_linear_XY, 	D_down,     1, 55,  38,   0,   0);
   80FA 21 00 00      [10] 9391 	ld	hl, #0x0000
   80FD E5            [11] 9392 	push	hl
   80FE 21 37 26      [10] 9393 	ld	hl, #0x2637
   8101 E5            [11] 9394 	push	hl
   8102 21 01 01      [10] 9395 	ld	hl, #0x0101
   8105 E5            [11] 9396 	push	hl
   8106 21 03 02      [10] 9397 	ld	hl, #0x0203
   8109 E5            [11] 9398 	push	hl
   810A 3E 05         [ 7] 9399 	ld	a, #0x05
   810C F5            [11] 9400 	push	af
   810D 33            [ 6] 9401 	inc	sp
   810E CD 0D 78      [17] 9402 	call	_SetEnemyParams
   8111 21 09 00      [10] 9403 	ld	hl, #9
   8114 39            [11] 9404 	add	hl, sp
   8115 F9            [ 6] 9405 	ld	sp, hl
                           9406 ;src/main.c:2131: spr[0].x = spr[0].px = 34; 
   8116 21 F7 48      [10] 9407 	ld	hl, #(_spr + 0x0004)
   8119 36 22         [10] 9408 	ld	(hl), #0x22
   811B 21 F5 48      [10] 9409 	ld	hl, #(_spr + 0x0002)
   811E 36 22         [10] 9410 	ld	(hl), #0x22
                           9411 ;src/main.c:2132: spr[0].y = spr[0].py = 176;			
   8120 21 F8 48      [10] 9412 	ld	hl, #(_spr + 0x0005)
   8123 36 B0         [10] 9413 	ld	(hl), #0xb0
   8125 21 F6 48      [10] 9414 	ld	hl, #(_spr + 0x0003)
   8128 36 B0         [10] 9415 	ld	(hl), #0xb0
                           9416 ;src/main.c:2134: cpct_zx7b_decrunch_s(UNPACKED_MAP_END, mappk11_end);
   812A 21 92 35      [10] 9417 	ld	hl, #(_mappk11 + 0x020b)
   812D E5            [11] 9418 	push	hl
   812E 21 00 16      [10] 9419 	ld	hl, #0x1600
   8131 E5            [11] 9420 	push	hl
   8132 CD 44 46      [17] 9421 	call	_cpct_zx7b_decrunch_s
                           9422 ;src/main.c:2136: lName = "6;2@@LIBRARY";
   8135 21 09 82      [10] 9423 	ld	hl, #___str_46+0
   8138 22 BC 48      [16] 9424 	ld	(_lName), hl
                           9425 ;src/main.c:2138: doorKey[0] = 13; // unicorn blood
   813B 21 C9 48      [10] 9426 	ld	hl, #_doorKey
   813E 36 0D         [10] 9427 	ld	(hl), #0x0d
                           9428 ;src/main.c:2139: doorKey[1] = 15; // mordor lava
   8140 21 CA 48      [10] 9429 	ld	hl, #(_doorKey + 0x0001)
   8143 36 0F         [10] 9430 	ld	(hl), #0x0f
                           9431 ;src/main.c:2140: doorKey[2] = 14; // troll fat
   8145 21 CB 48      [10] 9432 	ld	hl, #(_doorKey + 0x0002)
   8148 36 0E         [10] 9433 	ld	(hl), #0x0e
                           9434 ;src/main.c:2141: doorKey[3] = 15; // mordor lava
   814A 21 CC 48      [10] 9435 	ld	hl, #(_doorKey + 0x0003)
   814D 36 0F         [10] 9436 	ld	(hl), #0x0f
                           9437 ;src/main.c:2142: doorKey[4] = 13; // unicorn blood
   814F 21 CD 48      [10] 9438 	ld	hl, #(_doorKey + 0x0004)
   8152 36 0D         [10] 9439 	ld	(hl), #0x0d
                           9440 ;src/main.c:2144: storeX = 73;
   8154 21 D3 48      [10] 9441 	ld	hl,#_storeX + 0
   8157 36 49         [10] 9442 	ld	(hl), #0x49
                           9443 ;src/main.c:2145: storeY = 11;
   8159 21 D4 48      [10] 9444 	ld	hl,#_storeY + 0
   815C 36 0B         [10] 9445 	ld	(hl), #0x0b
                           9446 ;src/main.c:2148: }
   815E                    9447 00113$:
                           9448 ;src/main.c:2150: if (TwoPlayers) {
   815E 3A BE 48      [13] 9449 	ld	a,(#_TwoPlayers + 0)
   8161 B7            [ 4] 9450 	or	a, a
   8162 C8            [11] 9451 	ret	Z
                           9452 ;src/main.c:2151: spr[1].x = spr[1].px = spr[0].x + 6; 
   8163 01 04 49      [10] 9453 	ld	bc, #_spr + 17
   8166 11 06 49      [10] 9454 	ld	de, #_spr + 19
   8169 3A F5 48      [13] 9455 	ld	a, (#_spr + 2)
   816C C6 06         [ 7] 9456 	add	a, #0x06
   816E 12            [ 7] 9457 	ld	(de), a
   816F 02            [ 7] 9458 	ld	(bc), a
                           9459 ;src/main.c:2152: spr[1].y = spr[1].py = spr[0].y;
   8170 01 05 49      [10] 9460 	ld	bc, #_spr + 18
   8173 11 07 49      [10] 9461 	ld	de, #_spr + 20
   8176 3A F6 48      [13] 9462 	ld	a, (#_spr + 3)
   8179 12            [ 7] 9463 	ld	(de), a
   817A 02            [ 7] 9464 	ld	(bc), a
   817B C9            [10] 9465 	ret
   817C                    9466 ___str_35:
   817C 31 3B 31 40 40 47  9467 	.ascii "1;1@@GARDENS"
        41 52 44 45 4E 53
   8188 00                 9468 	.db 0x00
   8189                    9469 ___str_36:
   8189 31 3B 32 40 40 47  9470 	.ascii "1;2@@GARDENS"
        41 52 44 45 4E 53
   8195 00                 9471 	.db 0x00
   8196                    9472 ___str_37:
   8196 32 3B 31 40 43 45  9473 	.ascii "2;1@CEMETERY"
        4D 45 54 45 52 59
   81A2 00                 9474 	.db 0x00
   81A3                    9475 ___str_38:
   81A3 32 3B 32 40 43 45  9476 	.ascii "2;2@CEMETERY"
        4D 45 54 45 52 59
   81AF 00                 9477 	.db 0x00
   81B0                    9478 ___str_39:
   81B0 33 3B 31 40 40 43  9479 	.ascii "3;1@@CELLARS"
        45 4C 4C 41 52 53
   81BC 00                 9480 	.db 0x00
   81BD                    9481 ___str_40:
   81BD 33 3B 32 40 40 43  9482 	.ascii "3;2@@CELLARS"
        45 4C 4C 41 52 53
   81C9 00                 9483 	.db 0x00
   81CA                    9484 ___str_41:
   81CA 34 3B 31 40 40 40  9485 	.ascii "4;1@@@CASTLE"
        43 41 53 54 4C 45
   81D6 00                 9486 	.db 0x00
   81D7                    9487 ___str_42:
   81D7 34 3B 32 40 40 40  9488 	.ascii "4;2@@@CASTLE"
        43 41 53 54 4C 45
   81E3 00                 9489 	.db 0x00
   81E4                    9490 ___str_43:
   81E4 35 3B 31 40 40 40  9491 	.ascii "5;1@@@TOWER"
        54 4F 57 45 52
   81EF 00                 9492 	.db 0x00
   81F0                    9493 ___str_44:
   81F0 35 3B 32 40 40 40  9494 	.ascii "5;2@@@TOWER"
        54 4F 57 45 52
   81FB 00                 9495 	.db 0x00
   81FC                    9496 ___str_45:
   81FC 36 3B 31 40 40 4C  9497 	.ascii "6;1@@LIBRARY"
        49 42 52 41 52 59
   8208 00                 9498 	.db 0x00
   8209                    9499 ___str_46:
   8209 36 3B 32 40 40 4C  9500 	.ascii "6;2@@LIBRARY"
        49 42 52 41 52 59
   8215 00                 9501 	.db 0x00
                           9502 ;src/main.c:2158: void CheckEnemyCollision(u8 player, TSpr *pSpr) 
                           9503 ;	---------------------------------
                           9504 ; Function CheckEnemyCollision
                           9505 ; ---------------------------------
   8216                    9506 _CheckEnemyCollision::
   8216 DD E5         [15] 9507 	push	ix
   8218 DD 21 00 00   [14] 9508 	ld	ix,#0
   821C DD 39         [15] 9509 	add	ix,sp
   821E 21 F8 FF      [10] 9510 	ld	hl, #-8
   8221 39            [11] 9511 	add	hl, sp
   8222 F9            [ 6] 9512 	ld	sp, hl
                           9513 ;src/main.c:2160: if ((spr[player].x + SPR_W) > pSpr->x && spr[player].x < (pSpr->x + SPR_W) &&
   8223 01 F3 48      [10] 9514 	ld	bc, #_spr+0
   8226 DD 5E 04      [19] 9515 	ld	e,4 (ix)
   8229 16 00         [ 7] 9516 	ld	d,#0x00
   822B 6B            [ 4] 9517 	ld	l, e
   822C 62            [ 4] 9518 	ld	h, d
   822D 29            [11] 9519 	add	hl, hl
   822E 19            [11] 9520 	add	hl, de
   822F 29            [11] 9521 	add	hl, hl
   8230 19            [11] 9522 	add	hl, de
   8231 29            [11] 9523 	add	hl, hl
   8232 19            [11] 9524 	add	hl, de
   8233 09            [11] 9525 	add	hl,bc
   8234 5D            [ 4] 9526 	ld	e,l
   8235 54            [ 4] 9527 	ld	d,h
   8236 23            [ 6] 9528 	inc	hl
   8237 23            [ 6] 9529 	inc	hl
   8238 4E            [ 7] 9530 	ld	c, (hl)
   8239 06 00         [ 7] 9531 	ld	b, #0x00
   823B 21 05 00      [10] 9532 	ld	hl, #0x0005
   823E 09            [11] 9533 	add	hl,bc
   823F DD 75 FE      [19] 9534 	ld	-2 (ix), l
   8242 DD 74 FF      [19] 9535 	ld	-1 (ix), h
   8245 DD 7E 05      [19] 9536 	ld	a, 5 (ix)
   8248 DD 77 FC      [19] 9537 	ld	-4 (ix), a
   824B DD 7E 06      [19] 9538 	ld	a, 6 (ix)
   824E DD 77 FD      [19] 9539 	ld	-3 (ix), a
   8251 DD 6E FC      [19] 9540 	ld	l,-4 (ix)
   8254 DD 66 FD      [19] 9541 	ld	h,-3 (ix)
   8257 23            [ 6] 9542 	inc	hl
   8258 23            [ 6] 9543 	inc	hl
   8259 6E            [ 7] 9544 	ld	l, (hl)
   825A 26 00         [ 7] 9545 	ld	h, #0x00
                           9546 ;src/main.c:2161: (spr[player].y + SPR_H) > pSpr->y && spr[player].y < (pSpr->y + SPR_H)) {
   825C 13            [ 6] 9547 	inc	de
   825D 13            [ 6] 9548 	inc	de
   825E 13            [ 6] 9549 	inc	de
   825F 33            [ 6] 9550 	inc	sp
   8260 33            [ 6] 9551 	inc	sp
   8261 D5            [11] 9552 	push	de
                           9553 ;src/main.c:2160: if ((spr[player].x + SPR_W) > pSpr->x && spr[player].x < (pSpr->x + SPR_W) &&
   8262 7D            [ 4] 9554 	ld	a, l
   8263 DD 96 FE      [19] 9555 	sub	a, -2 (ix)
   8266 7C            [ 4] 9556 	ld	a, h
   8267 DD 9E FF      [19] 9557 	sbc	a, -1 (ix)
   826A E2 6F 82      [10] 9558 	jp	PO, 00153$
   826D EE 80         [ 7] 9559 	xor	a, #0x80
   826F                    9560 00153$:
   826F F2 DC 82      [10] 9561 	jp	P, 00110$
   8272 11 05 00      [10] 9562 	ld	de, #0x0005
   8275 19            [11] 9563 	add	hl, de
   8276 79            [ 4] 9564 	ld	a, c
   8277 95            [ 4] 9565 	sub	a, l
   8278 78            [ 4] 9566 	ld	a, b
   8279 9C            [ 4] 9567 	sbc	a, h
   827A E2 7F 82      [10] 9568 	jp	PO, 00154$
   827D EE 80         [ 7] 9569 	xor	a, #0x80
   827F                    9570 00154$:
   827F F2 DC 82      [10] 9571 	jp	P, 00110$
                           9572 ;src/main.c:2161: (spr[player].y + SPR_H) > pSpr->y && spr[player].y < (pSpr->y + SPR_H)) {
   8282 E1            [10] 9573 	pop	hl
   8283 E5            [11] 9574 	push	hl
   8284 5E            [ 7] 9575 	ld	e, (hl)
   8285 16 00         [ 7] 9576 	ld	d, #0x00
   8287 21 0C 00      [10] 9577 	ld	hl, #0x000c
   828A 19            [11] 9578 	add	hl,de
   828B DD 75 FA      [19] 9579 	ld	-6 (ix), l
   828E DD 74 FB      [19] 9580 	ld	-5 (ix), h
   8291 DD 6E FC      [19] 9581 	ld	l,-4 (ix)
   8294 DD 66 FD      [19] 9582 	ld	h,-3 (ix)
   8297 23            [ 6] 9583 	inc	hl
   8298 23            [ 6] 9584 	inc	hl
   8299 23            [ 6] 9585 	inc	hl
   829A 6E            [ 7] 9586 	ld	l, (hl)
   829B 26 00         [ 7] 9587 	ld	h, #0x00
   829D 7D            [ 4] 9588 	ld	a, l
   829E DD 96 FA      [19] 9589 	sub	a, -6 (ix)
   82A1 7C            [ 4] 9590 	ld	a, h
   82A2 DD 9E FB      [19] 9591 	sbc	a, -5 (ix)
   82A5 E2 AA 82      [10] 9592 	jp	PO, 00155$
   82A8 EE 80         [ 7] 9593 	xor	a, #0x80
   82AA                    9594 00155$:
   82AA F2 DC 82      [10] 9595 	jp	P, 00110$
   82AD D5            [11] 9596 	push	de
   82AE 11 0C 00      [10] 9597 	ld	de, #0x000c
   82B1 19            [11] 9598 	add	hl, de
   82B2 D1            [10] 9599 	pop	de
   82B3 7B            [ 4] 9600 	ld	a, e
   82B4 95            [ 4] 9601 	sub	a, l
   82B5 7A            [ 4] 9602 	ld	a, d
   82B6 9C            [ 4] 9603 	sbc	a, h
   82B7 E2 BC 82      [10] 9604 	jp	PO, 00156$
   82BA EE 80         [ 7] 9605 	xor	a, #0x80
   82BC                    9606 00156$:
   82BC F2 DC 82      [10] 9607 	jp	P, 00110$
                           9608 ;src/main.c:2163: ExplodeSprite(player, pSpr->num);			
   82BF DD 6E FC      [19] 9609 	ld	l,-4 (ix)
   82C2 DD 66 FD      [19] 9610 	ld	h,-3 (ix)
   82C5 46            [ 7] 9611 	ld	b, (hl)
   82C6 C5            [11] 9612 	push	bc
   82C7 33            [ 6] 9613 	inc	sp
   82C8 DD 7E 04      [19] 9614 	ld	a, 4 (ix)
   82CB F5            [11] 9615 	push	af
   82CC 33            [ 6] 9616 	inc	sp
   82CD CD AA 65      [17] 9617 	call	_ExplodeSprite
   82D0 F1            [10] 9618 	pop	af
                           9619 ;src/main.c:2164: GameOver(player);
   82D1 DD 7E 04      [19] 9620 	ld	a, 4 (ix)
   82D4 F5            [11] 9621 	push	af
   82D5 33            [ 6] 9622 	inc	sp
   82D6 CD 95 8A      [17] 9623 	call	_GameOver
   82D9 33            [ 6] 9624 	inc	sp
   82DA 18 76         [12] 9625 	jr	00115$
   82DC                    9626 00110$:
                           9627 ;src/main.c:2167: else if (sht.active) {
   82DC 3A 60 49      [13] 9628 	ld	a, (#_sht + 4)
   82DF B7            [ 4] 9629 	or	a, a
   82E0 28 70         [12] 9630 	jr	Z,00115$
                           9631 ;src/main.c:2168: if ((sht.x + SHT_W) > (spr[player].x) && sht.x < (spr[player].x + SPR_W))
   82E2 21 5C 49      [10] 9632 	ld	hl, #_sht + 0
   82E5 5E            [ 7] 9633 	ld	e, (hl)
   82E6 16 00         [ 7] 9634 	ld	d, #0x00
   82E8 21 04 00      [10] 9635 	ld	hl, #0x0004
   82EB 19            [11] 9636 	add	hl, de
   82EC 79            [ 4] 9637 	ld	a, c
   82ED 95            [ 4] 9638 	sub	a, l
   82EE 78            [ 4] 9639 	ld	a, b
   82EF 9C            [ 4] 9640 	sbc	a, h
   82F0 E2 F5 82      [10] 9641 	jp	PO, 00157$
   82F3 EE 80         [ 7] 9642 	xor	a, #0x80
   82F5                    9643 00157$:
   82F5 F2 52 83      [10] 9644 	jp	P, 00115$
   82F8 7B            [ 4] 9645 	ld	a, e
   82F9 DD 96 FE      [19] 9646 	sub	a, -2 (ix)
   82FC 7A            [ 4] 9647 	ld	a, d
   82FD DD 9E FF      [19] 9648 	sbc	a, -1 (ix)
   8300 E2 05 83      [10] 9649 	jp	PO, 00158$
   8303 EE 80         [ 7] 9650 	xor	a, #0x80
   8305                    9651 00158$:
   8305 F2 52 83      [10] 9652 	jp	P, 00115$
                           9653 ;src/main.c:2169: if ((sht.y + SHT_H) > (spr[player].y) && (sht.y) < (spr[player].y + SPR_H))	{
   8308 21 5D 49      [10] 9654 	ld	hl, #_sht + 1
   830B 4E            [ 7] 9655 	ld	c, (hl)
   830C 06 00         [ 7] 9656 	ld	b, #0x00
   830E 21 08 00      [10] 9657 	ld	hl, #0x0008
   8311 09            [11] 9658 	add	hl,bc
   8312 EB            [ 4] 9659 	ex	de,hl
   8313 E1            [10] 9660 	pop	hl
   8314 E5            [11] 9661 	push	hl
   8315 6E            [ 7] 9662 	ld	l, (hl)
   8316 26 00         [ 7] 9663 	ld	h, #0x00
   8318 7D            [ 4] 9664 	ld	a, l
   8319 93            [ 4] 9665 	sub	a, e
   831A 7C            [ 4] 9666 	ld	a, h
   831B 9A            [ 4] 9667 	sbc	a, d
   831C E2 21 83      [10] 9668 	jp	PO, 00159$
   831F EE 80         [ 7] 9669 	xor	a, #0x80
   8321                    9670 00159$:
   8321 F2 52 83      [10] 9671 	jp	P, 00115$
   8324 11 0C 00      [10] 9672 	ld	de, #0x000c
   8327 19            [11] 9673 	add	hl, de
   8328 79            [ 4] 9674 	ld	a, c
   8329 95            [ 4] 9675 	sub	a, l
   832A 78            [ 4] 9676 	ld	a, b
   832B 9C            [ 4] 9677 	sbc	a, h
   832C E2 31 83      [10] 9678 	jp	PO, 00160$
   832F EE 80         [ 7] 9679 	xor	a, #0x80
   8331                    9680 00160$:
   8331 F2 52 83      [10] 9681 	jp	P, 00115$
                           9682 ;src/main.c:2171: DeleteShot();
   8334 CD 5B 71      [17] 9683 	call	_DeleteShot
                           9684 ;src/main.c:2172: ExplodeSprite(player, pSpr->num);			
   8337 DD 6E FC      [19] 9685 	ld	l,-4 (ix)
   833A DD 66 FD      [19] 9686 	ld	h,-3 (ix)
   833D 46            [ 7] 9687 	ld	b, (hl)
   833E C5            [11] 9688 	push	bc
   833F 33            [ 6] 9689 	inc	sp
   8340 DD 7E 04      [19] 9690 	ld	a, 4 (ix)
   8343 F5            [11] 9691 	push	af
   8344 33            [ 6] 9692 	inc	sp
   8345 CD AA 65      [17] 9693 	call	_ExplodeSprite
   8348 F1            [10] 9694 	pop	af
                           9695 ;src/main.c:2173: GameOver(player);
   8349 DD 7E 04      [19] 9696 	ld	a, 4 (ix)
   834C F5            [11] 9697 	push	af
   834D 33            [ 6] 9698 	inc	sp
   834E CD 95 8A      [17] 9699 	call	_GameOver
   8351 33            [ 6] 9700 	inc	sp
   8352                    9701 00115$:
   8352 DD F9         [10] 9702 	ld	sp, ix
   8354 DD E1         [14] 9703 	pop	ix
   8356 C9            [10] 9704 	ret
                           9705 ;src/main.c:2180: void EnemyLoop(TSpr *pSpr) __z88dk_fastcall {
                           9706 ;	---------------------------------
                           9707 ; Function EnemyLoop
                           9708 ; ---------------------------------
   8357                    9709 _EnemyLoop::
                           9710 ;src/main.c:2181: if (pSpr->ident == NOBODY) 
   8357 4D            [ 4] 9711 	ld	c,l
   8358 44            [ 4] 9712 	ld	b,h
   8359 23            [ 6] 9713 	inc	hl
   835A 7E            [ 7] 9714 	ld	a, (hl)
   835B D6 09         [ 7] 9715 	sub	a, #0x09
   835D C8            [11] 9716 	ret	Z
                           9717 ;src/main.c:2182: return; 
   835E 18 00         [12] 9718 	jr	00102$
   8360                    9719 00102$:
                           9720 ;src/main.c:2184: MoveEnemy(pSpr);
   8360 C5            [11] 9721 	push	bc
   8361 C5            [11] 9722 	push	bc
   8362 CD 7D 73      [17] 9723 	call	_MoveEnemy
   8365 F1            [10] 9724 	pop	af
   8366 C1            [10] 9725 	pop	bc
                           9726 ;src/main.c:2186: SelectFrame(pSpr); 
   8367 C5            [11] 9727 	push	bc
   8368 69            [ 4] 9728 	ld	l, c
   8369 60            [ 4] 9729 	ld	h, b
   836A CD EE 62      [17] 9730 	call	_SelectFrame
   836D C1            [10] 9731 	pop	bc
                           9732 ;src/main.c:2187: WalkAnim(pSpr, pSpr->dir);
   836E C5            [11] 9733 	push	bc
   836F FD E1         [14] 9734 	pop	iy
   8371 FD 56 07      [19] 9735 	ld	d, 7 (iy)
   8374 C5            [11] 9736 	push	bc
   8375 D5            [11] 9737 	push	de
   8376 33            [ 6] 9738 	inc	sp
   8377 C5            [11] 9739 	push	bc
   8378 CD 89 6A      [17] 9740 	call	_WalkAnim
   837B F1            [10] 9741 	pop	af
   837C 33            [ 6] 9742 	inc	sp
   837D C1            [10] 9743 	pop	bc
                           9744 ;src/main.c:2189: DeleteSprite(pSpr);
   837E C5            [11] 9745 	push	bc
   837F 69            [ 4] 9746 	ld	l, c
   8380 60            [ 4] 9747 	ld	h, b
   8381 CD 39 62      [17] 9748 	call	_DeleteSprite
   8384 C1            [10] 9749 	pop	bc
                           9750 ;src/main.c:2190: pSpr->px = pSpr->x; // save the current X coordinate
   8385 21 04 00      [10] 9751 	ld	hl, #0x0004
   8388 09            [11] 9752 	add	hl,bc
   8389 EB            [ 4] 9753 	ex	de,hl
   838A 69            [ 4] 9754 	ld	l, c
   838B 60            [ 4] 9755 	ld	h, b
   838C 23            [ 6] 9756 	inc	hl
   838D 23            [ 6] 9757 	inc	hl
   838E 7E            [ 7] 9758 	ld	a, (hl)
   838F 12            [ 7] 9759 	ld	(de), a
                           9760 ;src/main.c:2191: pSpr->py = pSpr->y; // save the current Y coordinate
   8390 21 05 00      [10] 9761 	ld	hl, #0x0005
   8393 09            [11] 9762 	add	hl,bc
   8394 EB            [ 4] 9763 	ex	de,hl
   8395 69            [ 4] 9764 	ld	l, c
   8396 60            [ 4] 9765 	ld	h, b
   8397 23            [ 6] 9766 	inc	hl
   8398 23            [ 6] 9767 	inc	hl
   8399 23            [ 6] 9768 	inc	hl
   839A 7E            [ 7] 9769 	ld	a, (hl)
   839B 12            [ 7] 9770 	ld	(de), a
                           9771 ;src/main.c:2192: PrintSprite(pSpr);
   839C C5            [11] 9772 	push	bc
   839D 69            [ 4] 9773 	ld	l, c
   839E 60            [ 4] 9774 	ld	h, b
   839F CD 0A 62      [17] 9775 	call	_PrintSprite
   83A2 C1            [10] 9776 	pop	bc
                           9777 ;src/main.c:2194: CheckEnemyCollision(0, pSpr);
   83A3 C5            [11] 9778 	push	bc
   83A4 C5            [11] 9779 	push	bc
   83A5 AF            [ 4] 9780 	xor	a, a
   83A6 F5            [11] 9781 	push	af
   83A7 33            [ 6] 9782 	inc	sp
   83A8 CD 16 82      [17] 9783 	call	_CheckEnemyCollision
   83AB F1            [10] 9784 	pop	af
   83AC 33            [ 6] 9785 	inc	sp
   83AD C1            [10] 9786 	pop	bc
                           9787 ;src/main.c:2195: if (TwoPlayers)
   83AE 3A BE 48      [13] 9788 	ld	a,(#_TwoPlayers + 0)
   83B1 B7            [ 4] 9789 	or	a, a
   83B2 C8            [11] 9790 	ret	Z
                           9791 ;src/main.c:2196: CheckEnemyCollision(1, pSpr);
   83B3 C5            [11] 9792 	push	bc
   83B4 3E 01         [ 7] 9793 	ld	a, #0x01
   83B6 F5            [11] 9794 	push	af
   83B7 33            [ 6] 9795 	inc	sp
   83B8 CD 16 82      [17] 9796 	call	_CheckEnemyCollision
   83BB F1            [10] 9797 	pop	af
   83BC 33            [ 6] 9798 	inc	sp
   83BD C9            [10] 9799 	ret
                           9800 ;src/main.c:2212: void PrintStartMenu() {
                           9801 ;	---------------------------------
                           9802 ; Function PrintStartMenu
                           9803 ; ---------------------------------
   83BE                    9804 _PrintStartMenu::
                           9805 ;src/main.c:2213: ClearScreen();
   83BE CD 8C 4B      [17] 9806 	call	_ClearScreen
                           9807 ;src/main.c:2216: cpct_drawSprite(g_logo_0, cpctm_screenPtr(CPCT_VMEM_START, 0, 0), G_LOGO_0_W, G_LOGO_0_H);
   83C1 21 28 23      [10] 9808 	ld	hl, #0x2328
   83C4 E5            [11] 9809 	push	hl
   83C5 21 00 C0      [10] 9810 	ld	hl, #0xc000
   83C8 E5            [11] 9811 	push	hl
   83C9 21 B7 16      [10] 9812 	ld	hl, #_g_logo_0
   83CC E5            [11] 9813 	push	hl
   83CD CD 56 44      [17] 9814 	call	_cpct_drawSprite
                           9815 ;src/main.c:2217: cpct_drawSprite(g_logo_1, cpctm_screenPtr(CPCT_VMEM_START, G_LOGO_0_W, 0), G_LOGO_0_W, G_LOGO_0_H);
   83D0 21 28 23      [10] 9816 	ld	hl, #0x2328
   83D3 E5            [11] 9817 	push	hl
   83D4 26 C0         [ 7] 9818 	ld	h, #0xc0
   83D6 E5            [11] 9819 	push	hl
   83D7 21 2F 1C      [10] 9820 	ld	hl, #_g_logo_1
   83DA E5            [11] 9821 	push	hl
   83DB CD 56 44      [17] 9822 	call	_cpct_drawSprite
                           9823 ;src/main.c:2219: PrintText("1@@1@PLAYER@GAME", 10, 50, 0);
   83DE 21 32 00      [10] 9824 	ld	hl, #0x0032
   83E1 E5            [11] 9825 	push	hl
   83E2 3E 0A         [ 7] 9826 	ld	a, #0x0a
   83E4 F5            [11] 9827 	push	af
   83E5 33            [ 6] 9828 	inc	sp
   83E6 21 ED 84      [10] 9829 	ld	hl, #___str_47
   83E9 E5            [11] 9830 	push	hl
   83EA CD E6 4C      [17] 9831 	call	_PrintText
   83ED F1            [10] 9832 	pop	af
                           9833 ;src/main.c:2220: PrintText("2@@2@PLAYER@GAME", 10, 60, 0);
   83EE 33            [ 6] 9834 	inc	sp
   83EF 21 3C 00      [10] 9835 	ld	hl,#0x003c
   83F2 E3            [19] 9836 	ex	(sp),hl
   83F3 3E 0A         [ 7] 9837 	ld	a, #0x0a
   83F5 F5            [11] 9838 	push	af
   83F6 33            [ 6] 9839 	inc	sp
   83F7 21 FE 84      [10] 9840 	ld	hl, #___str_48
   83FA E5            [11] 9841 	push	hl
   83FB CD E6 4C      [17] 9842 	call	_PrintText
   83FE F1            [10] 9843 	pop	af
                           9844 ;src/main.c:2221: PrintText("3@@REDEFINE@CONTROLS", 10, 70, 0);
   83FF 33            [ 6] 9845 	inc	sp
   8400 21 46 00      [10] 9846 	ld	hl,#0x0046
   8403 E3            [19] 9847 	ex	(sp),hl
   8404 3E 0A         [ 7] 9848 	ld	a, #0x0a
   8406 F5            [11] 9849 	push	af
   8407 33            [ 6] 9850 	inc	sp
   8408 21 0F 85      [10] 9851 	ld	hl, #___str_49
   840B E5            [11] 9852 	push	hl
   840C CD E6 4C      [17] 9853 	call	_PrintText
   840F F1            [10] 9854 	pop	af
   8410 F1            [10] 9855 	pop	af
   8411 33            [ 6] 9856 	inc	sp
                           9857 ;src/main.c:2222: if (turboMode)
   8412 3A D8 48      [13] 9858 	ld	a,(#_turboMode + 0)
   8415 B7            [ 4] 9859 	or	a, a
   8416 28 14         [12] 9860 	jr	Z,00102$
                           9861 ;src/main.c:2223: PrintText("4@@TURBO@MODE:@ON", 10, 80, 0);
   8418 21 50 00      [10] 9862 	ld	hl, #0x0050
   841B E5            [11] 9863 	push	hl
   841C 3E 0A         [ 7] 9864 	ld	a, #0x0a
   841E F5            [11] 9865 	push	af
   841F 33            [ 6] 9866 	inc	sp
   8420 21 24 85      [10] 9867 	ld	hl, #___str_50
   8423 E5            [11] 9868 	push	hl
   8424 CD E6 4C      [17] 9869 	call	_PrintText
   8427 F1            [10] 9870 	pop	af
   8428 F1            [10] 9871 	pop	af
   8429 33            [ 6] 9872 	inc	sp
   842A 18 12         [12] 9873 	jr	00103$
   842C                    9874 00102$:
                           9875 ;src/main.c:2225: PrintText("4@@TURBO@MODE:@OFF", 10, 80, 0);
   842C 21 50 00      [10] 9876 	ld	hl, #0x0050
   842F E5            [11] 9877 	push	hl
   8430 3E 0A         [ 7] 9878 	ld	a, #0x0a
   8432 F5            [11] 9879 	push	af
   8433 33            [ 6] 9880 	inc	sp
   8434 21 36 85      [10] 9881 	ld	hl, #___str_51
   8437 E5            [11] 9882 	push	hl
   8438 CD E6 4C      [17] 9883 	call	_PrintText
   843B F1            [10] 9884 	pop	af
   843C F1            [10] 9885 	pop	af
   843D 33            [ 6] 9886 	inc	sp
   843E                    9887 00103$:
                           9888 ;src/main.c:2229: cpct_getScreenPtr(CPCT_VMEM_START, 6, 187), SPR_W, SPR_H, g_maskTable);
   843E 21 06 BB      [10] 9889 	ld	hl, #0xbb06
   8441 E5            [11] 9890 	push	hl
   8442 21 00 C0      [10] 9891 	ld	hl, #0xc000
   8445 E5            [11] 9892 	push	hl
   8446 CD B9 47      [17] 9893 	call	_cpct_getScreenPtr
                           9894 ;src/main.c:2228: cpct_drawSpriteMaskedAlignedTable(g_sorcerer1_06, 
   8449 01 D7 2D      [10] 9895 	ld	bc, #_g_sorcerer1_06+0
   844C 11 00 01      [10] 9896 	ld	de, #_g_maskTable
   844F D5            [11] 9897 	push	de
   8450 11 05 0C      [10] 9898 	ld	de, #0x0c05
   8453 D5            [11] 9899 	push	de
   8454 E5            [11] 9900 	push	hl
   8455 C5            [11] 9901 	push	bc
   8456 CD CF 47      [17] 9902 	call	_cpct_drawSpriteMaskedAlignedTable
                           9903 ;src/main.c:2231: cpct_getScreenPtr(CPCT_VMEM_START, 68, 187), SPR_W, SPR_H, g_maskTable);
   8459 21 44 BB      [10] 9904 	ld	hl, #0xbb44
   845C E5            [11] 9905 	push	hl
   845D 21 00 C0      [10] 9906 	ld	hl, #0xc000
   8460 E5            [11] 9907 	push	hl
   8461 CD B9 47      [17] 9908 	call	_cpct_getScreenPtr
                           9909 ;src/main.c:2230: cpct_drawSpriteMaskedAlignedTable(g_sorcerer2_04, 
   8464 01 07 2B      [10] 9910 	ld	bc, #_g_sorcerer2_04+0
   8467 11 00 01      [10] 9911 	ld	de, #_g_maskTable
   846A D5            [11] 9912 	push	de
   846B 11 05 0C      [10] 9913 	ld	de, #0x0c05
   846E D5            [11] 9914 	push	de
   846F E5            [11] 9915 	push	hl
   8470 C5            [11] 9916 	push	bc
   8471 CD CF 47      [17] 9917 	call	_cpct_drawSpriteMaskedAlignedTable
                           9918 ;src/main.c:2233: PrintText("CODE@=@GFX", 25, 110, 0);
   8474 21 6E 00      [10] 9919 	ld	hl, #0x006e
   8477 E5            [11] 9920 	push	hl
   8478 3E 19         [ 7] 9921 	ld	a, #0x19
   847A F5            [11] 9922 	push	af
   847B 33            [ 6] 9923 	inc	sp
   847C 21 49 85      [10] 9924 	ld	hl, #___str_52
   847F E5            [11] 9925 	push	hl
   8480 CD E6 4C      [17] 9926 	call	_PrintText
   8483 F1            [10] 9927 	pop	af
                           9928 ;src/main.c:2234: PrintText("SALVAKANTERO", 22, 120, 0);
   8484 33            [ 6] 9929 	inc	sp
   8485 21 78 00      [10] 9930 	ld	hl,#0x0078
   8488 E3            [19] 9931 	ex	(sp),hl
   8489 3E 16         [ 7] 9932 	ld	a, #0x16
   848B F5            [11] 9933 	push	af
   848C 33            [ 6] 9934 	inc	sp
   848D 21 54 85      [10] 9935 	ld	hl, #___str_53
   8490 E5            [11] 9936 	push	hl
   8491 CD E6 4C      [17] 9937 	call	_PrintText
   8494 F1            [10] 9938 	pop	af
                           9939 ;src/main.c:2235: PrintText("MUSIC@=@FX", 25, 135, 0);
   8495 33            [ 6] 9940 	inc	sp
   8496 21 87 00      [10] 9941 	ld	hl,#0x0087
   8499 E3            [19] 9942 	ex	(sp),hl
   849A 3E 19         [ 7] 9943 	ld	a, #0x19
   849C F5            [11] 9944 	push	af
   849D 33            [ 6] 9945 	inc	sp
   849E 21 61 85      [10] 9946 	ld	hl, #___str_54
   84A1 E5            [11] 9947 	push	hl
   84A2 CD E6 4C      [17] 9948 	call	_PrintText
   84A5 F1            [10] 9949 	pop	af
                           9950 ;src/main.c:2236: PrintText("MCKLAIN", 30, 145, 0);
   84A6 33            [ 6] 9951 	inc	sp
   84A7 21 91 00      [10] 9952 	ld	hl,#0x0091
   84AA E3            [19] 9953 	ex	(sp),hl
   84AB 3E 1E         [ 7] 9954 	ld	a, #0x1e
   84AD F5            [11] 9955 	push	af
   84AE 33            [ 6] 9956 	inc	sp
   84AF 21 6C 85      [10] 9957 	ld	hl, #___str_55
   84B2 E5            [11] 9958 	push	hl
   84B3 CD E6 4C      [17] 9959 	call	_PrintText
   84B6 F1            [10] 9960 	pop	af
                           9961 ;src/main.c:2237: PrintText("BETA@TESTING", 22, 160, 0);
   84B7 33            [ 6] 9962 	inc	sp
   84B8 21 A0 00      [10] 9963 	ld	hl,#0x00a0
   84BB E3            [19] 9964 	ex	(sp),hl
   84BC 3E 16         [ 7] 9965 	ld	a, #0x16
   84BE F5            [11] 9966 	push	af
   84BF 33            [ 6] 9967 	inc	sp
   84C0 21 74 85      [10] 9968 	ld	hl, #___str_56
   84C3 E5            [11] 9969 	push	hl
   84C4 CD E6 4C      [17] 9970 	call	_PrintText
   84C7 F1            [10] 9971 	pop	af
                           9972 ;src/main.c:2238: PrintText("BLACKMORES", 25, 170, 0);
   84C8 33            [ 6] 9973 	inc	sp
   84C9 21 AA 00      [10] 9974 	ld	hl,#0x00aa
   84CC E3            [19] 9975 	ex	(sp),hl
   84CD 3E 19         [ 7] 9976 	ld	a, #0x19
   84CF F5            [11] 9977 	push	af
   84D0 33            [ 6] 9978 	inc	sp
   84D1 21 81 85      [10] 9979 	ld	hl, #___str_57
   84D4 E5            [11] 9980 	push	hl
   84D5 CD E6 4C      [17] 9981 	call	_PrintText
   84D8 F1            [10] 9982 	pop	af
                           9983 ;src/main.c:2240: PrintText("PLAY@ON@RETRO@2020", 13, 190, 0);
   84D9 33            [ 6] 9984 	inc	sp
   84DA 21 BE 00      [10] 9985 	ld	hl,#0x00be
   84DD E3            [19] 9986 	ex	(sp),hl
   84DE 3E 0D         [ 7] 9987 	ld	a, #0x0d
   84E0 F5            [11] 9988 	push	af
   84E1 33            [ 6] 9989 	inc	sp
   84E2 21 8C 85      [10] 9990 	ld	hl, #___str_58
   84E5 E5            [11] 9991 	push	hl
   84E6 CD E6 4C      [17] 9992 	call	_PrintText
   84E9 F1            [10] 9993 	pop	af
   84EA F1            [10] 9994 	pop	af
   84EB 33            [ 6] 9995 	inc	sp
   84EC C9            [10] 9996 	ret
   84ED                    9997 ___str_47:
   84ED 31 40 40 31 40 50  9998 	.ascii "1@@1@PLAYER@GAME"
        4C 41 59 45 52 40
        47 41 4D 45
   84FD 00                 9999 	.db 0x00
   84FE                   10000 ___str_48:
   84FE 32 40 40 32 40 50 10001 	.ascii "2@@2@PLAYER@GAME"
        4C 41 59 45 52 40
        47 41 4D 45
   850E 00                10002 	.db 0x00
   850F                   10003 ___str_49:
   850F 33 40 40 52 45 44 10004 	.ascii "3@@REDEFINE@CONTROLS"
        45 46 49 4E 45 40
        43 4F 4E 54 52 4F
        4C 53
   8523 00                10005 	.db 0x00
   8524                   10006 ___str_50:
   8524 34 40 40 54 55 52 10007 	.ascii "4@@TURBO@MODE:@ON"
        42 4F 40 4D 4F 44
        45 3A 40 4F 4E
   8535 00                10008 	.db 0x00
   8536                   10009 ___str_51:
   8536 34 40 40 54 55 52 10010 	.ascii "4@@TURBO@MODE:@OFF"
        42 4F 40 4D 4F 44
        45 3A 40 4F 46 46
   8548 00                10011 	.db 0x00
   8549                   10012 ___str_52:
   8549 43 4F 44 45 40 3D 10013 	.ascii "CODE@=@GFX"
        40 47 46 58
   8553 00                10014 	.db 0x00
   8554                   10015 ___str_53:
   8554 53 41 4C 56 41 4B 10016 	.ascii "SALVAKANTERO"
        41 4E 54 45 52 4F
   8560 00                10017 	.db 0x00
   8561                   10018 ___str_54:
   8561 4D 55 53 49 43 40 10019 	.ascii "MUSIC@=@FX"
        3D 40 46 58
   856B 00                10020 	.db 0x00
   856C                   10021 ___str_55:
   856C 4D 43 4B 4C 41 49 10022 	.ascii "MCKLAIN"
        4E
   8573 00                10023 	.db 0x00
   8574                   10024 ___str_56:
   8574 42 45 54 41 40 54 10025 	.ascii "BETA@TESTING"
        45 53 54 49 4E 47
   8580 00                10026 	.db 0x00
   8581                   10027 ___str_57:
   8581 42 4C 41 43 4B 4D 10028 	.ascii "BLACKMORES"
        4F 52 45 53
   858B 00                10029 	.db 0x00
   858C                   10030 ___str_58:
   858C 50 4C 41 59 40 4F 10031 	.ascii "PLAY@ON@RETRO@2020"
        4E 40 52 45 54 52
        4F 40 32 30 32 30
   859E 00                10032 	.db 0x00
                          10033 ;src/main.c:2245: void PrintObjInfo() {
                          10034 ;	---------------------------------
                          10035 ; Function PrintObjInfo
                          10036 ; ---------------------------------
   859F                   10037 _PrintObjInfo::
                          10038 ;src/main.c:2248: ClearScreen();
   859F CD 8C 4B      [17]10039 	call	_ClearScreen
                          10040 ;src/main.c:2249: PrintText("INGREDIENT@VALUES", 13, 0, 0);
   85A2 21 00 00      [10]10041 	ld	hl, #0x0000
   85A5 E5            [11]10042 	push	hl
   85A6 3E 0D         [ 7]10043 	ld	a, #0x0d
   85A8 F5            [11]10044 	push	af
   85A9 33            [ 6]10045 	inc	sp
   85AA 21 05 87      [10]10046 	ld	hl, #___str_59
   85AD E5            [11]10047 	push	hl
   85AE CD E6 4C      [17]10048 	call	_PrintText
   85B1 F1            [10]10049 	pop	af
                          10050 ;src/main.c:2251: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 3, 12), cpct_px2byteM0(4, 4), 37, 188);
   85B2 33            [ 6]10051 	inc	sp
   85B3 21 04 04      [10]10052 	ld	hl,#0x0404
   85B6 E3            [19]10053 	ex	(sp),hl
   85B7 CD 9D 46      [17]10054 	call	_cpct_px2byteM0
   85BA 26 00         [ 7]10055 	ld	h, #0x00
   85BC 01 25 BC      [10]10056 	ld	bc, #0xbc25
   85BF C5            [11]10057 	push	bc
   85C0 E5            [11]10058 	push	hl
   85C1 21 53 E0      [10]10059 	ld	hl, #0xe053
   85C4 E5            [11]10060 	push	hl
   85C5 CD D7 46      [17]10061 	call	_cpct_drawSolidBox
                          10062 ;src/main.c:2252: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 40, 12), cpct_px2byteM0(4, 4), 35, 188);	
   85C8 21 04 04      [10]10063 	ld	hl, #0x0404
   85CB E5            [11]10064 	push	hl
   85CC CD 9D 46      [17]10065 	call	_cpct_px2byteM0
   85CF 26 00         [ 7]10066 	ld	h, #0x00
   85D1 01 23 BC      [10]10067 	ld	bc, #0xbc23
   85D4 C5            [11]10068 	push	bc
   85D5 E5            [11]10069 	push	hl
   85D6 21 78 E0      [10]10070 	ld	hl, #0xe078
   85D9 E5            [11]10071 	push	hl
   85DA CD D7 46      [17]10072 	call	_cpct_drawSolidBox
                          10073 ;src/main.c:2253: PrintFrame(3,12,72,194);
   85DD 21 48 C2      [10]10074 	ld	hl, #0xc248
   85E0 E5            [11]10075 	push	hl
   85E1 21 03 0C      [10]10076 	ld	hl, #0x0c03
   85E4 E5            [11]10077 	push	hl
   85E5 CD 89 4D      [17]10078 	call	_PrintFrame
   85E8 F1            [10]10079 	pop	af
   85E9 F1            [10]10080 	pop	af
                          10081 ;src/main.c:2255: for (obj=4; obj<16; obj++) {
   85EA 01 04 19      [10]10082 	ld	bc,#0x1904
   85ED                   10083 00102$:
                          10084 ;src/main.c:2256: PrintObject(obj, 7, yPos);
   85ED C5            [11]10085 	push	bc
   85EE C5            [11]10086 	push	bc
   85EF 33            [ 6]10087 	inc	sp
   85F0 06 07         [ 7]10088 	ld	b, #0x07
   85F2 C5            [11]10089 	push	bc
   85F3 CD 5C 57      [17]10090 	call	_PrintObject
   85F6 F1            [10]10091 	pop	af
   85F7 33            [ 6]10092 	inc	sp
   85F8 C1            [10]10093 	pop	bc
                          10094 ;src/main.c:2257: PrintNumber(obj-3, 2, 62, yPos, 0); PrintText("<", 68, yPos, 0);
   85F9 59            [ 4]10095 	ld	e, c
   85FA 16 00         [ 7]10096 	ld	d, #0x00
   85FC 7B            [ 4]10097 	ld	a, e
   85FD C6 FD         [ 7]10098 	add	a, #0xfd
   85FF 5F            [ 4]10099 	ld	e, a
   8600 7A            [ 4]10100 	ld	a, d
   8601 CE FF         [ 7]10101 	adc	a, #0xff
   8603 57            [ 4]10102 	ld	d, a
   8604 C5            [11]10103 	push	bc
   8605 AF            [ 4]10104 	xor	a, a
   8606 F5            [11]10105 	push	af
   8607 33            [ 6]10106 	inc	sp
   8608 C5            [11]10107 	push	bc
   8609 33            [ 6]10108 	inc	sp
   860A 21 02 3E      [10]10109 	ld	hl, #0x3e02
   860D E5            [11]10110 	push	hl
   860E D5            [11]10111 	push	de
   860F CD 17 4C      [17]10112 	call	_PrintNumber
   8612 21 06 00      [10]10113 	ld	hl, #6
   8615 39            [11]10114 	add	hl, sp
   8616 F9            [ 6]10115 	ld	sp, hl
   8617 C1            [10]10116 	pop	bc
   8618 C5            [11]10117 	push	bc
   8619 AF            [ 4]10118 	xor	a, a
   861A F5            [11]10119 	push	af
   861B 33            [ 6]10120 	inc	sp
   861C C5            [11]10121 	push	bc
   861D 33            [ 6]10122 	inc	sp
   861E 3E 44         [ 7]10123 	ld	a, #0x44
   8620 F5            [11]10124 	push	af
   8621 33            [ 6]10125 	inc	sp
   8622 21 17 87      [10]10126 	ld	hl, #___str_60
   8625 E5            [11]10127 	push	hl
   8626 CD E6 4C      [17]10128 	call	_PrintText
   8629 F1            [10]10129 	pop	af
   862A F1            [10]10130 	pop	af
   862B 33            [ 6]10131 	inc	sp
   862C C1            [10]10132 	pop	bc
                          10133 ;src/main.c:2258: yPos += 14;
   862D 78            [ 4]10134 	ld	a, b
   862E C6 0E         [ 7]10135 	add	a, #0x0e
   8630 47            [ 4]10136 	ld	b, a
                          10137 ;src/main.c:2255: for (obj=4; obj<16; obj++) {
   8631 0C            [ 4]10138 	inc	c
   8632 79            [ 4]10139 	ld	a, c
   8633 D6 10         [ 7]10140 	sub	a, #0x10
   8635 38 B6         [12]10141 	jr	C,00102$
                          10142 ;src/main.c:2261: PrintText("TOAD@SNOT", 14, 25, 0);
   8637 21 19 00      [10]10143 	ld	hl, #0x0019
   863A E5            [11]10144 	push	hl
   863B 3E 0E         [ 7]10145 	ld	a, #0x0e
   863D F5            [11]10146 	push	af
   863E 33            [ 6]10147 	inc	sp
   863F 21 19 87      [10]10148 	ld	hl, #___str_61
   8642 E5            [11]10149 	push	hl
   8643 CD E6 4C      [17]10150 	call	_PrintText
   8646 F1            [10]10151 	pop	af
                          10152 ;src/main.c:2262: PrintText("DIAMOND@DUST", 14, 39, 0);
   8647 33            [ 6]10153 	inc	sp
   8648 21 27 00      [10]10154 	ld	hl,#0x0027
   864B E3            [19]10155 	ex	(sp),hl
   864C 3E 0E         [ 7]10156 	ld	a, #0x0e
   864E F5            [11]10157 	push	af
   864F 33            [ 6]10158 	inc	sp
   8650 21 23 87      [10]10159 	ld	hl, #___str_62
   8653 E5            [11]10160 	push	hl
   8654 CD E6 4C      [17]10161 	call	_PrintText
   8657 F1            [10]10162 	pop	af
                          10163 ;src/main.c:2263: PrintText("NEWT@EYE", 14, 53, 0);
   8658 33            [ 6]10164 	inc	sp
   8659 21 35 00      [10]10165 	ld	hl,#0x0035
   865C E3            [19]10166 	ex	(sp),hl
   865D 3E 0E         [ 7]10167 	ld	a, #0x0e
   865F F5            [11]10168 	push	af
   8660 33            [ 6]10169 	inc	sp
   8661 21 30 87      [10]10170 	ld	hl, #___str_63
   8664 E5            [11]10171 	push	hl
   8665 CD E6 4C      [17]10172 	call	_PrintText
   8668 F1            [10]10173 	pop	af
                          10174 ;src/main.c:2264: PrintText("MAMMOTH@POOP", 14, 67, 0);
   8669 33            [ 6]10175 	inc	sp
   866A 21 43 00      [10]10176 	ld	hl,#0x0043
   866D E3            [19]10177 	ex	(sp),hl
   866E 3E 0E         [ 7]10178 	ld	a, #0x0e
   8670 F5            [11]10179 	push	af
   8671 33            [ 6]10180 	inc	sp
   8672 21 39 87      [10]10181 	ld	hl, #___str_64
   8675 E5            [11]10182 	push	hl
   8676 CD E6 4C      [17]10183 	call	_PrintText
   8679 F1            [10]10184 	pop	af
                          10185 ;src/main.c:2265: PrintText("KRAKEN@INK", 14, 81, 0); 
   867A 33            [ 6]10186 	inc	sp
   867B 21 51 00      [10]10187 	ld	hl,#0x0051
   867E E3            [19]10188 	ex	(sp),hl
   867F 3E 0E         [ 7]10189 	ld	a, #0x0e
   8681 F5            [11]10190 	push	af
   8682 33            [ 6]10191 	inc	sp
   8683 21 46 87      [10]10192 	ld	hl, #___str_65
   8686 E5            [11]10193 	push	hl
   8687 CD E6 4C      [17]10194 	call	_PrintText
   868A F1            [10]10195 	pop	af
                          10196 ;src/main.c:2266: PrintText("MERMAID@TEAR", 14, 95, 0);
   868B 33            [ 6]10197 	inc	sp
   868C 21 5F 00      [10]10198 	ld	hl,#0x005f
   868F E3            [19]10199 	ex	(sp),hl
   8690 3E 0E         [ 7]10200 	ld	a, #0x0e
   8692 F5            [11]10201 	push	af
   8693 33            [ 6]10202 	inc	sp
   8694 21 51 87      [10]10203 	ld	hl, #___str_66
   8697 E5            [11]10204 	push	hl
   8698 CD E6 4C      [17]10205 	call	_PrintText
   869B F1            [10]10206 	pop	af
                          10207 ;src/main.c:2267: PrintText("MARTIAN@MUSHROOM", 14, 109, 0);
   869C 33            [ 6]10208 	inc	sp
   869D 21 6D 00      [10]10209 	ld	hl,#0x006d
   86A0 E3            [19]10210 	ex	(sp),hl
   86A1 3E 0E         [ 7]10211 	ld	a, #0x0e
   86A3 F5            [11]10212 	push	af
   86A4 33            [ 6]10213 	inc	sp
   86A5 21 5E 87      [10]10214 	ld	hl, #___str_67
   86A8 E5            [11]10215 	push	hl
   86A9 CD E6 4C      [17]10216 	call	_PrintText
   86AC F1            [10]10217 	pop	af
                          10218 ;src/main.c:2268: PrintText("DRAGON@BLOOD", 14, 123, 0);
   86AD 33            [ 6]10219 	inc	sp
   86AE 21 7B 00      [10]10220 	ld	hl,#0x007b
   86B1 E3            [19]10221 	ex	(sp),hl
   86B2 3E 0E         [ 7]10222 	ld	a, #0x0e
   86B4 F5            [11]10223 	push	af
   86B5 33            [ 6]10224 	inc	sp
   86B6 21 6F 87      [10]10225 	ld	hl, #___str_68
   86B9 E5            [11]10226 	push	hl
   86BA CD E6 4C      [17]10227 	call	_PrintText
   86BD F1            [10]10228 	pop	af
                          10229 ;src/main.c:2269: PrintText("DODO@EGG", 14, 137, 0); 
   86BE 33            [ 6]10230 	inc	sp
   86BF 21 89 00      [10]10231 	ld	hl,#0x0089
   86C2 E3            [19]10232 	ex	(sp),hl
   86C3 3E 0E         [ 7]10233 	ld	a, #0x0e
   86C5 F5            [11]10234 	push	af
   86C6 33            [ 6]10235 	inc	sp
   86C7 21 7C 87      [10]10236 	ld	hl, #___str_69
   86CA E5            [11]10237 	push	hl
   86CB CD E6 4C      [17]10238 	call	_PrintText
   86CE F1            [10]10239 	pop	af
                          10240 ;src/main.c:2270: PrintText("UNICORN@BLOOD", 14, 151, 0);
   86CF 33            [ 6]10241 	inc	sp
   86D0 21 97 00      [10]10242 	ld	hl,#0x0097
   86D3 E3            [19]10243 	ex	(sp),hl
   86D4 3E 0E         [ 7]10244 	ld	a, #0x0e
   86D6 F5            [11]10245 	push	af
   86D7 33            [ 6]10246 	inc	sp
   86D8 21 85 87      [10]10247 	ld	hl, #___str_70
   86DB E5            [11]10248 	push	hl
   86DC CD E6 4C      [17]10249 	call	_PrintText
   86DF F1            [10]10250 	pop	af
                          10251 ;src/main.c:2271: PrintText("TROLL@FAT", 14, 165, 0); 
   86E0 33            [ 6]10252 	inc	sp
   86E1 21 A5 00      [10]10253 	ld	hl,#0x00a5
   86E4 E3            [19]10254 	ex	(sp),hl
   86E5 3E 0E         [ 7]10255 	ld	a, #0x0e
   86E7 F5            [11]10256 	push	af
   86E8 33            [ 6]10257 	inc	sp
   86E9 21 93 87      [10]10258 	ld	hl, #___str_71
   86EC E5            [11]10259 	push	hl
   86ED CD E6 4C      [17]10260 	call	_PrintText
   86F0 F1            [10]10261 	pop	af
                          10262 ;src/main.c:2272: PrintText("MORDOR@LAVA", 14, 179, 0);
   86F1 33            [ 6]10263 	inc	sp
   86F2 21 B3 00      [10]10264 	ld	hl,#0x00b3
   86F5 E3            [19]10265 	ex	(sp),hl
   86F6 3E 0E         [ 7]10266 	ld	a, #0x0e
   86F8 F5            [11]10267 	push	af
   86F9 33            [ 6]10268 	inc	sp
   86FA 21 9D 87      [10]10269 	ld	hl, #___str_72
   86FD E5            [11]10270 	push	hl
   86FE CD E6 4C      [17]10271 	call	_PrintText
   8701 F1            [10]10272 	pop	af
   8702 F1            [10]10273 	pop	af
   8703 33            [ 6]10274 	inc	sp
   8704 C9            [10]10275 	ret
   8705                   10276 ___str_59:
   8705 49 4E 47 52 45 44 10277 	.ascii "INGREDIENT@VALUES"
        49 45 4E 54 40 56
        41 4C 55 45 53
   8716 00                10278 	.db 0x00
   8717                   10279 ___str_60:
   8717 3C                10280 	.ascii "<"
   8718 00                10281 	.db 0x00
   8719                   10282 ___str_61:
   8719 54 4F 41 44 40 53 10283 	.ascii "TOAD@SNOT"
        4E 4F 54
   8722 00                10284 	.db 0x00
   8723                   10285 ___str_62:
   8723 44 49 41 4D 4F 4E 10286 	.ascii "DIAMOND@DUST"
        44 40 44 55 53 54
   872F 00                10287 	.db 0x00
   8730                   10288 ___str_63:
   8730 4E 45 57 54 40 45 10289 	.ascii "NEWT@EYE"
        59 45
   8738 00                10290 	.db 0x00
   8739                   10291 ___str_64:
   8739 4D 41 4D 4D 4F 54 10292 	.ascii "MAMMOTH@POOP"
        48 40 50 4F 4F 50
   8745 00                10293 	.db 0x00
   8746                   10294 ___str_65:
   8746 4B 52 41 4B 45 4E 10295 	.ascii "KRAKEN@INK"
        40 49 4E 4B
   8750 00                10296 	.db 0x00
   8751                   10297 ___str_66:
   8751 4D 45 52 4D 41 49 10298 	.ascii "MERMAID@TEAR"
        44 40 54 45 41 52
   875D 00                10299 	.db 0x00
   875E                   10300 ___str_67:
   875E 4D 41 52 54 49 41 10301 	.ascii "MARTIAN@MUSHROOM"
        4E 40 4D 55 53 48
        52 4F 4F 4D
   876E 00                10302 	.db 0x00
   876F                   10303 ___str_68:
   876F 44 52 41 47 4F 4E 10304 	.ascii "DRAGON@BLOOD"
        40 42 4C 4F 4F 44
   877B 00                10305 	.db 0x00
   877C                   10306 ___str_69:
   877C 44 4F 44 4F 40 45 10307 	.ascii "DODO@EGG"
        47 47
   8784 00                10308 	.db 0x00
   8785                   10309 ___str_70:
   8785 55 4E 49 43 4F 52 10310 	.ascii "UNICORN@BLOOD"
        4E 40 42 4C 4F 4F
        44
   8792 00                10311 	.db 0x00
   8793                   10312 ___str_71:
   8793 54 52 4F 4C 4C 40 10313 	.ascii "TROLL@FAT"
        46 41 54
   879C 00                10314 	.db 0x00
   879D                   10315 ___str_72:
   879D 4D 4F 52 44 4F 52 10316 	.ascii "MORDOR@LAVA"
        40 4C 41 56 41
   87A8 00                10317 	.db 0x00
                          10318 ;src/main.c:2298: void StartMenu() {
                          10319 ;	---------------------------------
                          10320 ; Function StartMenu
                          10321 ; ---------------------------------
   87A9                   10322 _StartMenu::
   87A9 DD E5         [15]10323 	push	ix
   87AB DD 21 00 00   [14]10324 	ld	ix,#0
   87AF DD 39         [15]10325 	add	ix,sp
   87B1 F5            [11]10326 	push	af
                          10327 ;src/main.c:2299: u8 randSeed = 254;
   87B2 DD 36 FE FE   [19]10328 	ld	-2 (ix), #0xfe
                          10329 ;src/main.c:2300: u8 page = 0;
   87B6 DD 36 FF 00   [19]10330 	ld	-1 (ix), #0x00
                          10331 ;src/main.c:2302: while(1) {
   87BA                   10332 00122$:
                          10333 ;src/main.c:2305: if (++randSeed == 255) {					
   87BA DD 34 FE      [23]10334 	inc	-2 (ix)
   87BD DD 7E FE      [19]10335 	ld	a, -2 (ix)
   87C0 3C            [ 4]10336 	inc	a
   87C1 20 27         [12]10337 	jr	NZ,00109$
                          10338 ;src/main.c:2306: if (page == 0) 		PrintStartMenu();	// page 1; menu
   87C3 DD 7E FF      [19]10339 	ld	a, -1 (ix)
   87C6 B7            [ 4]10340 	or	a, a
   87C7 20 05         [12]10341 	jr	NZ,00104$
   87C9 CD BE 83      [17]10342 	call	_PrintStartMenu
   87CC 18 0A         [12]10343 	jr	00105$
   87CE                   10344 00104$:
                          10345 ;src/main.c:2307: else if(page == 4)	PrintObjInfo();		// page 2; ingredients info
   87CE DD 7E FF      [19]10346 	ld	a, -1 (ix)
   87D1 D6 04         [ 7]10347 	sub	a, #0x04
   87D3 20 03         [12]10348 	jr	NZ,00105$
   87D5 CD 9F 85      [17]10349 	call	_PrintObjInfo
   87D8                   10350 00105$:
                          10351 ;src/main.c:2309: randSeed = 0;
   87D8 DD 36 FE 00   [19]10352 	ld	-2 (ix), #0x00
                          10353 ;src/main.c:2310: if (++page == 8) //12
   87DC DD 34 FF      [23]10354 	inc	-1 (ix)
   87DF DD 7E FF      [19]10355 	ld	a, -1 (ix)
   87E2 D6 08         [ 7]10356 	sub	a, #0x08
   87E4 20 04         [12]10357 	jr	NZ,00109$
                          10358 ;src/main.c:2311: page = 0;		
   87E6 DD 36 FF 00   [19]10359 	ld	-1 (ix), #0x00
   87EA                   10360 00109$:
                          10361 ;src/main.c:2314: cpct_scanKeyboard_f();
   87EA CD E0 43      [17]10362 	call	_cpct_scanKeyboard_f
                          10363 ;src/main.c:2315: if(cpct_isKeyPressed(Key_1)) { // 1 player
   87ED 21 08 01      [10]10364 	ld	hl, #0x0108
   87F0 CD D4 43      [17]10365 	call	_cpct_isKeyPressed
   87F3 7D            [ 4]10366 	ld	a, l
   87F4 B7            [ 4]10367 	or	a, a
   87F5 28 08         [12]10368 	jr	Z,00119$
                          10369 ;src/main.c:2316: TwoPlayers = FALSE;	
   87F7 21 BE 48      [10]10370 	ld	hl,#_TwoPlayers + 0
   87FA 36 00         [10]10371 	ld	(hl), #0x00
                          10372 ;src/main.c:2317: break;
   87FC C3 07 89      [10]10373 	jp	00123$
   87FF                   10374 00119$:
                          10375 ;src/main.c:2319: else if(cpct_isKeyPressed(Key_2)) {	// 2 players
   87FF 21 08 02      [10]10376 	ld	hl, #0x0208
   8802 CD D4 43      [17]10377 	call	_cpct_isKeyPressed
   8805 7D            [ 4]10378 	ld	a, l
   8806 B7            [ 4]10379 	or	a, a
   8807 28 08         [12]10380 	jr	Z,00116$
                          10381 ;src/main.c:2320: TwoPlayers = TRUE;
   8809 21 BE 48      [10]10382 	ld	hl,#_TwoPlayers + 0
   880C 36 01         [10]10383 	ld	(hl), #0x01
                          10384 ;src/main.c:2321: break;
   880E C3 07 89      [10]10385 	jp	00123$
   8811                   10386 00116$:
                          10387 ;src/main.c:2323: else if(cpct_isKeyPressed(Key_3)){ // redefine keys
   8811 21 07 02      [10]10388 	ld	hl, #0x0207
   8814 CD D4 43      [17]10389 	call	_cpct_isKeyPressed
   8817 7D            [ 4]10390 	ld	a, l
   8818 B7            [ 4]10391 	or	a, a
   8819 CA DA 88      [10]10392 	jp	Z, 00113$
                          10393 ;src/main.c:2324: Wait4Key(Key_3);
   881C 21 07 02      [10]10394 	ld	hl, #0x0207
   881F E5            [11]10395 	push	hl
   8820 CD 25 54      [17]10396 	call	_Wait4Key
   8823 F1            [10]10397 	pop	af
                          10398 ;src/main.c:2325: randSeed = 0; page = 1;
   8824 DD 36 FE 00   [19]10399 	ld	-2 (ix), #0x00
   8828 DD 36 FF 01   [19]10400 	ld	-1 (ix), #0x01
                          10401 ;src/main.c:2326: PrintStartMenu();
   882C CD BE 83      [17]10402 	call	_PrintStartMenu
                          10403 ;src/main.c:2328: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 22, 110), cpct_px2byteM0(1, 1), 45, 70);
   882F 21 01 01      [10]10404 	ld	hl, #0x0101
   8832 E5            [11]10405 	push	hl
   8833 CD 9D 46      [17]10406 	call	_cpct_px2byteM0
   8836 26 00         [ 7]10407 	ld	h, #0x00
   8838 01 2D 46      [10]10408 	ld	bc, #0x462d
   883B C5            [11]10409 	push	bc
   883C E5            [11]10410 	push	hl
   883D 21 26 F4      [10]10411 	ld	hl, #0xf426
   8840 E5            [11]10412 	push	hl
   8841 CD D7 46      [17]10413 	call	_cpct_drawSolidBox
                          10414 ;src/main.c:2331: ctlUp[0] = 		RedefineKey("@P1@UP");
   8844 21 15 89      [10]10415 	ld	hl, #___str_73
   8847 E5            [11]10416 	push	hl
   8848 CD 42 54      [17]10417 	call	_RedefineKey
   884B F1            [10]10418 	pop	af
   884C 4D            [ 4]10419 	ld	c, l
   884D 44            [ 4]10420 	ld	b, h
   884E ED 43 DD 48   [20]10421 	ld	(_ctlUp), bc
                          10422 ;src/main.c:2332: ctlDown[0] = 	RedefineKey("P1@DOWN");
   8852 21 1C 89      [10]10423 	ld	hl, #___str_74
   8855 E5            [11]10424 	push	hl
   8856 CD 42 54      [17]10425 	call	_RedefineKey
   8859 F1            [10]10426 	pop	af
   885A 4D            [ 4]10427 	ld	c, l
   885B 44            [ 4]10428 	ld	b, h
   885C ED 43 E1 48   [20]10429 	ld	(_ctlDown), bc
                          10430 ;src/main.c:2333: ctlLeft[0] = 	RedefineKey("P1@LEFT");
   8860 21 24 89      [10]10431 	ld	hl, #___str_75
   8863 E5            [11]10432 	push	hl
   8864 CD 42 54      [17]10433 	call	_RedefineKey
   8867 F1            [10]10434 	pop	af
   8868 4D            [ 4]10435 	ld	c, l
   8869 44            [ 4]10436 	ld	b, h
   886A ED 43 E5 48   [20]10437 	ld	(_ctlLeft), bc
                          10438 ;src/main.c:2334: ctlRight[0] = 	RedefineKey("P1@RIGHT");
   886E 21 2C 89      [10]10439 	ld	hl, #___str_76
   8871 E5            [11]10440 	push	hl
   8872 CD 42 54      [17]10441 	call	_RedefineKey
   8875 F1            [10]10442 	pop	af
   8876 4D            [ 4]10443 	ld	c, l
   8877 44            [ 4]10444 	ld	b, h
   8878 ED 43 E9 48   [20]10445 	ld	(_ctlRight), bc
                          10446 ;src/main.c:2336: ctlUp[1] = 		RedefineKey("@P2@UP@@");
   887C 21 35 89      [10]10447 	ld	hl, #___str_77
   887F E5            [11]10448 	push	hl
   8880 CD 42 54      [17]10449 	call	_RedefineKey
   8883 F1            [10]10450 	pop	af
   8884 4D            [ 4]10451 	ld	c, l
   8885 44            [ 4]10452 	ld	b, h
   8886 ED 43 DF 48   [20]10453 	ld	((_ctlUp + 0x0002)), bc
                          10454 ;src/main.c:2337: ctlDown[1] = 	RedefineKey("P2@DOWN");
   888A 21 3E 89      [10]10455 	ld	hl, #___str_78
   888D E5            [11]10456 	push	hl
   888E CD 42 54      [17]10457 	call	_RedefineKey
   8891 F1            [10]10458 	pop	af
   8892 4D            [ 4]10459 	ld	c, l
   8893 44            [ 4]10460 	ld	b, h
   8894 ED 43 E3 48   [20]10461 	ld	((_ctlDown + 0x0002)), bc
                          10462 ;src/main.c:2338: ctlLeft[1] = 	RedefineKey("P2@LEFT");
   8898 21 46 89      [10]10463 	ld	hl, #___str_79
   889B E5            [11]10464 	push	hl
   889C CD 42 54      [17]10465 	call	_RedefineKey
   889F F1            [10]10466 	pop	af
   88A0 4D            [ 4]10467 	ld	c, l
   88A1 44            [ 4]10468 	ld	b, h
   88A2 ED 43 E7 48   [20]10469 	ld	((_ctlLeft + 0x0002)), bc
                          10470 ;src/main.c:2339: ctlRight[1] = 	RedefineKey("P2@RIGHT");	
   88A6 21 4E 89      [10]10471 	ld	hl, #___str_80
   88A9 E5            [11]10472 	push	hl
   88AA CD 42 54      [17]10473 	call	_RedefineKey
   88AD F1            [10]10474 	pop	af
   88AE 4D            [ 4]10475 	ld	c, l
   88AF 44            [ 4]10476 	ld	b, h
   88B0 ED 43 EB 48   [20]10477 	ld	((_ctlRight + 0x0002)), bc
                          10478 ;src/main.c:2341: ctlAbort = 		RedefineKey("@ABORT@@");
   88B4 21 57 89      [10]10479 	ld	hl, #___str_81
   88B7 E5            [11]10480 	push	hl
   88B8 CD 42 54      [17]10481 	call	_RedefineKey
   88BB F1            [10]10482 	pop	af
   88BC 22 ED 48      [16]10483 	ld	(_ctlAbort), hl
                          10484 ;src/main.c:2342: ctlMusic = 		RedefineKey("@MUSIC");
   88BF 21 60 89      [10]10485 	ld	hl, #___str_82
   88C2 E5            [11]10486 	push	hl
   88C3 CD 42 54      [17]10487 	call	_RedefineKey
   88C6 F1            [10]10488 	pop	af
   88C7 22 EF 48      [16]10489 	ld	(_ctlMusic), hl
                          10490 ;src/main.c:2343: ctlPause =		RedefineKey("@PAUSE");		
   88CA 21 67 89      [10]10491 	ld	hl, #___str_83
   88CD E5            [11]10492 	push	hl
   88CE CD 42 54      [17]10493 	call	_RedefineKey
   88D1 F1            [10]10494 	pop	af
   88D2 22 F1 48      [16]10495 	ld	(_ctlPause), hl
                          10496 ;src/main.c:2344: PrintStartMenu();
   88D5 CD BE 83      [17]10497 	call	_PrintStartMenu
   88D8 18 24         [12]10498 	jr	00120$
   88DA                   10499 00113$:
                          10500 ;src/main.c:2346: else if(cpct_isKeyPressed(Key_4)) {	// turbo mode
   88DA 21 07 01      [10]10501 	ld	hl, #0x0107
   88DD CD D4 43      [17]10502 	call	_cpct_isKeyPressed
   88E0 7D            [ 4]10503 	ld	a, l
   88E1 B7            [ 4]10504 	or	a, a
   88E2 28 1A         [12]10505 	jr	Z,00120$
                          10506 ;src/main.c:2347: turboMode = !turboMode;
   88E4 FD 21 D8 48   [14]10507 	ld	iy, #_turboMode
   88E8 FD 7E 00      [19]10508 	ld	a, 0 (iy)
   88EB D6 01         [ 7]10509 	sub	a,#0x01
   88ED 3E 00         [ 7]10510 	ld	a, #0x00
   88EF 17            [ 4]10511 	rla
   88F0 FD 77 00      [19]10512 	ld	0 (iy), a
                          10513 ;src/main.c:2348: randSeed = 0; page = 1;
   88F3 DD 36 FE 00   [19]10514 	ld	-2 (ix), #0x00
   88F7 DD 36 FF 01   [19]10515 	ld	-1 (ix), #0x01
                          10516 ;src/main.c:2349: PrintStartMenu();
   88FB CD BE 83      [17]10517 	call	_PrintStartMenu
   88FE                   10518 00120$:
                          10519 ;src/main.c:2351: Pause(3);
   88FE 21 03 00      [10]10520 	ld	hl, #0x0003
   8901 CD 6A 4B      [17]10521 	call	_Pause
   8904 C3 BA 87      [10]10522 	jp	00122$
   8907                   10523 00123$:
                          10524 ;src/main.c:2353: cpct_setSeed_lcg_u8(randSeed); // set the seed
   8907 DD 6E FE      [19]10525 	ld	l, -2 (ix)
   890A CD 8E 45      [17]10526 	call	_cpct_setSeed_lcg_u8
                          10527 ;src/main.c:2354: ClearScreen();
   890D CD 8C 4B      [17]10528 	call	_ClearScreen
   8910 DD F9         [10]10529 	ld	sp, ix
   8912 DD E1         [14]10530 	pop	ix
   8914 C9            [10]10531 	ret
   8915                   10532 ___str_73:
   8915 40 50 31 40 55 50 10533 	.ascii "@P1@UP"
   891B 00                10534 	.db 0x00
   891C                   10535 ___str_74:
   891C 50 31 40 44 4F 57 10536 	.ascii "P1@DOWN"
        4E
   8923 00                10537 	.db 0x00
   8924                   10538 ___str_75:
   8924 50 31 40 4C 45 46 10539 	.ascii "P1@LEFT"
        54
   892B 00                10540 	.db 0x00
   892C                   10541 ___str_76:
   892C 50 31 40 52 49 47 10542 	.ascii "P1@RIGHT"
        48 54
   8934 00                10543 	.db 0x00
   8935                   10544 ___str_77:
   8935 40 50 32 40 55 50 10545 	.ascii "@P2@UP@@"
        40 40
   893D 00                10546 	.db 0x00
   893E                   10547 ___str_78:
   893E 50 32 40 44 4F 57 10548 	.ascii "P2@DOWN"
        4E
   8945 00                10549 	.db 0x00
   8946                   10550 ___str_79:
   8946 50 32 40 4C 45 46 10551 	.ascii "P2@LEFT"
        54
   894D 00                10552 	.db 0x00
   894E                   10553 ___str_80:
   894E 50 32 40 52 49 47 10554 	.ascii "P2@RIGHT"
        48 54
   8956 00                10555 	.db 0x00
   8957                   10556 ___str_81:
   8957 40 41 42 4F 52 54 10557 	.ascii "@ABORT@@"
        40 40
   895F 00                10558 	.db 0x00
   8960                   10559 ___str_82:
   8960 40 4D 55 53 49 43 10560 	.ascii "@MUSIC"
   8966 00                10561 	.db 0x00
   8967                   10562 ___str_83:
   8967 40 50 41 55 53 45 10563 	.ascii "@PAUSE"
   896D 00                10564 	.db 0x00
                          10565 ;src/main.c:2371: void InitValues() {	
                          10566 ;	---------------------------------
                          10567 ; Function InitValues
                          10568 ; ---------------------------------
   896E                   10569 _InitValues::
                          10570 ;src/main.c:2374: ctlUp[0] = Key_W;
   896E 21 07 08      [10]10571 	ld	hl, #0x0807
   8971 22 DD 48      [16]10572 	ld	(_ctlUp), hl
                          10573 ;src/main.c:2375: ctlDown[0] = Key_S;
   8974 26 10         [ 7]10574 	ld	h, #0x10
   8976 22 E1 48      [16]10575 	ld	(_ctlDown), hl
                          10576 ;src/main.c:2376: ctlLeft[0] = Key_A;
   8979 21 08 20      [10]10577 	ld	hl, #0x2008
   897C 22 E5 48      [16]10578 	ld	(_ctlLeft), hl
                          10579 ;src/main.c:2377: ctlRight[0] = Key_D;
   897F 2E 07         [ 7]10580 	ld	l, #0x07
   8981 22 E9 48      [16]10581 	ld	(_ctlRight), hl
                          10582 ;src/main.c:2379: ctlUp[1] = Key_F5;
   8984 21 01 10      [10]10583 	ld	hl, #0x1001
   8987 22 DF 48      [16]10584 	ld	((_ctlUp + 0x0002)), hl
                          10585 ;src/main.c:2380: ctlDown[1] = Key_F2;
   898A 26 40         [ 7]10586 	ld	h, #0x40
   898C 22 E3 48      [16]10587 	ld	((_ctlDown + 0x0002)), hl
                          10588 ;src/main.c:2381: ctlLeft[1] = Key_F1;
   898F 26 20         [ 7]10589 	ld	h, #0x20
   8991 22 E7 48      [16]10590 	ld	((_ctlLeft + 0x0002)), hl
                          10591 ;src/main.c:2382: ctlRight[1] = Key_F3;
   8994 2E 00         [ 7]10592 	ld	l, #0x00
   8996 22 EB 48      [16]10593 	ld	((_ctlRight + 0x0002)), hl
                          10594 ;src/main.c:2384: ctlAbort = Key_X;
   8999 21 07 80      [10]10595 	ld	hl, #0x8007
   899C 22 ED 48      [16]10596 	ld	(_ctlAbort), hl
                          10597 ;src/main.c:2385: ctlMusic = Key_M;
   899F 21 04 40      [10]10598 	ld	hl, #0x4004
   89A2 22 EF 48      [16]10599 	ld	(_ctlMusic), hl
                          10600 ;src/main.c:2386: ctlPause = Key_H;	
   89A5 21 05 10      [10]10601 	ld	hl, #0x1005
   89A8 22 F1 48      [16]10602 	ld	(_ctlPause), hl
                          10603 ;src/main.c:2388: turboMode = FALSE;
   89AB 21 D8 48      [10]10604 	ld	hl,#_turboMode + 0
   89AE 36 00         [10]10605 	ld	(hl), #0x00
                          10606 ;src/main.c:2389: nTip = 0;
   89B0 21 D9 48      [10]10607 	ld	hl,#_nTip + 0
   89B3 36 00         [10]10608 	ld	(hl), #0x00
   89B5 C9            [10]10609 	ret
                          10610 ;src/main.c:2394: void ResetData() {
                          10611 ;	---------------------------------
                          10612 ; Function ResetData
                          10613 ; ---------------------------------
   89B6                   10614 _ResetData::
                          10615 ;src/main.c:2395: ctMainLoop = 0;
   89B6 21 00 00      [10]10616 	ld	hl, #0x0000
   89B9 22 DB 48      [16]10617 	ld	(_ctMainLoop), hl
                          10618 ;src/main.c:2396: nObj[0] = -1;
   89BC 21 61 49      [10]10619 	ld	hl, #_nObj+0
   89BF 36 FF         [10]10620 	ld	(hl), #0xff
                          10621 ;src/main.c:2397: nObj[1] = -1;
   89C1 23            [ 6]10622 	inc	hl
   89C2 36 FF         [10]10623 	ld	(hl), #0xff
                          10624 ;src/main.c:2398: sht.active = FALSE;
   89C4 21 60 49      [10]10625 	ld	hl, #(_sht + 0x0004)
   89C7 36 00         [10]10626 	ld	(hl), #0x00
                          10627 ;src/main.c:2399: ctWizardAnim = 0;
   89C9 21 DA 48      [10]10628 	ld	hl,#_ctWizardAnim + 0
   89CC 36 00         [10]10629 	ld	(hl), #0x00
                          10630 ;src/main.c:2402: spr[0].dir = D_right; 
   89CE 21 FA 48      [10]10631 	ld	hl, #(_spr + 0x0007)
   89D1 36 03         [10]10632 	ld	(hl), #0x03
                          10633 ;src/main.c:2403: spr[0].status = S_stopped;
   89D3 21 F9 48      [10]10634 	ld	hl, #(_spr + 0x0006)
   89D6 36 04         [10]10635 	ld	(hl), #0x04
                          10636 ;src/main.c:2404: spr[0].print_minV = TRUE; // the first time must be printed on screen
   89D8 21 00 49      [10]10637 	ld	hl, #(_spr + 0x000d)
   89DB 36 01         [10]10638 	ld	(hl), #0x01
                          10639 ;src/main.c:2405: spr[0].power_maxV = 0;
   89DD 21 01 49      [10]10640 	ld	hl, #(_spr + 0x000e)
   89E0 36 00         [10]10641 	ld	(hl), #0x00
                          10642 ;src/main.c:2406: ctInactivity[0] = 0;
   89E2 01 D6 48      [10]10643 	ld	bc, #_ctInactivity+0
   89E5 AF            [ 4]10644 	xor	a, a
   89E6 02            [ 7]10645 	ld	(bc), a
                          10646 ;src/main.c:2408: spr[1].dir = D_left; 
   89E7 21 09 49      [10]10647 	ld	hl, #(_spr + 0x0016)
   89EA 36 02         [10]10648 	ld	(hl), #0x02
                          10649 ;src/main.c:2409: spr[1].status = S_stopped;	
   89EC 21 08 49      [10]10650 	ld	hl, #(_spr + 0x0015)
   89EF 36 04         [10]10651 	ld	(hl), #0x04
                          10652 ;src/main.c:2410: spr[1].print_minV = TRUE; // the first time must be printed on screen
   89F1 21 0F 49      [10]10653 	ld	hl, #(_spr + 0x001c)
   89F4 36 01         [10]10654 	ld	(hl), #0x01
                          10655 ;src/main.c:2411: spr[1].power_maxV = 0;
   89F6 21 10 49      [10]10656 	ld	hl, #(_spr + 0x001d)
   89F9 36 00         [10]10657 	ld	(hl), #0x00
                          10658 ;src/main.c:2412: ctInactivity[1] = 0;
   89FB 03            [ 6]10659 	inc	bc
   89FC AF            [ 4]10660 	xor	a, a
   89FD 02            [ 7]10661 	ld	(bc), a
                          10662 ;src/main.c:2414: SetEnemies();
   89FE CD 7F 78      [17]10663 	call	_SetEnemies
                          10664 ;src/main.c:2415: PrintMap();
   8A01 CD 01 4C      [17]10665 	call	_PrintMap
                          10666 ;src/main.c:2416: RefreshScoreboard();
   8A04 CD EC 55      [17]10667 	call	_RefreshScoreboard
                          10668 ;src/main.c:2417: DeleteObjectInStore();
   8A07 CD 90 58      [17]10669 	call	_DeleteObjectInStore
                          10670 ;src/main.c:2420: if (nMap != lastNMap) {
   8A0A 3A BA 48      [13]10671 	ld	a,(#_nMap + 0)
   8A0D FD 21 BB 48   [14]10672 	ld	iy, #_lastNMap
   8A11 FD 96 00      [19]10673 	sub	a, 0 (iy)
   8A14 C8            [11]10674 	ret	Z
                          10675 ;src/main.c:2421: if (!TwoPlayers) {
   8A15 3A BE 48      [13]10676 	ld	a,(#_TwoPlayers + 0)
   8A18 B7            [ 4]10677 	or	a, a
   8A19 20 1C         [12]10678 	jr	NZ,00102$
                          10679 ;src/main.c:2422: PrintKey();
   8A1B CD 77 5F      [17]10680 	call	_PrintKey
                          10681 ;src/main.c:2424: playerKey[0] = 0;
   8A1E 21 CE 48      [10]10682 	ld	hl, #_playerKey
   8A21 36 00         [10]10683 	ld	(hl), #0x00
                          10684 ;src/main.c:2425: playerKey[1] = 0;
   8A23 21 CF 48      [10]10685 	ld	hl, #(_playerKey + 0x0001)
   8A26 36 00         [10]10686 	ld	(hl), #0x00
                          10687 ;src/main.c:2426: playerKey[2] = 0;
   8A28 21 D0 48      [10]10688 	ld	hl, #(_playerKey + 0x0002)
   8A2B 36 00         [10]10689 	ld	(hl), #0x00
                          10690 ;src/main.c:2427: playerKey[3] = 0;
   8A2D 21 D1 48      [10]10691 	ld	hl, #(_playerKey + 0x0003)
   8A30 36 00         [10]10692 	ld	(hl), #0x00
                          10693 ;src/main.c:2428: playerKey[4] = 0;
   8A32 21 D2 48      [10]10694 	ld	hl, #(_playerKey + 0x0004)
   8A35 36 00         [10]10695 	ld	(hl), #0x00
   8A37                   10696 00102$:
                          10697 ;src/main.c:2430: PrintLevelInfo();	
   8A37 CD 00 50      [17]10698 	call	_PrintLevelInfo
                          10699 ;src/main.c:2431: PrintMap();	
   8A3A CD 01 4C      [17]10700 	call	_PrintMap
                          10701 ;src/main.c:2432: lastNMap = nMap;
   8A3D 3A BA 48      [13]10702 	ld	a,(#_nMap + 0)
   8A40 32 BB 48      [13]10703 	ld	(#_lastNMap + 0),a
   8A43 C9            [10]10704 	ret
                          10705 ;src/main.c:2438: void InitGame() {
                          10706 ;	---------------------------------
                          10707 ; Function InitGame
                          10708 ; ---------------------------------
   8A44                   10709 _InitGame::
                          10710 ;src/main.c:2439: StartMenu(); // run the start menu
   8A44 CD A9 87      [17]10711 	call	_StartMenu
                          10712 ;src/main.c:2440: nMap = 0; // initial map number
   8A47 21 BA 48      [10]10713 	ld	hl,#_nMap + 0
   8A4A 36 00         [10]10714 	ld	(hl), #0x00
                          10715 ;src/main.c:2441: lastNMap = 255;
   8A4C 21 BB 48      [10]10716 	ld	hl,#_lastNMap + 0
   8A4F 36 FF         [10]10717 	ld	(hl), #0xff
                          10718 ;src/main.c:2444: spr[0].num = 0; // sprite number
   8A51 21 F3 48      [10]10719 	ld	hl, #_spr
   8A54 36 00         [10]10720 	ld	(hl), #0x00
                          10721 ;src/main.c:2445: spr[0].ident = SORCERER1; // identity
   8A56 21 F4 48      [10]10722 	ld	hl, #(_spr + 0x0001)
   8A59 36 00         [10]10723 	ld	(hl), #0x00
                          10724 ;src/main.c:2446: spr[0].lives_speed = 3; // lives
   8A5B 21 FE 48      [10]10725 	ld	hl, #(_spr + 0x000b)
   8A5E 36 03         [10]10726 	ld	(hl), #0x03
                          10727 ;src/main.c:2447: score[0] = 0; // score
   8A60 21 00 00      [10]10728 	ld	hl, #0x0000
   8A63 22 BF 48      [16]10729 	ld	(_score), hl
                          10730 ;src/main.c:2448: ResetObjData(0);
   8A66 2E 00         [ 7]10731 	ld	l, #0x00
   8A68 CD 05 57      [17]10732 	call	_ResetObjData
                          10733 ;src/main.c:2451: spr[1].num = 1; // sprite number
   8A6B 21 02 49      [10]10734 	ld	hl, #(_spr + 0x000f)
   8A6E 36 01         [10]10735 	ld	(hl), #0x01
                          10736 ;src/main.c:2452: spr[1].ident = SORCERER2; // identity
   8A70 21 03 49      [10]10737 	ld	hl, #(_spr + 0x0010)
   8A73 36 01         [10]10738 	ld	(hl), #0x01
                          10739 ;src/main.c:2453: spr[1].lives_speed = 3; // lives
   8A75 21 0D 49      [10]10740 	ld	hl, #(_spr + 0x001a)
   8A78 36 03         [10]10741 	ld	(hl), #0x03
                          10742 ;src/main.c:2454: score[1] = 0; // score
   8A7A 21 00 00      [10]10743 	ld	hl, #0x0000
   8A7D 22 C1 48      [16]10744 	ld	((_score + 0x0002)), hl
                          10745 ;src/main.c:2455: ResetObjData(1);
   8A80 2E 01         [ 7]10746 	ld	l, #0x01
   8A82 CD 05 57      [17]10747 	call	_ResetObjData
                          10748 ;src/main.c:2458: spr[6].num = 6; // sprite number
   8A85 21 4D 49      [10]10749 	ld	hl, #(_spr + 0x005a)
   8A88 36 06         [10]10750 	ld	(hl), #0x06
                          10751 ;src/main.c:2459: spr[6].ident = WIZARD; // identity
   8A8A 21 4E 49      [10]10752 	ld	hl, #(_spr + 0x005b)
   8A8D 36 07         [10]10753 	ld	(hl), #0x07
                          10754 ;src/main.c:2461: InitScoreboard();		
   8A8F CD 81 54      [17]10755 	call	_InitScoreboard
                          10756 ;src/main.c:2462: ResetData();
   8A92 C3 B6 89      [10]10757 	jp  _ResetData
                          10758 ;src/main.c:2467: void GameOver(u8 player) {
                          10759 ;	---------------------------------
                          10760 ; Function GameOver
                          10761 ; ---------------------------------
   8A95                   10762 _GameOver::
   8A95 DD E5         [15]10763 	push	ix
   8A97 DD 21 00 00   [14]10764 	ld	ix,#0
   8A9B DD 39         [15]10765 	add	ix,sp
   8A9D F5            [11]10766 	push	af
                          10767 ;src/main.c:2469: if (spr[player].lives_speed > 1 && player != 2) {
   8A9E 01 F3 48      [10]10768 	ld	bc, #_spr+0
   8AA1 DD 5E 04      [19]10769 	ld	e,4 (ix)
   8AA4 16 00         [ 7]10770 	ld	d,#0x00
   8AA6 6B            [ 4]10771 	ld	l, e
   8AA7 62            [ 4]10772 	ld	h, d
   8AA8 29            [11]10773 	add	hl, hl
   8AA9 19            [11]10774 	add	hl, de
   8AAA 29            [11]10775 	add	hl, hl
   8AAB 19            [11]10776 	add	hl, de
   8AAC 29            [11]10777 	add	hl, hl
   8AAD 19            [11]10778 	add	hl, de
   8AAE 09            [11]10779 	add	hl,bc
   8AAF 01 0B 00      [10]10780 	ld	bc,#0x000b
   8AB2 09            [11]10781 	add	hl,bc
   8AB3 E3            [19]10782 	ex	(sp), hl
   8AB4 E1            [10]10783 	pop	hl
   8AB5 E5            [11]10784 	push	hl
   8AB6 4E            [ 7]10785 	ld	c, (hl)
   8AB7 3E 01         [ 7]10786 	ld	a, #0x01
   8AB9 91            [ 4]10787 	sub	a, c
   8ABA 30 11         [12]10788 	jr	NC,00113$
   8ABC DD 7E 04      [19]10789 	ld	a, 4 (ix)
   8ABF D6 02         [ 7]10790 	sub	a, #0x02
   8AC1 28 0A         [12]10791 	jr	Z,00113$
                          10792 ;src/main.c:2470: spr[player].lives_speed--;
   8AC3 0D            [ 4]10793 	dec	c
   8AC4 E1            [10]10794 	pop	hl
   8AC5 E5            [11]10795 	push	hl
   8AC6 71            [ 7]10796 	ld	(hl), c
                          10797 ;src/main.c:2471: ResetData();
   8AC7 CD B6 89      [17]10798 	call	_ResetData
   8ACA C3 9E 8B      [10]10799 	jp	00116$
   8ACD                   10800 00113$:
                          10801 ;src/main.c:2475: spr[player].lives_speed = 0;
   8ACD E1            [10]10802 	pop	hl
   8ACE E5            [11]10803 	push	hl
   8ACF 36 00         [10]10804 	ld	(hl), #0x00
                          10805 ;src/main.c:2476: RefreshScoreboard();
   8AD1 CD EC 55      [17]10806 	call	_RefreshScoreboard
                          10807 ;src/main.c:2478: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START,  6, 80), cpct_px2byteM0(4, 4), 34, 60);
   8AD4 21 04 04      [10]10808 	ld	hl, #0x0404
   8AD7 E5            [11]10809 	push	hl
   8AD8 CD 9D 46      [17]10810 	call	_cpct_px2byteM0
   8ADB 26 00         [ 7]10811 	ld	h, #0x00
   8ADD 01 22 3C      [10]10812 	ld	bc, #0x3c22
   8AE0 C5            [11]10813 	push	bc
   8AE1 E5            [11]10814 	push	hl
   8AE2 21 26 C3      [10]10815 	ld	hl, #0xc326
   8AE5 E5            [11]10816 	push	hl
   8AE6 CD D7 46      [17]10817 	call	_cpct_drawSolidBox
                          10818 ;src/main.c:2479: cpct_drawSolidBox(cpctm_screenPtr(CPCT_VMEM_START, 40, 80), cpct_px2byteM0(4, 4), 34, 60);
   8AE9 21 04 04      [10]10819 	ld	hl, #0x0404
   8AEC E5            [11]10820 	push	hl
   8AED CD 9D 46      [17]10821 	call	_cpct_px2byteM0
   8AF0 26 00         [ 7]10822 	ld	h, #0x00
   8AF2 01 22 3C      [10]10823 	ld	bc, #0x3c22
   8AF5 C5            [11]10824 	push	bc
   8AF6 E5            [11]10825 	push	hl
   8AF7 21 48 C3      [10]10826 	ld	hl, #0xc348
   8AFA E5            [11]10827 	push	hl
   8AFB CD D7 46      [17]10828 	call	_cpct_drawSolidBox
                          10829 ;src/main.c:2480: PrintFrame(6,80,71,134);
   8AFE 21 47 86      [10]10830 	ld	hl, #0x8647
   8B01 E5            [11]10831 	push	hl
   8B02 21 06 50      [10]10832 	ld	hl, #0x5006
   8B05 E5            [11]10833 	push	hl
   8B06 CD 89 4D      [17]10834 	call	_PrintFrame
   8B09 F1            [10]10835 	pop	af
   8B0A F1            [10]10836 	pop	af
                          10837 ;src/main.c:2481: if (TwoPlayers) {
   8B0B 3A BE 48      [13]10838 	ld	a,(#_TwoPlayers + 0)
   8B0E B7            [ 4]10839 	or	a, a
   8B0F 28 6B         [12]10840 	jr	Z,00107$
                          10841 ;src/main.c:2482: PrintText("G@A@M@E@@O@V@E@R", 16, 91, 0);
   8B11 21 5B 00      [10]10842 	ld	hl, #0x005b
   8B14 E5            [11]10843 	push	hl
   8B15 3E 10         [ 7]10844 	ld	a, #0x10
   8B17 F5            [11]10845 	push	af
   8B18 33            [ 6]10846 	inc	sp
   8B19 21 A3 8B      [10]10847 	ld	hl, #___str_84
   8B1C E5            [11]10848 	push	hl
   8B1D CD E6 4C      [17]10849 	call	_PrintText
   8B20 F1            [10]10850 	pop	af
   8B21 F1            [10]10851 	pop	af
   8B22 33            [ 6]10852 	inc	sp
                          10853 ;src/main.c:2483: if (player == 0) PrintText("PLAYER@2@WINS>", 19, 106, 0);
   8B23 DD 7E 04      [19]10854 	ld	a, 4 (ix)
   8B26 B7            [ 4]10855 	or	a, a
   8B27 20 14         [12]10856 	jr	NZ,00104$
   8B29 21 6A 00      [10]10857 	ld	hl, #0x006a
   8B2C E5            [11]10858 	push	hl
   8B2D 3E 13         [ 7]10859 	ld	a, #0x13
   8B2F F5            [11]10860 	push	af
   8B30 33            [ 6]10861 	inc	sp
   8B31 21 B4 8B      [10]10862 	ld	hl, #___str_85
   8B34 E5            [11]10863 	push	hl
   8B35 CD E6 4C      [17]10864 	call	_PrintText
   8B38 F1            [10]10865 	pop	af
   8B39 F1            [10]10866 	pop	af
   8B3A 33            [ 6]10867 	inc	sp
   8B3B 18 18         [12]10868 	jr	00105$
   8B3D                   10869 00104$:
                          10870 ;src/main.c:2484: else if (player == 1) PrintText("PLAYER@1@WINS>", 19, 106, 0);
   8B3D DD 7E 04      [19]10871 	ld	a, 4 (ix)
   8B40 3D            [ 4]10872 	dec	a
   8B41 20 12         [12]10873 	jr	NZ,00105$
   8B43 21 6A 00      [10]10874 	ld	hl, #0x006a
   8B46 E5            [11]10875 	push	hl
   8B47 3E 13         [ 7]10876 	ld	a, #0x13
   8B49 F5            [11]10877 	push	af
   8B4A 33            [ 6]10878 	inc	sp
   8B4B 21 C3 8B      [10]10879 	ld	hl, #___str_86
   8B4E E5            [11]10880 	push	hl
   8B4F CD E6 4C      [17]10881 	call	_PrintText
   8B52 F1            [10]10882 	pop	af
   8B53 F1            [10]10883 	pop	af
   8B54 33            [ 6]10884 	inc	sp
   8B55                   10885 00105$:
                          10886 ;src/main.c:2485: PrintText("HIGH@SCORE:", 16, 122, 0);
   8B55 21 7A 00      [10]10887 	ld	hl, #0x007a
   8B58 E5            [11]10888 	push	hl
   8B59 3E 10         [ 7]10889 	ld	a, #0x10
   8B5B F5            [11]10890 	push	af
   8B5C 33            [ 6]10891 	inc	sp
   8B5D 21 D2 8B      [10]10892 	ld	hl, #___str_87
   8B60 E5            [11]10893 	push	hl
   8B61 CD E6 4C      [17]10894 	call	_PrintText
   8B64 F1            [10]10895 	pop	af
                          10896 ;src/main.c:2486: PrintNumber(highScore, 4, 52, 122, 0);			
   8B65 33            [ 6]10897 	inc	sp
   8B66 21 7A 00      [10]10898 	ld	hl,#0x007a
   8B69 E3            [19]10899 	ex	(sp),hl
   8B6A 21 04 34      [10]10900 	ld	hl, #0x3404
   8B6D E5            [11]10901 	push	hl
   8B6E 2A C3 48      [16]10902 	ld	hl, (_highScore)
   8B71 E5            [11]10903 	push	hl
   8B72 CD 17 4C      [17]10904 	call	_PrintNumber
   8B75 21 06 00      [10]10905 	ld	hl, #6
   8B78 39            [11]10906 	add	hl, sp
   8B79 F9            [ 6]10907 	ld	sp, hl
   8B7A 18 12         [12]10908 	jr	00108$
   8B7C                   10909 00107$:
                          10910 ;src/main.c:2489: PrintText("G@A@M@E@@O@V@E@R", 16, 107, 0);
   8B7C 21 6B 00      [10]10911 	ld	hl, #0x006b
   8B7F E5            [11]10912 	push	hl
   8B80 3E 10         [ 7]10913 	ld	a, #0x10
   8B82 F5            [11]10914 	push	af
   8B83 33            [ 6]10915 	inc	sp
   8B84 21 A3 8B      [10]10916 	ld	hl, #___str_84
   8B87 E5            [11]10917 	push	hl
   8B88 CD E6 4C      [17]10918 	call	_PrintText
   8B8B F1            [10]10919 	pop	af
   8B8C F1            [10]10920 	pop	af
   8B8D 33            [ 6]10921 	inc	sp
   8B8E                   10922 00108$:
                          10923 ;src/main.c:2490: Pause(500);	
   8B8E 21 F4 01      [10]10924 	ld	hl, #0x01f4
   8B91 CD 6A 4B      [17]10925 	call	_Pause
                          10926 ;src/main.c:2492: while (!cpct_isAnyKeyPressed());
   8B94                   10927 00109$:
   8B94 CD CF 45      [17]10928 	call	_cpct_isAnyKeyPressed
   8B97 7D            [ 4]10929 	ld	a, l
   8B98 B7            [ 4]10930 	or	a, a
   8B99 28 F9         [12]10931 	jr	Z,00109$
                          10932 ;src/main.c:2493: InitGame();
   8B9B CD 44 8A      [17]10933 	call	_InitGame
   8B9E                   10934 00116$:
   8B9E DD F9         [10]10935 	ld	sp, ix
   8BA0 DD E1         [14]10936 	pop	ix
   8BA2 C9            [10]10937 	ret
   8BA3                   10938 ___str_84:
   8BA3 47 40 41 40 4D 40 10939 	.ascii "G@A@M@E@@O@V@E@R"
        45 40 40 4F 40 56
        40 45 40 52
   8BB3 00                10940 	.db 0x00
   8BB4                   10941 ___str_85:
   8BB4 50 4C 41 59 45 52 10942 	.ascii "PLAYER@2@WINS>"
        40 32 40 57 49 4E
        53 3E
   8BC2 00                10943 	.db 0x00
   8BC3                   10944 ___str_86:
   8BC3 50 4C 41 59 45 52 10945 	.ascii "PLAYER@1@WINS>"
        40 31 40 57 49 4E
        53 3E
   8BD1 00                10946 	.db 0x00
   8BD2                   10947 ___str_87:
   8BD2 48 49 47 48 40 53 10948 	.ascii "HIGH@SCORE:"
        43 4F 52 45 3A
   8BDD 00                10949 	.db 0x00
                          10950 ;src/main.c:2498: void main(void) {
                          10951 ;	---------------------------------
                          10952 ; Function main
                          10953 ; ---------------------------------
   8BDE                   10954 _main::
                          10955 ;src/main.c:2500: cpct_disableFirmware();
   8BDE CD C7 46      [17]10956 	call	_cpct_disableFirmware
                          10957 ;src/main.c:2503: cpct_setInterruptHandler(Interrupt); 
   8BE1 21 76 4B      [10]10958 	ld	hl, #_Interrupt
   8BE4 CD 3B 48      [17]10959 	call	_cpct_setInterruptHandler
                          10960 ;src/main.c:2505: cpct_setVideoMode(0);
   8BE7 2E 00         [ 7]10961 	ld	l, #0x00
   8BE9 CD 8F 46      [17]10962 	call	_cpct_setVideoMode
                          10963 ;src/main.c:2507: cpct_setPalette(g_palette, 16);
   8BEC 21 10 00      [10]10964 	ld	hl, #0x0010
   8BEF E5            [11]10965 	push	hl
   8BF0 21 C7 2E      [10]10966 	ld	hl, #_g_palette
   8BF3 E5            [11]10967 	push	hl
   8BF4 CD BD 43      [17]10968 	call	_cpct_setPalette
                          10969 ;src/main.c:2509: cpct_setBorder(g_palette[BG_COLOR]);
   8BF7 21 C8 2E      [10]10970 	ld	hl, #_g_palette + 1
   8BFA 46            [ 7]10971 	ld	b, (hl)
   8BFB C5            [11]10972 	push	bc
   8BFC 33            [ 6]10973 	inc	sp
   8BFD 3E 10         [ 7]10974 	ld	a, #0x10
   8BFF F5            [11]10975 	push	af
   8C00 33            [ 6]10976 	inc	sp
   8C01 CD 4A 44      [17]10977 	call	_cpct_setPALColour
                          10978 ;src/main.c:2511: cpct_etm_setTileset2x4(g_tileset);	
   8C04 21 D7 2E      [10]10979 	ld	hl, #_g_tileset
   8C07 CD 8A 45      [17]10980 	call	_cpct_etm_setTileset2x4
                          10981 ;src/main.c:2513: InitValues();
   8C0A CD 6E 89      [17]10982 	call	_InitValues
                          10983 ;src/main.c:2515: InitGame();
   8C0D CD 44 8A      [17]10984 	call	_InitGame
                          10985 ;src/main.c:2518: while (1) {
   8C10                   10986 00140$:
                          10987 ;src/main.c:2520: if (ctMainLoop % 8 == 0) {
   8C10 21 08 00      [10]10988 	ld	hl, #0x0008
   8C13 E5            [11]10989 	push	hl
   8C14 2A DB 48      [16]10990 	ld	hl, (_ctMainLoop)
   8C17 E5            [11]10991 	push	hl
   8C18 CD AC 47      [17]10992 	call	__modsint
   8C1B F1            [10]10993 	pop	af
   8C1C F1            [10]10994 	pop	af
   8C1D 7C            [ 4]10995 	ld	a, h
   8C1E B5            [ 4]10996 	or	a,l
   8C1F 20 46         [12]10997 	jr	NZ,00108$
                          10998 ;src/main.c:2521: ReprintObject(); // reprint the active object
   8C21 CD 5D 5B      [17]10999 	call	_ReprintObject
                          11000 ;src/main.c:2522: PrintObjectInStore(); // reprint the object into the store
   8C24 CD CC 58      [17]11001 	call	_PrintObjectInStore
                          11002 ;src/main.c:2523: CheckObject(0); // verify collection of object 1
   8C27 AF            [ 4]11003 	xor	a, a
   8C28 F5            [11]11004 	push	af
   8C29 33            [ 6]11005 	inc	sp
   8C2A CD FF 58      [17]11006 	call	_CheckObject
   8C2D 33            [ 6]11007 	inc	sp
                          11008 ;src/main.c:2524: CheckObject(1); // verify collection of object 2
   8C2E 3E 01         [ 7]11009 	ld	a, #0x01
   8C30 F5            [11]11010 	push	af
   8C31 33            [ 6]11011 	inc	sp
   8C32 CD FF 58      [17]11012 	call	_CheckObject
   8C35 33            [ 6]11013 	inc	sp
                          11014 ;src/main.c:2525: MakeWizardAnim(0); // activates the wizard's shot if the player 1 is inactive		
   8C36 2E 00         [ 7]11015 	ld	l, #0x00
   8C38 CD 21 73      [17]11016 	call	_MakeWizardAnim
                          11017 ;src/main.c:2526: if (spr[0].print_minV) CheckActiveTile(0); // check entry into store, door or well of player 1
   8C3B 3A 00 49      [13]11018 	ld	a, (#_spr + 13)
   8C3E B7            [ 4]11019 	or	a, a
   8C3F 28 07         [12]11020 	jr	Z,00102$
   8C41 AF            [ 4]11021 	xor	a, a
   8C42 F5            [11]11022 	push	af
   8C43 33            [ 6]11023 	inc	sp
   8C44 CD D3 5F      [17]11024 	call	_CheckActiveTile
   8C47 33            [ 6]11025 	inc	sp
   8C48                   11026 00102$:
                          11027 ;src/main.c:2528: if (TwoPlayers) {
   8C48 3A BE 48      [13]11028 	ld	a,(#_TwoPlayers + 0)
   8C4B B7            [ 4]11029 	or	a, a
   8C4C 28 16         [12]11030 	jr	Z,00106$
                          11031 ;src/main.c:2529: CheckDuel(); // check that both players collide and have potions
   8C4E CD CB 70      [17]11032 	call	_CheckDuel
                          11033 ;src/main.c:2530: MakeWizardAnim(1); // activates the wizard's shot if the player 2 is inactive		
   8C51 2E 01         [ 7]11034 	ld	l, #0x01
   8C53 CD 21 73      [17]11035 	call	_MakeWizardAnim
                          11036 ;src/main.c:2531: if (spr[1].print_minV) CheckActiveTile(1); // check entry into store, door or well of player 2
   8C56 3A 0F 49      [13]11037 	ld	a, (#_spr + 28)
   8C59 B7            [ 4]11038 	or	a, a
   8C5A 28 08         [12]11039 	jr	Z,00106$
   8C5C 3E 01         [ 7]11040 	ld	a, #0x01
   8C5E F5            [11]11041 	push	af
   8C5F 33            [ 6]11042 	inc	sp
   8C60 CD D3 5F      [17]11043 	call	_CheckActiveTile
   8C63 33            [ 6]11044 	inc	sp
   8C64                   11045 00106$:
                          11046 ;src/main.c:2533: WizardAnim(); // print the wizard if active
   8C64 CD 68 72      [17]11047 	call	_WizardAnim
   8C67                   11048 00108$:
                          11049 ;src/main.c:2536: if (!turboMode) cpct_waitVSYNC(); // wait for vertical retrace	
   8C67 3A D8 48      [13]11050 	ld	a,(#_turboMode + 0)
   8C6A B7            [ 4]11051 	or	a, a
   8C6B 20 03         [12]11052 	jr	NZ,00110$
   8C6D CD 87 46      [17]11053 	call	_cpct_waitVSYNC
   8C70                   11054 00110$:
                          11055 ;src/main.c:2539: switch (ctMainLoop % 3) {
   8C70 21 03 00      [10]11056 	ld	hl, #0x0003
   8C73 E5            [11]11057 	push	hl
   8C74 2A DB 48      [16]11058 	ld	hl, (_ctMainLoop)
   8C77 E5            [11]11059 	push	hl
   8C78 CD AC 47      [17]11060 	call	__modsint
   8C7B F1            [10]11061 	pop	af
   8C7C F1            [10]11062 	pop	af
   8C7D 4D            [ 4]11063 	ld	c, l
   8C7E 44            [ 4]11064 	ld	b, h
   8C7F 79            [ 4]11065 	ld	a, c
   8C80 B7            [ 4]11066 	or	a, a
   8C81 B0            [ 4]11067 	or	a, b
   8C82 28 0E         [12]11068 	jr	Z,00111$
   8C84 79            [ 4]11069 	ld	a, c
   8C85 3D            [ 4]11070 	dec	a
   8C86 B0            [ 4]11071 	or	a, b
   8C87 28 18         [12]11072 	jr	Z,00112$
   8C89 79            [ 4]11073 	ld	a, c
   8C8A D6 02         [ 7]11074 	sub	a, #0x02
   8C8C B0            [ 4]11075 	or	a, b
   8C8D 28 2F         [12]11076 	jr	Z,00117$
   8C8F C3 18 8D      [10]11077 	jp	00129$
                          11078 ;src/main.c:2541: case 0: {							
   8C92                   11079 00111$:
                          11080 ;src/main.c:2542: PlayerLoop(&spr[0]); // player 1
   8C92 21 F3 48      [10]11081 	ld	hl, #_spr
   8C95 CD 40 6C      [17]11082 	call	_PlayerLoop
                          11083 ;src/main.c:2543: EnemyLoop(&spr[2]);	 // enemy sprite 2 is always processed (fast)
   8C98 21 11 49      [10]11084 	ld	hl, #(_spr + 0x001e)
   8C9B CD 57 83      [17]11085 	call	_EnemyLoop
                          11086 ;src/main.c:2544: break;
   8C9E C3 18 8D      [10]11087 	jp	00129$
                          11088 ;src/main.c:2547: case 1:	{			
   8CA1                   11089 00112$:
                          11090 ;src/main.c:2548: if (TwoPlayers) {
   8CA1 3A BE 48      [13]11091 	ld	a,(#_TwoPlayers + 0)
   8CA4 B7            [ 4]11092 	or	a, a
   8CA5 28 0F         [12]11093 	jr	Z,00116$
                          11094 ;src/main.c:2549: PlayerLoop(&spr[1]); // player 2
   8CA7 21 02 49      [10]11095 	ld	hl, #(_spr + 0x000f)
   8CAA CD 40 6C      [17]11096 	call	_PlayerLoop
                          11097 ;src/main.c:2550: if (!turboMode) cpct_waitVSYNC(); // additional wait for vertical retrace (avoid flickering)
   8CAD 3A D8 48      [13]11098 	ld	a,(#_turboMode + 0)
   8CB0 B7            [ 4]11099 	or	a, a
   8CB1 20 03         [12]11100 	jr	NZ,00116$
   8CB3 CD 87 46      [17]11101 	call	_cpct_waitVSYNC
   8CB6                   11102 00116$:
                          11103 ;src/main.c:2552: EnemyLoop(&spr[3]);	 // enemy sprite 3 is always processed (fast)
   8CB6 21 20 49      [10]11104 	ld	hl, #(_spr + 0x002d)
   8CB9 CD 57 83      [17]11105 	call	_EnemyLoop
                          11106 ;src/main.c:2553: break;
   8CBC 18 5A         [12]11107 	jr	00129$
                          11108 ;src/main.c:2556: case 2:	{
   8CBE                   11109 00117$:
                          11110 ;src/main.c:2557: EnemyLoop(&spr[enemyTurn+4]); // enemy sprites 4 and 5 take turns processing (slow)				
   8CBE 3A D5 48      [13]11111 	ld	a,(#_enemyTurn + 0)
   8CC1 C6 04         [ 7]11112 	add	a, #0x04
   8CC3 4F            [ 4]11113 	ld	c,a
   8CC4 06 00         [ 7]11114 	ld	b,#0x00
   8CC6 69            [ 4]11115 	ld	l, c
   8CC7 60            [ 4]11116 	ld	h, b
   8CC8 29            [11]11117 	add	hl, hl
   8CC9 09            [11]11118 	add	hl, bc
   8CCA 29            [11]11119 	add	hl, hl
   8CCB 09            [11]11120 	add	hl, bc
   8CCC 29            [11]11121 	add	hl, hl
   8CCD 09            [11]11122 	add	hl, bc
   8CCE 11 F3 48      [10]11123 	ld	de, #_spr
   8CD1 19            [11]11124 	add	hl, de
   8CD2 CD 57 83      [17]11125 	call	_EnemyLoop
                          11126 ;src/main.c:2558: if (++enemyTurn > 1) enemyTurn = 0;
   8CD5 FD 21 D5 48   [14]11127 	ld	iy, #_enemyTurn
   8CD9 FD 34 00      [23]11128 	inc	0 (iy)
   8CDC 3E 01         [ 7]11129 	ld	a, #0x01
   8CDE FD 96 00      [19]11130 	sub	a, 0 (iy)
   8CE1 30 04         [12]11131 	jr	NC,00119$
   8CE3 FD 36 00 00   [19]11132 	ld	0 (iy), #0x00
   8CE7                   11133 00119$:
                          11134 ;src/main.c:2561: if (sht.active) {				
   8CE7 3A 60 49      [13]11135 	ld	a, (#(_sht + 0x0004) + 0)
   8CEA B7            [ 4]11136 	or	a, a
   8CEB 28 17         [12]11137 	jr	Z,00124$
                          11138 ;src/main.c:2562: MoveShot(); // update the shot's XY coordinates	
   8CED CD EE 71      [17]11139 	call	_MoveShot
                          11140 ;src/main.c:2565: if (ctWizardAnim > 0) 	
   8CF0 3A DA 48      [13]11141 	ld	a,(#_ctWizardAnim + 0)
   8CF3 B7            [ 4]11142 	or	a, a
   8CF4 28 08         [12]11143 	jr	Z,00121$
                          11144 ;src/main.c:2566: PrintShot(g_magic_3);	// wizard
   8CF6 21 61 16      [10]11145 	ld	hl, #_g_magic_3
   8CF9 CD C4 71      [17]11146 	call	_PrintShot
   8CFC 18 06         [12]11147 	jr	00124$
   8CFE                   11148 00121$:
                          11149 ;src/main.c:2568: PrintShot(g_magic_2);	// witch
   8CFE 21 41 16      [10]11150 	ld	hl, #_g_magic_2
   8D01 CD C4 71      [17]11151 	call	_PrintShot
   8D04                   11152 00124$:
                          11153 ;src/main.c:2572: if (spr[0].power_maxV > 0) spr[0].power_maxV--;
   8D04 01 01 49      [10]11154 	ld	bc, #_spr + 14
   8D07 0A            [ 7]11155 	ld	a, (bc)
   8D08 B7            [ 4]11156 	or	a, a
   8D09 28 03         [12]11157 	jr	Z,00126$
   8D0B C6 FF         [ 7]11158 	add	a, #0xff
   8D0D 02            [ 7]11159 	ld	(bc), a
   8D0E                   11160 00126$:
                          11161 ;src/main.c:2573: if (spr[1].power_maxV > 0) spr[1].power_maxV--;			
   8D0E 01 10 49      [10]11162 	ld	bc, #_spr + 29
   8D11 0A            [ 7]11163 	ld	a, (bc)
   8D12 B7            [ 4]11164 	or	a, a
   8D13 28 03         [12]11165 	jr	Z,00129$
   8D15 C6 FF         [ 7]11166 	add	a, #0xff
   8D17 02            [ 7]11167 	ld	(bc), a
                          11168 ;src/main.c:2575: }
   8D18                   11169 00129$:
                          11170 ;src/main.c:2578: ctMainLoop++;
   8D18 ED 4B DB 48   [20]11171 	ld	bc, (_ctMainLoop)
   8D1C 03            [ 6]11172 	inc	bc
                          11173 ;src/main.c:2577: if (ctMainLoop == 174) {
   8D1D FD 21 DB 48   [14]11174 	ld	iy, #_ctMainLoop
   8D21 FD 7E 00      [19]11175 	ld	a, 0 (iy)
   8D24 D6 AE         [ 7]11176 	sub	a, #0xae
   8D26 FD B6 01      [19]11177 	or	a, 1 (iy)
   8D29 20 25         [12]11178 	jr	NZ,00137$
                          11179 ;src/main.c:2578: ctMainLoop++;
   8D2B ED 43 DB 48   [20]11180 	ld	(_ctMainLoop), bc
                          11181 ;src/main.c:2579: SetObject(1); // set the second object
   8D2F 2E 01         [ 7]11182 	ld	l, #0x01
   8D31 CD F7 5D      [17]11183 	call	_SetObject
                          11184 ;src/main.c:2581: if (nMap == 0 && !TwoPlayers && nTip<1) 
   8D34 3A BA 48      [13]11185 	ld	a,(#_nMap + 0)
   8D37 B7            [ 4]11186 	or	a, a
   8D38 C2 10 8C      [10]11187 	jp	NZ, 00140$
   8D3B 3A BE 48      [13]11188 	ld	a,(#_TwoPlayers + 0)
   8D3E B7            [ 4]11189 	or	a, a
   8D3F C2 10 8C      [10]11190 	jp	NZ, 00140$
   8D42 3A D9 48      [13]11191 	ld	a,(#_nTip + 0)
   8D45 D6 01         [ 7]11192 	sub	a, #0x01
   8D47 D2 10 8C      [10]11193 	jp	NC, 00140$
                          11194 ;src/main.c:2582: PrintTip(); // novice help
   8D4A CD E5 51      [17]11195 	call	_PrintTip
   8D4D C3 10 8C      [10]11196 	jp	00140$
   8D50                   11197 00137$:
                          11198 ;src/main.c:2584: else if (ctMainLoop++ == 350) {			
   8D50 ED 5B DB 48   [20]11199 	ld	de, (_ctMainLoop)
   8D54 ED 43 DB 48   [20]11200 	ld	(_ctMainLoop), bc
   8D58 7B            [ 4]11201 	ld	a, e
   8D59 D6 5E         [ 7]11202 	sub	a, #0x5e
   8D5B C2 10 8C      [10]11203 	jp	NZ,00140$
   8D5E 15            [ 4]11204 	dec	d
   8D5F C2 10 8C      [10]11205 	jp	NZ,00140$
                          11206 ;src/main.c:2585: SetObject(0); // set the first object			
   8D62 2E 00         [ 7]11207 	ld	l, #0x00
   8D64 CD F7 5D      [17]11208 	call	_SetObject
                          11209 ;src/main.c:2586: ctMainLoop = 0; // reset counter
   8D67 21 00 00      [10]11210 	ld	hl, #0x0000
   8D6A 22 DB 48      [16]11211 	ld	(_ctMainLoop), hl
   8D6D C3 10 8C      [10]11212 	jp	00140$
                          11213 	.area _CODE
                          11214 	.area _INITIALIZER
                          11215 	.area _CABS (ABS)
