//Opcodes 0-99 table, we'll try with some unused opcodes

patch=0,EE,2064C6F0,extended,0035C830//                   jpt_1FAF40:     .word loc_1FAF48         # DATA XREF: CRunningScript__ProcessCommands_0To99+34↑o
//                                                                       # jump table for switch statement
patch=0,EE,2064C6F4,extended,0035CF00 //                                  .word @@opcode_0001      # wait %1d%
patch=0,EE,2064C6F8,extended,0035CF28 //                                  .word @@opcode_0002      # jump %1p%
patch=0,EE,2064C6FC,extended,0035CF68 //                                  .word @@opcode_0003      # shake_camera %1d%
patch=0,EE,2064C700,extended,0035CFA0 //                                  .word @@opcode_0004      # jumptable 001FAF40 case 4
patch=0,EE,2064C704,extended,0035CFD0 //                                  .word @@opcode_0005      # jumptable 001FAF40 case 5
patch=0,EE,2064C708,extended,0035D000 //                                  .word @@opcode_0006      # jumptable 001FAF40 case 6
patch=0,EE,2064C70C,extended,0035D030 //                                  .word @@opcode_0007      # jumptable 001FAF40 case 7
patch=0,EE,2064C710,extended,0035D060 //                                  .word @@opcode_0008      # jumptable 001FAF40 case 8
patch=0,EE,2064C714,extended,0035D098 //                                  .word loc_1FB0E8         # jumptable 001FAF40 case 9
patch=0,EE,2064C718,extended,0035D0D0 //                                  .word loc_1FB120         # jumptable 001FAF40 case 10
patch=0,EE,2064C71C,extended,0035D108 //                                  .word loc_1FB158         # jumptable 001FAF40 case 11
patch=0,EE,2064C720,extended,0035D140 //                                  .word loc_1FB190         # jumptable 001FAF40 case 12
patch=0,EE,2064C724,extended,0035D178 //                                  .word loc_1FB1C8         # jumptable 001FAF40 case 13
patch=0,EE,2064C728,extended,0035D1B0 //                                  .word loc_1FB200         # jumptable 001FAF40 case 14
patch=0,EE,2064C72C,extended,0035D1E8 //                                  .word loc_1FB238         # jumptable 001FAF40 case 15
patch=0,EE,2064C730,extended,0035D220 //                                  .word loc_1FB270         # jumptable 001FAF40 case 16
patch=0,EE,2064C734,extended,0035D258 //                                  .word loc_1FB2A8         # jumptable 001FAF40 case 17
patch=0,EE,2064C738,extended,0035D290 //                                  .word loc_1FB2E0         # jumptable 001FAF40 case 18
patch=0,EE,2064C73C,extended,0035D2C8 //                                  .word loc_1FB318         # jumptable 001FAF40 case 19
patch=0,EE,2064C740,extended,0035D300 //                                  .word loc_1FB350         # jumptable 001FAF40 case 20
patch=0,EE,2064C744,extended,0035D340 //                                  .word loc_1FB390         # jumptable 001FAF40 case 21
patch=0,EE,2064C748,extended,0035D380 //                                  .word loc_1FB3D0         # jumptable 001FAF40 case 22
patch=0,EE,2064C74C,extended,0035D3C0 //                                  .word loc_1FB410         # jumptable 001FAF40 case 23
patch=0,EE,2064C750,extended,0035D400 //                                  .word loc_1FB450         # jumptable 001FAF40 case 24
patch=0,EE,2064C754,extended,0035D438 //                                  .word loc_1FB488         # jumptable 001FAF40 case 25
patch=0,EE,2064C758,extended,0035D470 //                                  .word loc_1FB4C0         # jumptable 001FAF40 case 26
patch=0,EE,2064C75C,extended,0035D4A8 //                                  .word loc_1FB4F8         # jumptable 001FAF40 case 27
patch=0,EE,2064C760,extended,0035D4E0 //                                  .word loc_1FB530         # jumptable 001FAF40 case 28
patch=0,EE,2064C764,extended,0035D518 //                                  .word loc_1FB568         # jumptable 001FAF40 case 29
patch=0,EE,2064C768,extended,0035D550 //                                  .word loc_1FB5A0         # jumptable 001FAF40 case 30
patch=0,EE,2064C76C,extended,0035D588 //                                  .word loc_1FB5D8         # jumptable 001FAF40 case 31
patch=0,EE,2064C770,extended,0035D5C0 //                                  .word loc_1FB610         # jumptable 001FAF40 case 32
patch=0,EE,2064C774,extended,0035D608 //                                  .word loc_1FB658         # jumptable 001FAF40 case 33
patch=0,EE,2064C778,extended,0035D650 //                                  .word loc_1FB6A0         # jumptable 001FAF40 case 34
patch=0,EE,2064C77C,extended,0035D690 //                                  .word loc_1FB6E0         # jumptable 001FAF40 case 35
patch=0,EE,2064C780,extended,0035D6D0 //                                  .word loc_1FB720         # jumptable 001FAF40 case 36
patch=0,EE,2064C784,extended,0035D710 //                                  .word loc_1FB760         # jumptable 001FAF40 case 37
patch=0,EE,2064C788,extended,0035D750 //                                  .word loc_1FB7A0         # jumptable 001FAF40 case 38
patch=0,EE,2064C78C,extended,0035D790 //                                  .word loc_1FB7E0         # jumptable 001FAF40 case 39
patch=0,EE,2064C790,extended,0035D7D0 //                                  .word loc_1FB820         # jumptable 001FAF40 case 40
patch=0,EE,2064C794,extended,0035D810 //                                  .word loc_1FB860         # jumptable 001FAF40 case 41
patch=0,EE,2064C798,extended,0035D850 //                                  .word loc_1FB8A0         # jumptable 001FAF40 case 42
patch=0,EE,2064C79C,extended,0035D888 //                                  .word loc_1FB8D8         # jumptable 001FAF40 case 43
patch=0,EE,2064C7A0,extended,0035D8C0 //                                  .word loc_1FB910         # jumptable 001FAF40 case 44
patch=0,EE,2064C7A4,extended,0035D8F8 //                                  .word loc_1FB948         # jumptable 001FAF40 case 45
patch=0,EE,2064C7A8,extended,0035D930 //                                  .word loc_1FB980         # jumptable 001FAF40 case 46
patch=0,EE,2064C7AC,extended,0035D968 //                                  .word loc_1FB9B8         # jumptable 001FAF40 case 47
patch=0,EE,2064C7B0,extended,0035D9A0 //                                  .word loc_1FB9F0         # jumptable 001FAF40 case 48
patch=0,EE,2064C7B4,extended,0035D9E8 //                                  .word loc_1FBA38         # jumptable 001FAF40 case 49
patch=0,EE,2064C7B8,extended,0035DA30 //                                  .word loc_1FBA80         # jumptable 001FAF40 case 50
patch=0,EE,2064C7BC,extended,0035DA70 //                                  .word loc_1FBAC0         # jumptable 001FAF40 case 51
patch=0,EE,2064C7C0,extended,0035DAB0 //                                  .word loc_1FBB00         # jumptable 001FAF40 case 52
patch=0,EE,2064C7C4,extended,0035DAF0 //                                  .word loc_1FBB40         # jumptable 001FAF40 case 53
patch=0,EE,2064C7C8,extended,0035DB30 //                                  .word loc_1FBB80         # jumptable 001FAF40 case 54
patch=0,EE,2064C7CC,extended,0035DB70 //                                  .word loc_1FBBC0         # jumptable 001FAF40 case 55
patch=0,EE,2064C7D0,extended,0035DBB0 //                                  .word loc_1FBC00         # jumptable 001FAF40 case 56
patch=0,EE,2064C7D4,extended,0035DBF0 //                                  .word loc_1FBC40         # jumptable 001FAF40 case 57
patch=0,EE,2064C7D8,extended,0035DC30 //                                  .word loc_1FBC80         # jumptable 001FAF40 case 58
patch=0,EE,2064C7DC,extended,0035DC68 //                                  .word loc_1FBCB8         # jumptable 001FAF40 case 59
patch=0,EE,2064C7E0,extended,0035DCA0 //                                  .word loc_1FBCF0         # jumptable 001FAF40 case 60
patch=0,EE,2064C7E4,extended,0035C838 //                                  .word read_memory
patch=0,EE,2064C7E8,extended,0035C86C //                                  .word write_memory
patch=0,EE,2064C7EC,extended,0035C890 //                                  .word call_function
patch=0,EE,2064C7F0,extended,0035CA4C //                                  .word call_method
patch=0,EE,2064C7F4,extended,0035E3F0 //                                  .word def_1FAF40         # jumptable 001FAF40 default case, cases 61-65,71-76,84-87
patch=0,EE,2064C7F8,extended,0035DCD8 //                                  .word loc_1FBD28         # jumptable 001FAF40 case 66
patch=0,EE,2064C7FC,extended,0035DD20 //                                  .word loc_1FBD70         # jumptable 001FAF40 case 67
patch=0,EE,2064C800,extended,0035DD68 //                                  .word loc_1FBDB8         # jumptable 001FAF40 case 68
patch=0,EE,2064C804,extended,0035DDA8 //                                  .word loc_1FBDF8         # jumptable 001FAF40 case 69
patch=0,EE,2064C808,extended,0035DDE8 //                                  .word loc_1FBE38         # jumptable 001FAF40 case 70
patch=0,EE,2064C80C,extended,0035CBD4 //                                  .word get_ped_struct
patch=0,EE,2064C810,extended,0035CC20 //                                  .word get_vehicle_struct
patch=0,EE,2064C814,extended,0035CC6C //                                  .word get_object_struct
patch=0,EE,2064C818,extended,0035CCB8 //                                  .word get_this_script_struct
patch=0,EE,2064C81C,extended,0035CCDC //                                  .word get_var_offset
patch=0,EE,2064C820,extended,0035E3F0 //                                  .word def_1FAF40         # jumptable 001FAF40 default case, cases 61-65,71-76,84-87
patch=0,EE,2064C824,extended,0035DE28 //                                  .word loc_1FBE78         # jumptable 001FAF40 case 77
patch=0,EE,2064C828,extended,0035DE70 //                                  .word loc_1FBEC0         # jumptable 001FAF40 case 78
patch=0,EE,2064C82C,extended,0035DEF0 //                                  .word loc_1FBF40         # jumptable 001FAF40 case 79
patch=0,EE,2064C830,extended,0035DFA8 //                                  .word loc_1FBFF8         # jumptable 001FAF40 case 80
patch=0,EE,2064C834,extended,0035E008 //                                  .word loc_1FC058         # jumptable 001FAF40 case 81
patch=0,EE,2064C838,extended,0035E030 //                                  .word loc_1FC080         # jumptable 001FAF40 case 82
patch=0,EE,2064C83C,extended,0035E040 //                                  .word loc_1FC090         # jumptable 001FAF40 case 83
patch=0,EE,2064C840,extended,0035E3F0 //                                  .word def_1FAF40         # jumptable 001FAF40 default case, cases 61-65,71-76,84-87
patch=0,EE,2064C844,extended,0035E3F0 //                                  .word def_1FAF40         # jumptable 001FAF40 default case, cases 61-65,71-76,84-87
patch=0,EE,2064C848,extended,0035E3F0 //                                  .word def_1FAF40         # jumptable 001FAF40 default case, cases 61-65,71-76,84-87
patch=0,EE,2064C84C,extended,0035E3F0 //                                  .word def_1FAF40         # jumptable 001FAF40 default case, cases 61-65,71-76,84-87
patch=0,EE,2064C850,extended,0035E1B0 //                                  .word loc_1FC200         # jumptable 001FAF40 case 88
patch=0,EE,2064C854,extended,0035E1E0 //                                  .word loc_1FC230         # jumptable 001FAF40 case 89
patch=0,EE,2064C858,extended,0035E210 //                                  .word loc_1FC260         # jumptable 001FAF40 case 90
patch=0,EE,2064C85C,extended,0035E240 //                                  .word loc_1FC290         # jumptable 001FAF40 case 91
patch=0,EE,2064C860,extended,0035E270 //                                  .word loc_1FC2C0         # jumptable 001FAF40 case 92
patch=0,EE,2064C864,extended,0035E2A0 //                                  .word loc_1FC2F0         # jumptable 001FAF40 case 93
patch=0,EE,2064C868,extended,0035E2D0 //                                  .word loc_1FC320         # jumptable 001FAF40 case 94
patch=0,EE,2064C86C,extended,0035E300 //                                  .word loc_1FC350         # jumptable 001FAF40 case 95
patch=0,EE,2064C870,extended,0035E330 //                                  .word loc_1FC380         # jumptable 001FAF40 case 96
patch=0,EE,2064C874,extended,0035E360 //                                  .word loc_1FC3B0         # jumptable 001FAF40 case 97
patch=0,EE,2064C878,extended,0035E390 //                                  .word loc_1FC3E0         # jumptable 001FAF40 case 98
patch=0,EE,2064C87C,extended,0035E3C0
patch=0,EE,2064C880,extended,0035E3F0

patch=0,EE,205F91C0,extended,0035C7E8 //Hook call to ProcessCommands_0To99

//                              CRunningScript__ProcessCommands_0To99:   # DATA XREF: seg000:_opcodeHandlerTable↓o
//
//


patch=0,EE,2035C7E8,extended,27BDFF80 //                                  addiu   $sp, -0x80       # Add Immediate Unsigned
patch=0,EE,2035C7EC,extended,2CA10064 //                                  sltiu   $at, $a1, 0x64   # switch 100 cases
patch=0,EE,2035C7F0,extended,FFBF0060 //                                  sd      $ra, 0x60($sp)  # Store Doubleword
patch=0,EE,2035C7F4,extended,7FB20050 //                                  sq      $s2, 0x50($sp)  # Store Quadword
patch=0,EE,2035C7F8,extended,7FB10040 //                                  sq      $s1, 0x40($sp)  # Store Quadword
patch=0,EE,2035C7FC,extended,0080902D //                                  move    $s2, $a0
patch=0,EE,2035C800,extended,7FB00030 //                                  sq      $s0, 0x30($sp)  # Store Quadword
patch=0,EE,2035C804,extended,E7B60008 //                                  swc1    $f22, 0x8($sp)  # Store Word from FPU
patch=0,EE,2035C808,extended,E7B50004 //                                  swc1    $f21, 0x4($sp)  # Store Word from FPU
patch=0,EE,2035C80C,extended,10200546 //                                  beqz    $at, def_1FAF40  # jumptable 001FAF40 default case, cases 61-65,71-76,84-87
patch=0,EE,2035C810,extended,E7B40000 //                                  swc1    $f20, 0x0($sp)  # Store Word from FPU
patch=0,EE,2035C814,extended,3C030065 //                                  lui     $v1, 0x65  # 'e'  # Load Upper Immediate
patch=0,EE,2035C818,extended,00051080 //                                  sll     $v0, $a1, 2      # Shift Left Logical
patch=0,EE,2035C81C,extended,2463C6F0 //                                  li      $v1, jpt_1FAF40  # Load Immediate
patch=0,EE,2035C820,extended,00431021 //                                  addu    $v0, $v1         # Add Unsigned
patch=0,EE,2035C824,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035C828,extended,00400008 //                                  jr      $v0              # switch jump
patch=0,EE,2035C82C,extended,00000000 //                                  nop
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FAF48:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035C830,extended,1000053F //                                  b       loc_1FC448       # jumptable 001FAF40 case 0
patch=0,EE,2035C834,extended,0000102D //                                  move    $v0, $zero

//                               # ---------------------------------------------------------------------------
//                              read_memory:                           # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o

patch=0,EE,2035C838,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035C83C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035C840,extended,3C010070 //                                  lui     $at, 0x70  # Load Upper Immediate
patch=0,EE,2035C844,extended,8c24DFB0 //                                  lw      $a0, ScriptParams($at)  # Load Word
patch=0,EE,2035C848,extended,3C010070 //                                  lui     $at, 0x70  # Load Upper Immediate
patch=0,EE,2035C84c,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035C850,extended,8C840000 //                                  lw      $a0, 0($a0)
patch=0,EE,2035C854,extended,ac24DFB0 //                                  sw      $a0, ScriptParams($at)  # Store Word
patch=0,EE,2035C858,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035C85c,extended,0C07DF48 //                                  jal     _ZN14CRunningScript15StoreParametersEs  # Jump And Link
patch=0,EE,2035C860,extended,00000000 //                                  nop
patch=0,EE,2035C864,extended,100006E4 //                                  b       loc_30D2C0       # Branch Always
patch=0,EE,2035C868,extended,0000102D //                                  move    $v0, $zero

//                               # ---------------------------------------------------------------------------
//                              write_memory:                           # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o

patch=0,EE,2035C86C,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Call CollectParameters
patch=0,EE,2035C870,extended,24050002 //                                  li      $a1, 2           # Get parameters
patch=0,EE,2035C874,extended,00000000 //                                  nop
patch=0,EE,2035C878,extended,3C010070 //                                  lui     $at, 0x70  # Load upper value for ScriptParams
patch=0,EE,2035C87C,extended,8c24DFB0 //                                  lw      $a0, ScriptParams[0]($at)  # Address
patch=0,EE,2035C880,extended,8C25DFB4 //                                  lw      $a1, ScriptParams[1]($at)  # Value
patch=0,EE,2035C884,extended,AC850000 //                                  sw      $a1,0($a0)
patch=0,EE,2035C888,extended,100006DB //                                  b       loc_30D2C0       # Branch Always
patch=0,EE,2035C88C,extended,0000102D //                                  move    $v0, $zero

//                               # ---------------------------------------------------------------------------
//                              call_function:                           # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o


patch=0,EE,2035C890,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Call CollectParameters
patch=0,EE,2035C894,extended,24050003 //                                  li      $a1, 3           # Arg amount
patch=0,EE,2035C898,extended,00000000 //                                  nop
patch=0,EE,2035C89C,extended,3C010070 //                                  lui     $at, 0x70  # Load upper value for ScriptParams
patch=0,EE,2035C8A0,extended,8C22DFB0 //                                  lw      $v0, ScriptParams[0]($at)  # Address
patch=0,EE,2035C8A4,extended,8C23DFB4 //                                  lw      $v1, ScriptParams[1]($at)  # Argument quantity
patch=0,EE,2035C8A8,extended,8C2DDFB8 //                                  lw      $t5, ScriptParams[2]($at)  # Return value?
patch=0,EE,2035C8AC,extended,00000000 //                                  nop
patch=0,EE,2035C8B0,extended,28680005 //                                  slti    $t0, $v1, 0x5      # less than 5?
patch=0,EE,2035C8B4,extended,1500001C //                                  bne     $t0, $zero, decision_block  # if not, continue, else, jump to decision block
patch=0,EE,2035C8B8,extended,00000000 //                                  nop
patch=0,EE,2035C8BC,extended,0060782D //                                  move    $t7, $v1
patch=0,EE,2035C8C0,extended,0240202D //                                  move    $a0, $s2  #this
patch=0,EE,2035C8C4,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Call CollectParameters
patch=0,EE,2035C8C8,extended,24050004 //                                  li      $a1, 4           # Arg amount
patch=0,EE,2035C8CC,extended,3C010070 //                                  lui     $at, 0x70  # Load upper value for ScriptParams
patch=0,EE,2035C8D0,extended,8C37DFB0 //                                  lw      $s7, ScriptParams[0]($at)  # Address
patch=0,EE,2035C8D4,extended,8C36DFB4 //                                  lw      $s6, ScriptParams[1]($at)  # Address
patch=0,EE,2035C8D8,extended,8C35DFB8 //                                  lw      $s5, ScriptParams[2]($at)  # Address
patch=0,EE,2035C8DC,extended,8C34DFBC //                                  lw      $s4, ScriptParams[3]($at)  # Address
patch=0,EE,2035C8E0,extended,24080004 //                                  addiu   $t0, 0x4
patch=0,EE,2035C8E4,extended,01E87823 //                                  subu    $t7, $t0
patch=0,EE,2035C8E8,extended,240E0010 //                                  li      $t6, 0x10
patch=0,EE,2035C8EC,extended,01DD702D //                                  daddu   $t6, $sp
patch=0,EE,2035C8F0,extended,0001C02D //                                  move    $t8, $at //change temporary stuff
//                                                        arg_loop:
patch=0,EE,2035C8F4,extended,00000000
patch=0,EE,2035C8F8,extended,0240202D //                                  move    $a0, $s2  #this
patch=0,EE,2035C8FC,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Call CollectParameters
patch=0,EE,2035C900,extended,24050001 //                                  li      $a1, 1           # Arg amount
patch=0,EE,2035C904,extended,8F09DFB0 //                                  lw      $t1, ScriptParams[0]($t8)
patch=0,EE,2035C908,extended,ADC90000 //                                  sw      $t1, 0x0($t6)
patch=0,EE,2035C90C,extended,25CE0004 //                                  addiu   $t6, 0x4
patch=0,EE,2035C910,extended,27180004 //                                  addiu   $t8, 0x4
patch=0,EE,2035C914,extended,240A0001 //                                  addiu   $t2, 0x1
patch=0,EE,2035C918,extended,01EA7823 //                                  subu    $t7, $t2
patch=0,EE,2035C91C,extended,15E0FFF5 //                                  bne     $v1, $zero, arg_loop

patch=0,EE,2035C920,extended,00000000 //                                  nop
patch=0,EE,2035C924,extended,10000035 //                                  b       call_func
patch=0,EE,2035C928,extended,00000000 //                                  nop
//                                                        decision_block:
patch=0,EE,2035C92C,extended,10600033 //                                  beq     $v1, $zero, call_func      # 0 args
patch=0,EE,2035C930,extended,00000000 //                                  nop
patch=0,EE,2035C934,extended,24080001 //                                  li      $t0, 1
patch=0,EE,2035C938,extended,1068000C //                                  beq     $v1, $t0, 1_param
patch=0,EE,2035C93C,extended,00000000 //                                  nop
patch=0,EE,2035C940,extended,24080002 //                                  li      $t0, 2
patch=0,EE,2035C944,extended,10680011 //                                  beq     $v1, $t0, 2_param
patch=0,EE,2035C948,extended,00000000 //                                  nop
patch=0,EE,2035C94C,extended,24080003 //                                  li      $t0, 3
patch=0,EE,2035C950,extended,10680017 //                                  beq     $v1, $t0, 3_param
patch=0,EE,2035C954,extended,00000000 //                                  nop
patch=0,EE,2035C958,extended,24080004 //                                  li      $t0, 4
patch=0,EE,2035C95C,extended,1068001E //                                  beq     $v1, $t0, 4_param
patch=0,EE,2035C960,extended,00000000 //                                  nop
patch=0,EE,2035C964,extended,10000035 //                                  b       return_cmd
patch=0,EE,2035C968,extended,00000000 //                                  nop
//                                                        1_param:
patch=0,EE,2035C96C,extended,0240202D //                                  move    $a0, $s2  #this
patch=0,EE,2035C970,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Call CollectParameters
patch=0,EE,2035C974,extended,24050001 //                                  li      $a1, 1           # Arg amount
patch=0,EE,2035C978,extended,00000000 //                                  nop
patch=0,EE,2035C97C,extended,3C010070 //                                  lui     $at, 0x70  # Load upper value for ScriptParams
patch=0,EE,2035C980,extended,8C37DFB0 //                                  lw      $s7, ScriptParams[0]($at)  # Address
patch=0,EE,2035C984,extended,1000001D //                                  b       call_func
patch=0,EE,2035C988,extended,00000000 //                                  nop
//                                                        2_param:
patch=0,EE,2035C98C,extended,0240202D //                                  move    $a0, $s2  #this
patch=0,EE,2035C990,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Call CollectParameters
patch=0,EE,2035C994,extended,24050002 //                                  li      $a1, 2           # Arg amount
patch=0,EE,2035C998,extended,00000000 //                                  nop
patch=0,EE,2035C99C,extended,3C010070 //                                  lui     $at, 0x70  # Load upper value for ScriptParams
patch=0,EE,2035C9A0,extended,8C37DFB0 //                                  lw      $s7, ScriptParams[0]($at)  # Address
patch=0,EE,2035C9A4,extended,8C36DFB4 //                                  lw      $s6, ScriptParams[1]($at)  # Address
patch=0,EE,2035C9A8,extended,10000014 //                                  b       call_func
patch=0,EE,2035C9AC,extended,00000000 //                                  nop
//                                                        3_param:
patch=0,EE,2035C9B0,extended,0240202D //                                  move    $a0, $s2  #this
patch=0,EE,2035C9B4,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Call CollectParameters
patch=0,EE,2035C9B8,extended,24050003 //                                  li      $a1, 3           # Arg amount
patch=0,EE,2035C9BC,extended,00000000 //                                  nop
patch=0,EE,2035C9C0,extended,3C010070 //                                  lui     $at, 0x70  # Load upper value for ScriptParams
patch=0,EE,2035C9C4,extended,8C37DFB0 //                                  lw      $s7, ScriptParams[0]($at)  # Address
patch=0,EE,2035C9C8,extended,8C36DFB4 //                                  lw      $s6, ScriptParams[1]($at)  # Address
patch=0,EE,2035C9CC,extended,8C35DFB8 //                                  lw      $s5, ScriptParams[2]($at)  # Address
patch=0,EE,2035C9D0,extended,1000000A //                                  b       call_func
patch=0,EE,2035C9D4,extended,00000000 //                                  nop
//                                                        4_param:
patch=0,EE,2035C9D8,extended,0240202D //                                  move    $a0, $s2  #this
patch=0,EE,2035C9DC,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Call CollectParameters
patch=0,EE,2035C9E0,extended,24050004 //                                  li      $a1, 4           # Arg amount
patch=0,EE,2035C9E4,extended,00000000 //                                  nop
patch=0,EE,2035C9E8,extended,3C010070 //                                  lui     $at, 0x70  # Load upper value for ScriptParams
patch=0,EE,2035C9EC,extended,8C37DFB0 //                                  lw      $s7, ScriptParams[0]($at)  # Address
patch=0,EE,2035C9F0,extended,8C36DFB4 //                                  lw      $s6, ScriptParams[1]($at)  # Address
patch=0,EE,2035C9F4,extended,8C35DFB8 //                                  lw      $s5, ScriptParams[2]($at)  # Address
patch=0,EE,2035C9F8,extended,8C34DFBC //                                  lw      $s4, ScriptParams[3]($at)  # Address
//                                                        call_func:
patch=0,EE,2035C9FC,extended,00000000 //                                  nop
patch=0,EE,2035CA00,extended,00143821 //                                  move    $a3, $s4
patch=0,EE,2035CA04,extended,00153021 //                                  move    $a2, $s5
patch=0,EE,2035CA08,extended,00162821 //                                  move    $a1, $s6
patch=0,EE,2035CA0C,extended,0040F809 //                                  jalr    $v0
patch=0,EE,2035CA10,extended,00172021 //                                  move    $a0, $s7
patch=0,EE,2035CA14,extended,11A00006 //                                  beq     $t5, $zero, return_cmd      # 0 args
patch=0,EE,2035CA18,extended,00000000 //                                  nop
patch=0,EE,2035CA1C,extended,3C010070 //                                  lui     $at, 0x70  # Load Upper Immediate
patch=0,EE,2035CA20,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035CA24,extended,AC22DFB0 //                                  sw      $v0, ScriptParams($at)  # Store Word
patch=0,EE,2035CA28,extended,0240202D //                                  move    $a0, $s2  #this
patch=0,EE,2035CA2C,extended,0C07DF48 //                                  jal     _ZN14CRunningScript15StoreParametersEs  # Jump And Link
patch=0,EE,2035CA30,extended,00000000 //                                  nop
//                                                        return_cmd:
patch=0,EE,2035CA34,extended,0240202D //                                  move    $a0, $s2  #this
patch=0,EE,2035CA38,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Call CollectParameters
patch=0,EE,2035CA3C,extended,24050001 //                                  li      $a1, 1           # Arg amount
patch=0,EE,2035CA40,extended,1000066D //                                  b       loc_30D2C0       # Branch Always
patch=0,EE,2035CA44,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035CA48,extended,00000000 //                                  nop


//                               # ---------------------------------------------------------------------------
//                              call_method:                             # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o



patch=0,EE,2035CA4C,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Call CollectParameters
patch=0,EE,2035CA50,extended,24050004 //                                  li      $a1, 4           # Arg amount
patch=0,EE,2035CA54,extended,00000000 //                                  nop
patch=0,EE,2035CA58,extended,3C010070 //                                  lui     $at, 0x70  # Load upper value for ScriptParams
patch=0,EE,2035CA5C,extended,8C22DFB0 //                                  lw      $v0, ScriptParams[0]($at)  # Address
patch=0,EE,2035CA60,extended,8C37DFB4 //                                  lw      $s7, ScriptParams[1]($at)  # Address
patch=0,EE,2035CA64,extended,8C23DFB8 //                                  lw      $v1, ScriptParams[2]($at)  # Argument quantity
patch=0,EE,2035CA68,extended,8C2DDFBC //                                  lw      $t5, ScriptParams[3]($at)  # Return value?
patch=0,EE,2035CA6C,extended,00000000 //                                  nop
patch=0,EE,2035CA70,extended,28680004 //                                  slti    $t0, $v1, 0x4      # less than 4?
patch=0,EE,2035CA74,extended,1500001C //                                  bne     $t0, $zero, decision_block  # if not, continue, else, jump to decision block
patch=0,EE,2035CA78,extended,00000000 //                                  nop
patch=0,EE,2035CA7C,extended,0060782D //                                  move    $t7, $v1
patch=0,EE,2035CA80,extended,0240202D //                                  move    $a0, $s2  #this
patch=0,EE,2035CA84,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Call CollectParameters
patch=0,EE,2035CA88,extended,24050003 //                                  li      $a1, 3           # Arg amount
patch=0,EE,2035CA8C,extended,3C010070 //                                  lui     $at, 0x70  # Load upper value for ScriptParams
patch=0,EE,2035CA90,extended,8C36DFB0 //                                  lw      $s6, ScriptParams[0]($at)  # Address
patch=0,EE,2035CA94,extended,8C35DFB4 //                                  lw      $s5, ScriptParams[1]($at)  # Address
patch=0,EE,2035CA98,extended,8C34DFB8 //                                  lw      $s4, ScriptParams[2]($at)  # Address
patch=0,EE,2035CA9C,extended,24080003 //                                  addiu   $t0, 0x3
patch=0,EE,2035CAA0,extended,01E87823 //                                  subu    $t7, $t0
patch=0,EE,2035CAA4,extended,240E0010 //                                  li      $t6, 0x10
patch=0,EE,2035CAA8,extended,01DD702D //                                  daddu   $t6, $sp
patch=0,EE,2035CAAC,extended,0001C02D //                                  move    $t8, $at //change temporary stuff
//                                                        arg_loop:
patch=0,EE,2035CAB0,extended,00000000
patch=0,EE,2035CAB4,extended,0240202D //                                  move    $a0, $s2  #this
patch=0,EE,2035CAB8,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Call CollectParameters
patch=0,EE,2035CABC,extended,24050001 //                                  li      $a1, 1           # Arg amount
patch=0,EE,2035CAC0,extended,8F09DFB0 //                                  lw      $t1, ScriptParams[0]($t8)
patch=0,EE,2035CAC4,extended,ADC90000 //                                  sw      $t1, 0x0($t6)
patch=0,EE,2035CAC8,extended,25CE0004 //                                  addiu   $t6, 0x4
patch=0,EE,2035CACC,extended,27180004 //                                  addiu   $t8, 0x4
patch=0,EE,2035CAD0,extended,240A0001 //                                  addiu   $t2, 0x1
patch=0,EE,2035CAD4,extended,01EA7823 //                                  subu    $t7, $t2
patch=0,EE,2035CAD8,extended,15E0FFF5 //                                  bne     $v1, $zero, arg_loop

patch=0,EE,2035CADC,extended,00000000 //                                  nop
patch=0,EE,2035CAE0,extended,10000028 //                                  b       call_func
patch=0,EE,2035CAE4,extended,00000000 //                                  nop
//                                                        decision_block:
patch=0,EE,2035CAE8,extended,10600026 //                                  beq     $v1, $zero, call_func      # 0 args
patch=0,EE,2035CAEC,extended,00000000 //                                  nop
patch=0,EE,2035CAF0,extended,24080001 //                                  li      $t0, 1
patch=0,EE,2035CAF4,extended,10680009 //                                  beq     $v1, $t0, 1_param
patch=0,EE,2035CAF8,extended,00000000 //                                  nop
patch=0,EE,2035CAFC,extended,24080002 //                                  li      $t0, 2
patch=0,EE,2035CB00,extended,1068000F //                                  beq     $v1, $t0, 2_param
patch=0,EE,2035CB04,extended,00000000 //                                  nop
patch=0,EE,2035CB08,extended,24080003 //                                  li      $t0, 3
patch=0,EE,2035CB0C,extended,10680014 //                                  beq     $v1, $t0, 3_param
patch=0,EE,2035CB10,extended,00000000 //                                  nop
patch=0,EE,2035CB14,extended,1000002D //                                  b       return_cmd
patch=0,EE,2035CB18,extended,00000000 //                                  nop
//                                                        1_param:
patch=0,EE,2035CB1C,extended,0240202D //                                  move    $a0, $s2  #this
patch=0,EE,2035CB20,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Call CollectParameters
patch=0,EE,2035CB24,extended,24050001 //                                  li      $a1, 1           # Arg amount
patch=0,EE,2035CB28,extended,00000000 //                                  nop
patch=0,EE,2035CB2C,extended,3C010070 //                                  lui     $at, 0x70  # Load upper value for ScriptParams
patch=0,EE,2035CB30,extended,8C36DFB0 //                                  lw      $s6, ScriptParams[0]($at)  # Address
patch=0,EE,2035CB34,extended,10000013 //                                  b       call_func
patch=0,EE,2035CB38,extended,00000000 //                                  nop
//                                                        2_param:
patch=0,EE,2035CB3C,extended,0240202D //                                  move    $a0, $s2  #this
patch=0,EE,2035CB40,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Call CollectParameters
patch=0,EE,2035CB44,extended,24050002 //                                  li      $a1, 2           # Arg amount
patch=0,EE,2035CB48,extended,00000000 //                                  nop
patch=0,EE,2035CB4C,extended,3C010070 //                                  lui     $at, 0x70  # Load upper value for ScriptParams
patch=0,EE,2035CB50,extended,8C36DFB0 //                                  lw      $s6, ScriptParams[0]($at)  # Address
patch=0,EE,2035CB54,extended,8C35DFB4 //                                  lw      $s5, ScriptParams[1]($at)  # Address
patch=0,EE,2035CB58,extended,1000000A //                                  b       call_func
patch=0,EE,2035CB5C,extended,00000000 //                                  nop
//                                                        3_param:
patch=0,EE,2035CB60,extended,0240202D //                                  move    $a0, $s2  #this
patch=0,EE,2035CB64,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Call CollectParameters
patch=0,EE,2035CB68,extended,24050003 //                                  li      $a1, 3           # Arg amount
patch=0,EE,2035CB6C,extended,00000000 //                                  nop
patch=0,EE,2035CB70,extended,3C010070 //                                  lui     $at, 0x70  # Load upper value for ScriptParams
patch=0,EE,2035CB74,extended,8C36DFB0 //                                  lw      $s6, ScriptParams[0]($at)  # Address
patch=0,EE,2035CB78,extended,8C35DFB4 //                                  lw      $s5, ScriptParams[1]($at)  # Address
patch=0,EE,2035CB7C,extended,8C34DFB8 //                                  lw      $s4, ScriptParams[2]($at)  # Address
patch=0,EE,2035CB80,extended,00000000 //                                  nop
//                                                        call_func:
patch=0,EE,2035CB84,extended,00000000 //                                  nop
patch=0,EE,2035CB88,extended,00143821 //                                  move    $a3, $s4
patch=0,EE,2035CB8C,extended,00153021 //                                  move    $a2, $s5
patch=0,EE,2035CB90,extended,00162821 //                                  move    $a1, $s6
patch=0,EE,2035CB94,extended,0040F809 //                                  jalr    $v0
patch=0,EE,2035CB98,extended,00172021 //                                  move    $a0, $s7
patch=0,EE,2035CB9C,extended,11A00006 //                                  beq     $t5, $zero, return_cmd      # 0 args
patch=0,EE,2035CBA0,extended,00000000 //                                  nop
patch=0,EE,2035CBA4,extended,3C010070 //                                  lui     $at, 0x70  # Load Upper Immediate
patch=0,EE,2035CBA8,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035CBAC,extended,AC22DFB0 //                                  sw      $v0, ScriptParams($at)  # Store Word
patch=0,EE,2035CBB0,extended,0240202D //                                  move    $a0, $s2  #this
patch=0,EE,2035CBB4,extended,0C07DF48 //                                  jal     _ZN14CRunningScript15StoreParametersEs  # Jump And Link
patch=0,EE,2035CBB8,extended,00000000 //                                  nop
//                                                        return_cmd:
patch=0,EE,2035CBBC,extended,0240202D //                                  move    $a0, $s2  #this
patch=0,EE,2035CBC0,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Call CollectParameters
patch=0,EE,2035CBC4,extended,24050001 //                                  li      $a1, 1           # Arg amount
patch=0,EE,2035CBC8,extended,1000060B //                                  b       loc_30D2C0       # Branch Always
patch=0,EE,2035CBCC,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035CBD0,extended,00000000 //                                  nop

//                              get_ped_struct:                          # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o


patch=0,EE,2035CBD4,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035CBD8,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035CBDC,extended,00000000 //                                  nop
patch=0,EE,2035CBE0,extended,3C010070 //                                  lui     $at, 0x70  # Load Upper Immediate
patch=0,EE,2035CBE4,extended,8c25DFB0 //                                  lw      $a1, ScriptParams($at)  # Load Word
patch=0,EE,2035CBE8,extended,00000000 //                                  nop
patch=0,EE,2035CBEC,extended,3C010067 //                                  lui     $at, 0x67  # Load Upper Immediate
patch=0,EE,2035CBF0,extended,0C07FEEC //                                  jal     ?atHandle@?$CPool@VCPed@@@@QAEPAVCVehicle@@I@Z
patch=0,EE,2035CBF4,extended,8C24B918 //                                  lw      $a0, _ZN6CPools11ms_pPedPoolE($at)
patch=0,EE,2035CBF8,extended,00000000 //                                  nop
patch=0,EE,2035CBFC,extended,3C010070 //                                  lui     $at, 0x70  # Load Upper Immediate
patch=0,EE,2035CC00,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035CC04,extended,AC22DFB0 //                                  sw      $v0, ScriptParams($at)  # Store Word
patch=0,EE,2035CC08,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035CC0C,extended,0C07DF48 //                                  jal     _ZN14CRunningScript15StoreParametersEs  # Jump And Link
patch=0,EE,2035CC10,extended,00000000 //                                  nop
patch=0,EE,2035CC14,extended,100005F8 //                                  b       loc_30D2C0       # Branch Always
patch=0,EE,2035CC18,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035CC1C,extended,00000000 //                                  nop

//                              get_vehicle_struct:                      # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o


patch=0,EE,2035CC20,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035CC24,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035CC28,extended,00000000 //                                  nop
patch=0,EE,2035CC2C,extended,3C010070 //                                  lui     $at, 0x70  # Load Upper Immediate
patch=0,EE,2035CC30,extended,8c25DFB0 //                                  lw      $a1, ScriptParams($at)  # Load Word
patch=0,EE,2035CC34,extended,00000000 //                                  nop
patch=0,EE,2035CC38,extended,3C010067 //                                  lui     $at, 0x67  # Load Upper Immediate
patch=0,EE,2035CC3C,extended,0C07FEDC //                                  jal     ?atHandle@?$CPool@VCVehicle@@@@QAEPAVCVehicle@@I@Z
patch=0,EE,2035CC40,extended,8C24B91C //                                  lw      $a0, _ZN6CPools15ms_pVehiclePoolE($at)
patch=0,EE,2035CC44,extended,00000000 //                                  nop
patch=0,EE,2035CC48,extended,3C010070 //                                  lui     $at, 0x70  # Load Upper Immediate
patch=0,EE,2035CC4C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035CC50,extended,AC22DFB0 //                                  sw      $v0, ScriptParams($at)  # Store Word
patch=0,EE,2035CC54,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035CC58,extended,0C07DF48 //                                  jal     _ZN14CRunningScript15StoreParametersEs  # Jump And Link
patch=0,EE,2035CC5C,extended,00000000 //                                  nop
patch=0,EE,2035CC60,extended,100005E5 //                                  b       loc_30D2C0       # Branch Always
patch=0,EE,2035CC64,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035CC68,extended,00000000 //                                  nop

//                              get_object_struct:                      # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o



patch=0,EE,2035CC6C,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035CC70,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035CC74,extended,00000000 //                                  nop
patch=0,EE,2035CC78,extended,3C010070 //                                  lui     $at, 0x70  # Load Upper Immediate
patch=0,EE,2035CC7C,extended,8c25DFB0 //                                  lw      $a1, ScriptParams($at)  # Load Word
patch=0,EE,2035CC80,extended,00000000 //                                  nop
patch=0,EE,2035CC84,extended,3C010067 //                                  lui     $at, 0x67  # Load Upper Immediate
patch=0,EE,2035CC88,extended,0C07FECC //                                  jal     _CPool_CObject__atHandle
patch=0,EE,2035CC8C,extended,8C24B924 //                                  lw      $a0, _ZN6CPools14ms_pObjectPoolE($at)
patch=0,EE,2035CC90,extended,00000000 //                                  nop
patch=0,EE,2035CC94,extended,3C010070 //                                  lui     $at, 0x70  # Load Upper Immediate
patch=0,EE,2035CC98,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035CC9C,extended,AC22DFB0 //                                  sw      $v0, ScriptParams($at)  # Store Word
patch=0,EE,2035CCA0,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035CCA4,extended,0C07DF48 //                                  jal     _ZN14CRunningScript15StoreParametersEs  # Jump And Link
patch=0,EE,2035CCA8,extended,00000000 //                                  nop
patch=0,EE,2035CCAC,extended,100005D2 //                                  b       loc_30D2C0       # Branch Always
patch=0,EE,2035CCB0,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035CCB4,extended,00000000 //                                  nop

//                              get_this_script_struct:                  # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o


patch=0,EE,2035CCB8,extended,3C010070 //                                  lui     $at, 0x70  # Load Upper Immediate
patch=0,EE,2035CCBC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035CCC0,extended,AC32DFB0 //                                  sw      $s2, ScriptParams($at)  # Store Word
patch=0,EE,2035CCC4,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035CCC8,extended,0C07DF48 //                                  jal     _ZN14CRunningScript15StoreParametersEs  # Jump And Link
patch=0,EE,2035CCCC,extended,00000000 //                                  nop
patch=0,EE,2035CCD0,extended,100005C9 //                                  b       loc_30D2C0       # Branch Always
patch=0,EE,2035CCD4,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035CCD8,extended,00000000 //                                  nop

//                               # ---------------------------------------------------------------------------
//                              get_var_offset:                          # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o


patch=0,EE,2035CCDC,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035CCE0,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035CCE4,extended,00000000 //                                  nop
patch=0,EE,2035CCE8,extended,3C010070 //                                  lui     $at, 0x70  # Load Upper Immediate
patch=0,EE,2035CCEC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035CCF0,extended,ac22DFB0 //                                  sw      $v0, ScriptParams($at)  # Store Word
patch=0,EE,2035CCF4,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035CCF8,extended,0C07DF48 //                                  jal     _ZN14CRunningScript15StoreParametersEs  # Jump And Link
patch=0,EE,2035CCFC,extended,00000000 //                                  nop
patch=0,EE,2035CD00,extended,100005BD //                                  b       loc_30D2C0       # Branch Always
patch=0,EE,2035CD04,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035CD08,extended,00000000 //                                  nop

//                               # ---------------------------------------------------------------------------
//
//                              @@opcode_0001:                           # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o


patch=0,EE,2035CF00,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # wait %1d%
patch=0,EE,2035CF04,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035CF08,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035CF0C,extended,8F830924 //                                  lw      $v1, _ZN6CTimer22m_snTimeInMillisecondsE  # Load Word
patch=0,EE,2035CF10,extended,8C24DFB0 //                                  lw      $a0, ScriptParams  # Load Word
patch=0,EE,2035CF14,extended,24020001 //                                  li      $v0, 1           # Load Immediate
patch=0,EE,2035CF18,extended,00831821 //                                  addu    $v1, $a0, $v1    # Add Unsigned
patch=0,EE,2035CF1C,extended,10000536 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035CF20,extended,AE4300CC //                                  sw      $v1, 0xCC($s2)   # Store Word
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035CF24,extended,00000000 //                                  .align 3
//
//                              @@opcode_0002:                           # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035CF28,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # jump %1p%
patch=0,EE,2035CF2C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035CF30,extended,3C010070 //
patch=0,EE,2035CF34,extended,8C23DFB0 //                      lw      $v1, ScriptParams  # Load Word
patch=0,EE,2035CF38,extended,04610005 //                                 bgez    $v1, loc_1FAFA0  # Branch on Greater Than or Equal to Zero
patch=0,EE,2035CF3C,extended,00000000 //                                  nop
patch=0,EE,2035CF40,extended,8E420010 //                                  lw      $v0, 0x10($s2)   # Load Word
patch=0,EE,2035CF44,extended,00431023 //                                  subu    $v0, $v1         # Subtract Unsigned
patch=0,EE,2035CF48,extended,10000005 //                                  b       loc_1FAFB0       # Branch Always
patch=0,EE,2035CF4C,extended,AE420014 //                                  sw      $v0, 0x14($s2)   # Store Word
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FAFA0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+88↑j
patch=0,EE,2035CF50,extended,3C02006B //
patch=0,EE,2035CF54,extended,24421FF0 //                      li      $v0, _ZN11CTheScripts11ScriptSpaceE  # Load Immediate
patch=0,EE,2035CF58,extended,00431021 //                                 addu    $v0, $v1         # Add Unsigned
patch=0,EE,2035CF5C,extended,AE420014 //                                  sw      $v0, 0x14($s2)   # Store Word
//
//                              loc_1FAFB0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+98↑j
patch=0,EE,2035CF60,extended,10000525 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035CF64,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              @@opcode_0003:                           # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035CF68,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # shake_camera %1d%
patch=0,EE,2035CF6C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035CF70,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035CF74,extended,3C023A83 //                                  lui     $v0, 0x3A83      # Load Upper Immediate
patch=0,EE,2035CF78,extended,C420DFB0 //                                  lwc1    $f0, ScriptParams  # Load Word to FPU
patch=0,EE,2035CF7C,extended,3442126F //                                  li      $v0, 0x3A83126F  # Load Immediate
patch=0,EE,2035CF80,extended,3C040070 //                                  lui     $a0, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035CF84,extended,44820800 //                                  mtc1    $v0, $f1         # Move to FPU
patch=0,EE,2035CF88,extended,2484E530 //                                  li      $a0, TheCamera   # Load Immediate
patch=0,EE,2035CF8C,extended,46800020 //                                  cvt.s.w $f0, $f0         # Floating-point Convert to Single Fixed-Point Format
patch=0,EE,2035CF90,extended,0C086938 //                                  jal     sub_21A4E0       # Jump And Link
patch=0,EE,2035CF94,extended,46000B02 //                                  mul.s   $f12, $f1, $f0   # Floating-point Multiply
patch=0,EE,2035CF98,extended,10000517 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035CF9C,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FAFF0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035CFA0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 4
patch=0,EE,2035CFA4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035CFA8,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035CFAC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035CFB0,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035CFB4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035CFB8,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035CFBC,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035CFC0,extended,8C23DFB0 //                                  lw      $v1, ScriptParams  # Load Word
patch=0,EE,2035CFC4,extended,1000050C //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035CFC8,extended,AE030000 //                                  sw      $v1, 0($s0)      # Store Word
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035CFCC,extended,00000000 //                                  .align 4
//
//                              loc_1FB020:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035CFD0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 5
patch=0,EE,2035CFD4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035CFD8,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035CFDC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035CFE0,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035CFE4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035CFE8,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035CFEC,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035CFF0,extended,C420DFB0 //                                  lwc1    $f0, ScriptParams  # Load Word to FPU
patch=0,EE,2035CFF4,extended,10000500 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035CFF8,extended,E6000000 //                                  swc1    $f0, 0($s0)      # Store Word from FPU
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035CFFC,extended,00000000 //                                  .align 4
//
//                              loc_1FB050:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D000,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 6
patch=0,EE,2035D004,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D008,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D00C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D010,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D014,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D018,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D01C,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D020,extended,8C23DFB0 //                                  lw      $v1, ScriptParams  # Load Word
patch=0,EE,2035D024,extended,100004F4 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D028,extended,AE030000 //                                  sw      $v1, 0($s0)      # Store Word
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D02C,extended,00000000 //                                  .align 4
//
//                              loc_1FB080:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D030,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 7
patch=0,EE,2035D034,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D038,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D03C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D040,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D044,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D048,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D04C,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D050,extended,C420DFB0 //                                  lwc1    $f0, ScriptParams  # Load Word to FPU
patch=0,EE,2035D054,extended,100004E8 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D058,extended,E6000000 //                                  swc1    $f0, 0($s0)      # Store Word from FPU
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D05C,extended,00000000 //                                  .align 4
//
//                              loc_1FB0B0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D060,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 8
patch=0,EE,2035D064,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D068,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D06C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D070,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D074,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D078,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D07C,extended,8E040000 //                                  lw      $a0, 0($s0)      # Load Word
patch=0,EE,2035D080,extended,8C23DFB0 //                                  lw      $v1, ScriptParams  # Load Word
patch=0,EE,2035D084,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D088,extended,00831821 //                                  addu    $v1, $a0, $v1    # Add Unsigned
patch=0,EE,2035D08C,extended,100004DA //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D090,extended,AE030000 //                                  sw      $v1, 0($s0)      # Store Word
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D094,extended,00000000 //                                  .align 3
//
//                              loc_1FB0E8:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D098,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 9
patch=0,EE,2035D09C,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D0A0,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D0A4,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D0A8,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D0AC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D0B0,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D0B4,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D0B8,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035D0BC,extended,C420DFB0 //                                  lwc1    $f0, ScriptParams  # Load Word to FPU
patch=0,EE,2035D0C0,extended,46000800 //                                  add.s   $f0, $f1, $f0    # Floating-point Add
patch=0,EE,2035D0C4,extended,100004CC //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D0C8,extended,E6000000 //                                  swc1    $f0, 0($s0)      # Store Word from FPU
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D0CC,extended,00000000 //                                  .align 4
//
//                              loc_1FB120:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D0D0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 10
patch=0,EE,2035D0D4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D0D8,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D0DC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D0E0,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D0E4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D0E8,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D0EC,extended,8E040000 //                                  lw      $a0, 0($s0)      # Load Word
patch=0,EE,2035D0F0,extended,8C23DFB0 //                                  lw      $v1, ScriptParams  # Load Word
patch=0,EE,2035D0F4,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D0F8,extended,00831821 //                                  addu    $v1, $a0, $v1    # Add Unsigned
patch=0,EE,2035D0FC,extended,100004BE //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D100,extended,AE030000 //                                  sw      $v1, 0($s0)      # Store Word
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D104,extended,00000000 //                                  .align 3
//
//                              loc_1FB158:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D108,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 11
patch=0,EE,2035D10C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D110,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D114,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D118,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D11C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D120,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D124,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D128,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035D12C,extended,C420DFB0 //                                  lwc1    $f0, ScriptParams  # Load Word to FPU
patch=0,EE,2035D130,extended,46000800 //                                  add.s   $f0, $f1, $f0    # Floating-point Add
patch=0,EE,2035D134,extended,100004B0 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D138,extended,E6000000 //                                  swc1    $f0, 0($s0)      # Store Word from FPU
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D13C,extended,00000000 //                                  .align 4
//
//                              loc_1FB190:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D140,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 12
patch=0,EE,2035D144,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D148,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D14C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D150,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D154,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D158,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D15C,extended,8E040000 //                                  lw      $a0, 0($s0)      # Load Word
patch=0,EE,2035D160,extended,8C23DFB0 //                                  lw      $v1, ScriptParams  # Load Word
patch=0,EE,2035D164,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D168,extended,00831823 //                                  subu    $v1, $a0, $v1    # Subtract Unsigned
patch=0,EE,2035D16C,extended,100004A2 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D170,extended,AE030000 //                                  sw      $v1, 0($s0)      # Store Word
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D174,extended,00000000 //                                  .align 3
//
//                              loc_1FB1C8:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D178,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 13
patch=0,EE,2035D17C,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D180,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D184,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D188,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D18C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D190,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D194,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D198,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035D19C,extended,C420DFB0 //                                  lwc1    $f0, ScriptParams  # Load Word to FPU
patch=0,EE,2035D1A0,extended,46000801 //                                  sub.s   $f0, $f1, $f0    # Floating-point Subtract
patch=0,EE,2035D1A4,extended,10000494 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D1A8,extended,E6000000 //                                  swc1    $f0, 0($s0)      # Store Word from FPU
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D1AC,extended,00000000 //                                  .align 4
//
//                              loc_1FB200:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D1B0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 14
patch=0,EE,2035D1B4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D1B8,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D1BC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D1C0,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D1C4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D1C8,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D1CC,extended,8E040000 //                                  lw      $a0, 0($s0)      # Load Word
patch=0,EE,2035D1D0,extended,8C23DFB0 //                                  lw      $v1, ScriptParams  # Load Word
patch=0,EE,2035D1D4,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D1D8,extended,00831823 //                                  subu    $v1, $a0, $v1    # Subtract Unsigned
patch=0,EE,2035D1DC,extended,10000486 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D1E0,extended,AE030000 //                                  sw      $v1, 0($s0)      # Store Word
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D1E4,extended,00000000 //                                  .align 3
//
//                              loc_1FB238:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D1E8,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 15
patch=0,EE,2035D1EC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D1F0,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D1F4,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D1F8,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D1FC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D200,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D204,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D208,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035D20C,extended,C420DFB0 //                                  lwc1    $f0, ScriptParams  # Load Word to FPU
patch=0,EE,2035D210,extended,46000801 //                                  sub.s   $f0, $f1, $f0    # Floating-point Subtract
patch=0,EE,2035D214,extended,10000478 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D218,extended,E6000000 //                                  swc1    $f0, 0($s0)      # Store Word from FPU
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D21C,extended,00000000 //                                  .align 4
//
//                              loc_1FB270:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D220,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 16
patch=0,EE,2035D224,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D228,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D22C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D230,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D234,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D238,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D23C,extended,8E040000 //                                  lw      $a0, 0($s0)      # Load Word
patch=0,EE,2035D240,extended,8C23DFB0 //                                  lw      $v1, ScriptParams  # Load Word
patch=0,EE,2035D244,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D248,extended,00831818 //                                  mult    $v1, $a0, $v1    # Multiply (3-operand)
patch=0,EE,2035D24C,extended,1000046A //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D250,extended,AE030000 //                                  sw      $v1, 0($s0)      # Store Word
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D254,extended,00000000 //                                  .align 3
//
//                              loc_1FB2A8:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D258,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 17
patch=0,EE,2035D25C,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D260,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D264,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D268,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D26C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D270,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D274,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D278,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035D27C,extended,C420DFB0 //                                  lwc1    $f0, ScriptParams  # Load Word to FPU
patch=0,EE,2035D280,extended,46000802 //                                  mul.s   $f0, $f1, $f0    # Floating-point Multiply
patch=0,EE,2035D284,extended,1000045C //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D288,extended,E6000000 //                                  swc1    $f0, 0($s0)      # Store Word from FPU
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D28C,extended,00000000 //                                  .align 4
//
//                              loc_1FB2E0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D290,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 18
patch=0,EE,2035D294,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D298,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D29C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D2A0,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D2A4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D2A8,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D2AC,extended,8E040000 //                                  lw      $a0, 0($s0)      # Load Word
patch=0,EE,2035D2B0,extended,8C23DFB0 //                                  lw      $v1, ScriptParams  # Load Word
patch=0,EE,2035D2B4,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D2B8,extended,00831818 //                                  mult    $v1, $a0, $v1    # Multiply (3-operand)
patch=0,EE,2035D2BC,extended,1000044E //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D2C0,extended,AE030000 //                                  sw      $v1, 0($s0)      # Store Word
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D2C4,extended,00000000 //                                  .align 3
//
//                              loc_1FB318:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D2C8,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 19
patch=0,EE,2035D2CC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D2D0,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D2D4,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D2D8,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D2DC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D2E0,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D2E4,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D2E8,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035D2EC,extended,C420DFB0 //                                  lwc1    $f0, ScriptParams  # Load Word to FPU
patch=0,EE,2035D2F0,extended,46000802 //                                  mul.s   $f0, $f1, $f0    # Floating-point Multiply
patch=0,EE,2035D2F4,extended,10000440 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D2F8,extended,E6000000 //                                  swc1    $f0, 0($s0)      # Store Word from FPU
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D2FC,extended,00000000 //                                  .align 4
//
//                              loc_1FB350:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D300,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 20
patch=0,EE,2035D304,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D308,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D30C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D310,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D314,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D318,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D31C,extended,8E040000 //                                  lw      $a0, 0($s0)      # Load Word
patch=0,EE,2035D320,extended,8C23DFB0 //                                  lw      $v1, ScriptParams  # Load Word
patch=0,EE,2035D324,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D328,extended,0083001A //                                  div     $a0, $v1         # Divide
patch=0,EE,2035D32C,extended,00000000 //                                  nop
patch=0,EE,2035D330,extended,00000000 //                                  nop
patch=0,EE,2035D334,extended,00001812 //                                  mflo    $v1              # Move From LO
patch=0,EE,2035D338,extended,1000042F //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D33C,extended,AE030000 //                                  sw      $v1, 0($s0)      # Store Word
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FB390:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D340,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 21
patch=0,EE,2035D344,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D348,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D34C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D350,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D354,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D358,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D35C,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D360,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035D364,extended,C420DFB0 //                                  lwc1    $f0, ScriptParams  # Load Word to FPU
patch=0,EE,2035D368,extended,46000803 //                                  div.s   $f0, $f1, $f0    # Floating-point Divide
patch=0,EE,2035D36C,extended,00000000 //                                  nop
patch=0,EE,2035D370,extended,00000000 //                                  nop
patch=0,EE,2035D374,extended,10000420 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D378,extended,E6000000 //                                  swc1    $f0, 0($s0)      # Store Word from FPU
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D37C,extended,00000000 //                                  .align 4
//
//                              loc_1FB3D0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D380,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 22
patch=0,EE,2035D384,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D388,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D38C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D390,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D394,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D398,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D39C,extended,8E040000 //                                  lw      $a0, 0($s0)      # Load Word
patch=0,EE,2035D3A0,extended,8C23DFB0 //                                  lw      $v1, ScriptParams  # Load Word
patch=0,EE,2035D3A4,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D3A8,extended,0083001A //                                  div     $a0, $v1         # Divide
patch=0,EE,2035D3AC,extended,00000000 //                                  nop
patch=0,EE,2035D3B0,extended,00000000 //                                  nop
patch=0,EE,2035D3B4,extended,00001812 //                                  mflo    $v1              # Move From LO
patch=0,EE,2035D3B8,extended,1000040F //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D3BC,extended,AE030000 //                                  sw      $v1, 0($s0)      # Store Word
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FB410:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D3C0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 23
patch=0,EE,2035D3C4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D3C8,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D3CC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D3D0,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D3D4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D3D8,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D3DC,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035D3E0,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035D3E4,extended,C420DFB0 //                                  lwc1    $f0, ScriptParams  # Load Word to FPU
patch=0,EE,2035D3E8,extended,46000803 //                                  div.s   $f0, $f1, $f0    # Floating-point Divide
patch=0,EE,2035D3EC,extended,00000000 //                                  nop
patch=0,EE,2035D3F0,extended,00000000 //                                  nop
patch=0,EE,2035D3F4,extended,10000400 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D3F8,extended,E6000000 //                                  swc1    $f0, 0($s0)      # Store Word from FPU
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D3FC,extended,00000000 //                                  .align 4
//
//                              loc_1FB450:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D400,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 24
patch=0,EE,2035D404,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D408,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D40C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D410,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D414,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D418,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D41C,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035D420,extended,8C22DFB0 //                                  lw      $v0, ScriptParams  # Load Word
patch=0,EE,2035D424,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D428,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D42C,extended,0043282A //                                  slt     $a1, $v0, $v1    # Set on Less Than
patch=0,EE,2035D430,extended,100003F1 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D434,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FB488:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D438,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 25
patch=0,EE,2035D43C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D440,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D444,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D448,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D44C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D450,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D454,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035D458,extended,8C22DFB0 //                                  lw      $v0, ScriptParams  # Load Word
patch=0,EE,2035D45C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D460,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D464,extended,0043282A //                                  slt     $a1, $v0, $v1    # Set on Less Than
patch=0,EE,2035D468,extended,100003E3 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D46C,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FB4C0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D470,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # jumptable 001FAF40 case 26
patch=0,EE,2035D474,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D478,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D47C,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D480,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D484,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D488,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035D48C,extended,8C23DFB0 //                                  lw      $v1, ScriptParams  # Load Word
patch=0,EE,2035D490,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D494,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D498,extended,0043282A //                                  slt     $a1, $v0, $v1    # Set on Less Than
patch=0,EE,2035D49C,extended,100003D6 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D4A0,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D4A4,extended,00000000 //                                  .align 3
//
//                              loc_1FB4F8:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D4A8,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # jumptable 001FAF40 case 27
patch=0,EE,2035D4AC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D4B0,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D4B4,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D4B8,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D4BC,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D4C0,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035D4C4,extended,8C23DFB0 //                                  lw      $v1, ScriptParams  # Load Word
patch=0,EE,2035D4C8,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D4CC,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D4D0,extended,0043282A //                                  slt     $a1, $v0, $v1    # Set on Less Than
patch=0,EE,2035D4D4,extended,100003C8 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D4D8,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D4DC,extended,00000000 //                                  .align 4
//
//                              loc_1FB530:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D4E0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 28
patch=0,EE,2035D4E4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D4E8,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D4EC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D4F0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D4F4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D4F8,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035D4FC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D500,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035D504,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D508,extended,0043282A //                                  slt     $a1, $v0, $v1    # Set on Less Than
patch=0,EE,2035D50C,extended,100003BA //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D510,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D514,extended,00000000 //                                  .align 3
//
//                              loc_1FB568:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D518,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 29
patch=0,EE,2035D51C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D520,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D524,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D528,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D52C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D530,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035D534,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D538,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035D53C,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D540,extended,0043282A //                                  slt     $a1, $v0, $v1    # Set on Less Than
patch=0,EE,2035D544,extended,100003AC //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D548,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D54C,extended,00000000 //                                  .align 4
//
//                              loc_1FB5A0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D550,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 30
patch=0,EE,2035D554,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D558,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D55C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D560,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D564,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D568,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035D56C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D570,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035D574,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D578,extended,0043282A //                                  slt     $a1, $v0, $v1    # Set on Less Than
patch=0,EE,2035D57C,extended,1000039E //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D580,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D584,extended,00000000 //                                  .align 3
//
//                              loc_1FB5D8:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D588,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 31
patch=0,EE,2035D58C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D590,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D594,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D598,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D59C,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D5A0,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035D5A4,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D5A8,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035D5AC,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D5B0,extended,0043282A //                                  slt     $a1, $v0, $v1    # Set on Less Than
patch=0,EE,2035D5B4,extended,10000390 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D5B8,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D5BC,extended,00000000 //                                  .align 4
//
//                              loc_1FB610:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D5C0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 32
patch=0,EE,2035D5C4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D5C8,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D5CC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D5D0,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D5D4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D5D8,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D5DC,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035D5E0,extended,C420DFB0 //                                  lwc1    $f0, ScriptParams  # Load Word to FPU
patch=0,EE,2035D5E4,extended,46000836 //                                  c.le.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035D5E8,extended,45000002 //                                  bc1f    loc_1FB644       # Branch on FPU False
patch=0,EE,2035D5EC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D5F0,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FB644:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+738↑j
patch=0,EE,2035D5F4,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D5F8,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D5FC,extended,1000037E //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D600,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D604,extended,00000000 //                                  .align 3
//
//                              loc_1FB658:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D608,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 33
patch=0,EE,2035D60C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D610,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D614,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D618,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D61C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D620,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D624,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035D628,extended,C420DFB0 //                                  lwc1    $f0, ScriptParams  # Load Word to FPU
patch=0,EE,2035D62C,extended,46000836 //                                  c.le.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035D630,extended,45000002 //                                  bc1f    loc_1FB68C       # Branch on FPU False
patch=0,EE,2035D634,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D638,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FB68C:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+780↑j
patch=0,EE,2035D63C,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D640,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D644,extended,1000036C //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D648,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D64C,extended,00000000 //                                  .align 4
//
//                              loc_1FB6A0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D650,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # jumptable 001FAF40 case 34
patch=0,EE,2035D654,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D658,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D65C,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D660,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D664,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D668,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035D66C,extended,C421DFB0 //                                  lwc1    $f1, ScriptParams  # Load Word to FPU
patch=0,EE,2035D670,extended,46000836 //                                  c.le.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035D674,extended,45000002 //                                  bc1f    loc_1FB6D0       # Branch on FPU False
patch=0,EE,2035D678,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D67C,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FB6D0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+7C4↑j
patch=0,EE,2035D680,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D684,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D688,extended,1000035B //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D68C,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FB6E0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D690,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # jumptable 001FAF40 case 35
patch=0,EE,2035D694,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D698,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D69C,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D6A0,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D6A4,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D6A8,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035D6AC,extended,C421DFB0 //                                  lwc1    $f1, ScriptParams  # Load Word to FPU
patch=0,EE,2035D6B0,extended,46000836 //                                  c.le.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035D6B4,extended,45000002 //                                  bc1f    loc_1FB710       # Branch on FPU False
patch=0,EE,2035D6B8,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D6BC,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FB710:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+804↑j
patch=0,EE,2035D6C0,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D6C4,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D6C8,extended,1000034B //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D6CC,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FB720:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D6D0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 36
patch=0,EE,2035D6D4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D6D8,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D6DC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D6E0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D6E4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D6E8,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035D6EC,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035D6F0,extended,46000836 //                                  c.le.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035D6F4,extended,45000002 //                                  bc1f    loc_1FB750       # Branch on FPU False
patch=0,EE,2035D6F8,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D6FC,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FB750:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+844↑j
patch=0,EE,2035D700,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D704,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D708,extended,1000033B //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D70C,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FB760:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D710,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 37
patch=0,EE,2035D714,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D718,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D71C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D720,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D724,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D728,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035D72C,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035D730,extended,46000836 //                                  c.le.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035D734,extended,45000002 //                                  bc1f    loc_1FB790       # Branch on FPU False
patch=0,EE,2035D738,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D73C,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FB790:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+884↑j
patch=0,EE,2035D740,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D744,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D748,extended,1000032B //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D74C,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FB7A0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D750,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 38
patch=0,EE,2035D754,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D758,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D75C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D760,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D764,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D768,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035D76C,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035D770,extended,46000836 //                                  c.le.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035D774,extended,45000002 //                                  bc1f    loc_1FB7D0       # Branch on FPU False
patch=0,EE,2035D778,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D77C,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FB7D0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+8C4↑j
patch=0,EE,2035D780,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D784,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D788,extended,1000031B //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D78C,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FB7E0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D790,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 39
patch=0,EE,2035D794,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D798,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D79C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D7A0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D7A4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D7A8,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035D7AC,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035D7B0,extended,46000836 //                                  c.le.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035D7B4,extended,45000002 //                                  bc1f    loc_1FB810       # Branch on FPU False
patch=0,EE,2035D7B8,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D7BC,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FB810:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+904↑j
patch=0,EE,2035D7C0,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D7C4,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D7C8,extended,1000030B //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D7CC,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FB820:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D7D0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 40
patch=0,EE,2035D7D4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D7D8,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D7DC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D7E0,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D7E4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D7E8,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D7EC,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035D7F0,extended,8C22DFB0 //                                  lw      $v0, ScriptParams  # Load Word
patch=0,EE,2035D7F4,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D7F8,extended,0062282A //                                  slt     $a1, $v1, $v0    # Set on Less Than
patch=0,EE,2035D7FC,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D800,extended,38A50001 //                                  xori    $a1, 1           # Exclusive OR Immediate
patch=0,EE,2035D804,extended,100002FC //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D808,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D80C,extended,00000000 //                                  .align 4
//
//                              loc_1FB860:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D810,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 41
patch=0,EE,2035D814,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D818,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D81C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D820,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D824,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D828,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D82C,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035D830,extended,8C22DFB0 //                                  lw      $v0, ScriptParams  # Load Word
patch=0,EE,2035D834,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D838,extended,0062282A //                                  slt     $a1, $v1, $v0    # Set on Less Than
patch=0,EE,2035D83C,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D840,extended,38A50001 //                                  xori    $a1, 1           # Exclusive OR Immediate
patch=0,EE,2035D844,extended,100002EC //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D848,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D84C,extended,00000000 //                                  .align 4
//
//                              loc_1FB8A0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D850,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # jumptable 001FAF40 case 42
patch=0,EE,2035D854,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D858,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D85C,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D860,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D864,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D868,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035D86C,extended,8C23DFB0 //                                  lw      $v1, ScriptParams  # Load Word
patch=0,EE,2035D870,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D874,extended,0062282A //                                  slt     $a1, $v1, $v0    # Set on Less Than
patch=0,EE,2035D878,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D87C,extended,38A50001 //                                  xori    $a1, 1           # Exclusive OR Immediate
patch=0,EE,2035D880,extended,100002DD //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D884,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FB8D8:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D888,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # jumptable 001FAF40 case 43
patch=0,EE,2035D88C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D890,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D894,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D898,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D89C,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D8A0,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035D8A4,extended,8C23DFB0 //                                  lw      $v1, ScriptParams  # Load Word
patch=0,EE,2035D8A8,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D8AC,extended,0062282A //                                  slt     $a1, $v1, $v0    # Set on Less Than
patch=0,EE,2035D8B0,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D8B4,extended,38A50001 //                                  xori    $a1, 1           # Exclusive OR Immediate
patch=0,EE,2035D8B8,extended,100002CF //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D8BC,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FB910:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D8C0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 44
patch=0,EE,2035D8C4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D8C8,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D8CC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D8D0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D8D4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D8D8,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035D8DC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D8E0,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035D8E4,extended,0062282A //                                  slt     $a1, $v1, $v0    # Set on Less Than
patch=0,EE,2035D8E8,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D8EC,extended,38A50001 //                                  xori    $a1, 1           # Exclusive OR Immediate
patch=0,EE,2035D8F0,extended,100002C1 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D8F4,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FB948:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D8F8,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 45
patch=0,EE,2035D8FC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D900,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D904,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D908,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D90C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D910,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035D914,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D918,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035D91C,extended,0062282A //                                  slt     $a1, $v1, $v0    # Set on Less Than
patch=0,EE,2035D920,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D924,extended,38A50001 //                                  xori    $a1, 1           # Exclusive OR Immediate
patch=0,EE,2035D928,extended,100002B3 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D92C,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FB980:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D930,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 46
patch=0,EE,2035D934,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D938,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D93C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D940,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D944,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D948,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035D94C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D950,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035D954,extended,0062282A //                                  slt     $a1, $v1, $v0    # Set on Less Than
patch=0,EE,2035D958,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D95C,extended,38A50001 //                                  xori    $a1, 1           # Exclusive OR Immediate
patch=0,EE,2035D960,extended,100002A5 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D964,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FB9B8:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D968,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 47
patch=0,EE,2035D96C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D970,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D974,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D978,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035D97C,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D980,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035D984,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D988,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035D98C,extended,0062282A //                                  slt     $a1, $v1, $v0    # Set on Less Than
patch=0,EE,2035D990,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D994,extended,38A50001 //                                  xori    $a1, 1           # Exclusive OR Immediate
patch=0,EE,2035D998,extended,10000297 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D99C,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FB9F0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D9A0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 48
patch=0,EE,2035D9A4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035D9A8,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D9AC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D9B0,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D9B4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D9B8,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035D9BC,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035D9C0,extended,C420DFB0 //                                  lwc1    $f0, ScriptParams  # Load Word to FPU
patch=0,EE,2035D9C4,extended,46000834 //                                  c.lt.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035D9C8,extended,45000002 //                                  bc1f    loc_1FBA24       # Branch on FPU False
patch=0,EE,2035D9CC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D9D0,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FBA24:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+B18↑j
patch=0,EE,2035D9D4,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035D9D8,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D9DC,extended,10000286 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035D9E0,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035D9E4,extended,00000000 //                                  .align 3
//
//                              loc_1FBA38:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035D9E8,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 49
patch=0,EE,2035D9EC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035D9F0,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035D9F4,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035D9F8,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035D9FC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DA00,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035DA04,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035DA08,extended,C420DFB0 //                                  lwc1    $f0, ScriptParams  # Load Word to FPU
patch=0,EE,2035DA0C,extended,46000834 //                                  c.lt.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035DA10,extended,45000002 //                                  bc1f    loc_1FBA6C       # Branch on FPU False
patch=0,EE,2035DA14,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DA18,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FBA6C:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+B60↑j
patch=0,EE,2035DA1C,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035DA20,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DA24,extended,10000274 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DA28,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035DA2C,extended,00000000 //                                  .align 4
//
//                              loc_1FBA80:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DA30,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # jumptable 001FAF40 case 50
patch=0,EE,2035DA34,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DA38,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DA3C,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035DA40,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035DA44,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035DA48,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035DA4C,extended,C421DFB0 //                                  lwc1    $f1, ScriptParams  # Load Word to FPU
patch=0,EE,2035DA50,extended,46000834 //                                  c.lt.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035DA54,extended,45000002 //                                  bc1f    loc_1FBAB0       # Branch on FPU False
patch=0,EE,2035DA58,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DA5C,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FBAB0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+BA4↑j
patch=0,EE,2035DA60,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035DA64,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DA68,extended,10000263 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DA6C,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FBAC0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DA70,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # jumptable 001FAF40 case 51
patch=0,EE,2035DA74,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DA78,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DA7C,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035DA80,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DA84,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035DA88,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035DA8C,extended,C421DFB0 //                                  lwc1    $f1, ScriptParams  # Load Word to FPU
patch=0,EE,2035DA90,extended,46000834 //                                  c.lt.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035DA94,extended,45000002 //                                  bc1f    loc_1FBAF0       # Branch on FPU False
patch=0,EE,2035DA98,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DA9C,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FBAF0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+BE4↑j
patch=0,EE,2035DAA0,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035DAA4,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DAA8,extended,10000253 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DAAC,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FBB00:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DAB0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 52
patch=0,EE,2035DAB4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035DAB8,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035DABC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DAC0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035DAC4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035DAC8,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035DACC,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035DAD0,extended,46000834 //                                  c.lt.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035DAD4,extended,45000002 //                                  bc1f    loc_1FBB30       # Branch on FPU False
patch=0,EE,2035DAD8,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DADC,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FBB30:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+C24↑j
patch=0,EE,2035DAE0,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035DAE4,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DAE8,extended,10000243 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DAEC,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FBB40:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DAF0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 53
patch=0,EE,2035DAF4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DAF8,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035DAFC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DB00,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035DB04,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DB08,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035DB0C,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035DB10,extended,46000834 //                                  c.lt.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035DB14,extended,45000002 //                                  bc1f    loc_1FBB70       # Branch on FPU False
patch=0,EE,2035DB18,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DB1C,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FBB70:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+C64↑j
patch=0,EE,2035DB20,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035DB24,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DB28,extended,10000233 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DB2C,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FBB80:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DB30,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 54
patch=0,EE,2035DB34,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035DB38,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035DB3C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DB40,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035DB44,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DB48,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035DB4C,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035DB50,extended,46000834 //                                  c.lt.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035DB54,extended,45000002 //                                  bc1f    loc_1FBBB0       # Branch on FPU False
patch=0,EE,2035DB58,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DB5C,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FBBB0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+CA4↑j
patch=0,EE,2035DB60,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035DB64,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DB68,extended,10000223 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DB6C,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FBBC0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DB70,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 55
patch=0,EE,2035DB74,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DB78,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035DB7C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DB80,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035DB84,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035DB88,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035DB8C,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035DB90,extended,46000834 //                                  c.lt.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035DB94,extended,45000002 //                                  bc1f    loc_1FBBF0       # Branch on FPU False
patch=0,EE,2035DB98,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DB9C,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FBBF0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+CE4↑j
patch=0,EE,2035DBA0,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035DBA4,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DBA8,extended,10000213 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DBAC,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FBC00:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DBB0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 56
patch=0,EE,2035DBB4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035DBB8,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035DBBC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DBC0,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035DBC4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DBC8,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035DBCC,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035DBD0,extended,8C22DFB0 //                                  lw      $v0, ScriptParams  # Load Word
patch=0,EE,2035DBD4,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DBD8,extended,00622826 //                                  xor     $a1, $v1, $v0    # Exclusive OR
patch=0,EE,2035DBDC,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035DBE0,extended,2CA50001 //                                  sltiu   $a1, 1           # Set on Less Than Immediate Unsigned
patch=0,EE,2035DBE4,extended,10000204 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DBE8,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035DBEC,extended,00000000 //                                  .align 4
//
//                              loc_1FBC40:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DBF0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 57
patch=0,EE,2035DBF4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DBF8,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035DBFC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DC00,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035DC04,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DC08,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035DC0C,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035DC10,extended,8C22DFB0 //                                  lw      $v0, ScriptParams  # Load Word
patch=0,EE,2035DC14,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DC18,extended,00622826 //                                  xor     $a1, $v1, $v0    # Exclusive OR
patch=0,EE,2035DC1C,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035DC20,extended,2CA50001 //                                  sltiu   $a1, 1           # Set on Less Than Immediate Unsigned
patch=0,EE,2035DC24,extended,100001F4 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DC28,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035DC2C,extended,00000000 //                                  .align 4
//
//                              loc_1FBC80:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DC30,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 58
patch=0,EE,2035DC34,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035DC38,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035DC3C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DC40,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035DC44,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035DC48,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035DC4C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DC50,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035DC54,extended,00622826 //                                  xor     $a1, $v1, $v0    # Exclusive OR
patch=0,EE,2035DC58,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035DC5C,extended,2CA50001 //                                  sltiu   $a1, 1           # Set on Less Than Immediate Unsigned
patch=0,EE,2035DC60,extended,100001E5 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DC64,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FBCB8:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DC68,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 59
patch=0,EE,2035DC6C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DC70,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035DC74,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DC78,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035DC7C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DC80,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035DC84,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DC88,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035DC8C,extended,00622826 //                                  xor     $a1, $v1, $v0    # Exclusive OR
patch=0,EE,2035DC90,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035DC94,extended,2CA50001 //                                  sltiu   $a1, 1           # Set on Less Than Immediate Unsigned
patch=0,EE,2035DC98,extended,100001D7 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DC9C,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FBCF0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DCA0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 60
patch=0,EE,2035DCA4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035DCA8,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035DCAC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DCB0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035DCB4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DCB8,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035DCBC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DCC0,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035DCC4,extended,00622826 //                                  xor     $a1, $v1, $v0    # Exclusive OR
patch=0,EE,2035DCC8,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035DCCC,extended,2CA50001 //                                  sltiu   $a1, 1           # Set on Less Than Immediate Unsigned
patch=0,EE,2035DCD0,extended,100001C9 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DCD4,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FBD28:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DCD8,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 66
patch=0,EE,2035DCDC,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035DCE0,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035DCE4,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DCE8,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035DCEC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DCF0,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035DCF4,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035DCF8,extended,C420DFB0 //                                  lwc1    $f0, ScriptParams  # Load Word to FPU
patch=0,EE,2035DCFC,extended,46000832 //                                  c.eq.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035DD00,extended,45010002 //                                  bc1t    loc_1FBD5C       # Branch on FPU True
patch=0,EE,2035DD04,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DD08,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FBD5C:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+E50↑j
patch=0,EE,2035DD0C,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035DD10,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DD14,extended,100001B8 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DD18,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035DD1C,extended,00000000 //                                  .align 4
//
//                              loc_1FBD70:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DD20,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 67
patch=0,EE,2035DD24,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DD28,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035DD2C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DD30,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # Jump And Link
patch=0,EE,2035DD34,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DD38,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035DD3C,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035DD40,extended,C420DFB0 //                                  lwc1    $f0, ScriptParams  # Load Word to FPU
patch=0,EE,2035DD44,extended,46000832 //                                  c.eq.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035DD48,extended,45010002 //                                  bc1t    loc_1FBDA4       # Branch on FPU True
patch=0,EE,2035DD4C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DD50,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FBDA4:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+E98↑j
patch=0,EE,2035DD54,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035DD58,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DD5C,extended,100001A6 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DD60,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035DD64,extended,00000000 //                                  .align 3
//
//                              loc_1FBDB8:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DD68,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 68
patch=0,EE,2035DD6C,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035DD70,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035DD74,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DD78,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035DD7C,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035DD80,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035DD84,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035DD88,extended,46000832 //                                  c.eq.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035DD8C,extended,45010002 //                                  bc1t    loc_1FBDE8       # Branch on FPU True
patch=0,EE,2035DD90,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DD94,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FBDE8:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+EDC↑j
patch=0,EE,2035DD98,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035DD9C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DDA0,extended,10000195 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DDA4,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FBDF8:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DDA8,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 69
patch=0,EE,2035DDAC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DDB0,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035DDB4,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DDB8,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035DDBC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DDC0,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035DDC4,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035DDC8,extended,46000832 //                                  c.eq.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035DDCC,extended,45010002 //                                  bc1t    loc_1FBE28       # Branch on FPU True
patch=0,EE,2035DDD0,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DDD4,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FBE28:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+F1C↑j
patch=0,EE,2035DDD8,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035DDDC,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DDE0,extended,10000185 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DDE4,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FBE38:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DDE8,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 70
patch=0,EE,2035DDEC,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035DDF0,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035DDF4,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DDF8,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035DDFC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DE00,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035DE04,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035DE08,extended,46000832 //                                  c.eq.s  $f1, $f0         # Floating-point Compare
patch=0,EE,2035DE0C,extended,45010002 //                                  bc1t    loc_1FBE68       # Branch on FPU True
patch=0,EE,2035DE10,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DE14,extended,0000282D //                                  move    $a1, $zero
//
//                              loc_1FBE68:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+F5C↑j
patch=0,EE,2035DE18,extended,0C0C1DFC //                                  jal     _ZN14CRunningScript17UpdateCompareFlagEh  # Jump And Link
patch=0,EE,2035DE1C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DE20,extended,10000175 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DE24,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FBE78:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DE28,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # jumptable 001FAF40 case 77
patch=0,EE,2035DE2C,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DE30,extended,924200C5 //                                  lbu     $v0, 0xC5($s2)   # Load Byte Unsigned
patch=0,EE,2035DE34,extended,1440000C //                                  bnez    $v0, loc_1FBEB8  # Branch on Not Zero
patch=0,EE,2035DE38,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035DE3C,extended,8C23DFB0 //                                  lw      $v1, ScriptParams  # Load Word
patch=0,EE,2035DE40,extended,04610005 //                                  bgez    $v1, loc_1FBEA8  # Branch on Greater Than or Equal to Zero
patch=0,EE,2035DE44,extended,00000000 //                                  nop
patch=0,EE,2035DE48,extended,8E420010 //                                  lw      $v0, 0x10($s2)   # Load Word
patch=0,EE,2035DE4C,extended,00431023 //                                  subu    $v0, $v1         # Subtract Unsigned
patch=0,EE,2035DE50,extended,10000005 //                                  b       loc_1FBEB8       # Branch Always
patch=0,EE,2035DE54,extended,AE420014 //                                  sw      $v0, 0x14($s2)   # Store Word
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FBEA8:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+F90↑j
patch=0,EE,2035DE58,extended,3C02006B //
patch=0,EE,2035DE5C,extended,24421FF0 //                      li      $v0, _ZN11CTheScripts11ScriptSpaceE  # Load Immediate
patch=0,EE,2035DE60,extended,00431021 //                                 addu    $v0, $v1         # Add Unsigned
patch=0,EE,2035DE64,extended,AE420014 //                                  sw      $v0, 0x14($s2)   # Store Word
//
//                              loc_1FBEB8:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+F84↑j
//                                                                       # CRunningScript__ProcessCommands_0To99+FA0↑j
patch=0,EE,2035DE68,extended,10000163 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DE6C,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FBEC0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DE70,extended,924200DC //                                  lbu     $v0, 0xDC($s2)   # jumptable 001FAF40 case 78
patch=0,EE,2035DE74,extended,10400002 //                                  beqz    $v0, loc_1FBED0  # Branch on Zero
patch=0,EE,2035DE78,extended,00000000 //                                  nop
patch=0,EE,2035DE7C,extended,A3800470 //                                  sb      $zero, byte_66B560  # Store Byte
//
//                              loc_1FBED0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+FC4↑j
patch=0,EE,2035DE80,extended,8E430004 //                                  lw      $v1, 4($s2)      # Load Word
patch=0,EE,2035DE84,extended,10600004 //                                  beqz    $v1, loc_1FBEE8  # Branch on Zero
patch=0,EE,2035DE88,extended,00000000 //                                  nop
patch=0,EE,2035DE8C,extended,8E420000 //                                  lw      $v0, 0($s2)      # Load Word
patch=0,EE,2035DE90,extended,10000003 //                                  b       loc_1FBEF0       # Branch Always
patch=0,EE,2035DE94,extended,AC620000 //                                  sw      $v0, 0($v1)      # Store Word
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FBEE8:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+FD4↑j
patch=0,EE,2035DE98,extended,8E420000 //                                  lw      $v0, 0($s2)      # Load Word
patch=0,EE,2035DE9C,extended,AF820418 //                                  sw      $v0, byte_66B508  # Store Word
//
//                              loc_1FBEF0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+FE0↑j
patch=0,EE,2035DEA0,extended,8E430000 //                                  lw      $v1, 0($s2)      # Load Word
patch=0,EE,2035DEA4,extended,10600004 //                                  beqz    $v1, loc_1FBF08  # Branch on Zero
patch=0,EE,2035DEA8,extended,00000000 //                                  nop
patch=0,EE,2035DEAC,extended,8E420004 //                                  lw      $v0, 4($s2)      # Load Word
patch=0,EE,2035DEB0,extended,AC620004 //                                  sw      $v0, 4($v1)      # Store Word
patch=0,EE,2035DEB4,extended,00000000 //                                  nop
//
//                              loc_1FBF08:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+FF4↑j
patch=0,EE,2035DEB8,extended,8F82041C //                                  lw      $v0, dword_66B50C  # Load Word
patch=0,EE,2035DEBC,extended,AE420000 //                                  sw      $v0, 0($s2)      # Store Word
patch=0,EE,2035DEC0,extended,AE400004 //                                  sw      $zero, 4($s2)    # Store Word
patch=0,EE,2035DEC4,extended,8F82041C //                                  lw      $v0, dword_66B50C  # Load Word
patch=0,EE,2035DEC8,extended,10400003 //                                  beqz    $v0, loc_1FBF28  # Branch on Zero
patch=0,EE,2035DECC,extended,00000000 //                                  nop
patch=0,EE,2035DED0,extended,AC520004 //                                  sw      $s2, 4($v0)      # Store Word
patch=0,EE,2035DED4,extended,00000000 //                                  nop
//
//                              loc_1FBF28:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+1018↑j
patch=0,EE,2035DED8,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DEDC,extended,0C07E670 //                                  jal     sub_1F99C0       # Jump And Link
patch=0,EE,2035DEE0,extended,AF92041C //                                  sw      $s2, dword_66B50C  # Store Word
patch=0,EE,2035DEE4,extended,10000144 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DEE8,extended,24020001 //                                  li      $v0, 1           # Load Immediate
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035DEEC,extended,00000000 //                                  .align 4
//
//                              loc_1FBF40:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DEF0,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # jumptable 001FAF40 case 79
patch=0,EE,2035DEF4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DEF8,extended,3C010070 //
patch=0,EE,2035DEFC,extended,8C22DFB0 //                      lw      $v0, ScriptParams  # Load Word
patch=0,EE,2035DF00,extended,04400003 //                                 bltz    $v0, loc_1FBF60  # Branch on Less Than Zero
patch=0,EE,2035DF04,extended,00000000 //                                  nop
patch=0,EE,2035DF08,extended,0040882D //                                  move    $s1, $v0
patch=0,EE,2035DF0C,extended,00000000 //                                  nop
//
//                              loc_1FBF60:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+1050↑j
patch=0,EE,2035DF10,extended,8F90041C //                                  lw      $s0, dword_66B50C  # Load Word
patch=0,EE,2035DF14,extended,8E030004 //                                  lw      $v1, 4($s0)      # Load Word
patch=0,EE,2035DF18,extended,10600005 //                                  beqz    $v1, loc_1FBF80  # Branch on Zero
patch=0,EE,2035DF1C,extended,00000000 //                                  nop
patch=0,EE,2035DF20,extended,8E020000 //                                  lw      $v0, 0($s0)      # Load Word
patch=0,EE,2035DF24,extended,10000004 //                                  b       loc_1FBF88       # Branch Always
patch=0,EE,2035DF28,extended,AC620000 //                                  sw      $v0, 0($v1)      # Store Word
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035DF2C,extended,00000000 //                                  .align 4
//
//                              loc_1FBF80:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+1068↑j
patch=0,EE,2035DF30,extended,8E020000 //                                  lw      $v0, 0($s0)      # Load Word
patch=0,EE,2035DF34,extended,AF82041C //                                  sw      $v0, dword_66B50C  # Store Word
//
//                              loc_1FBF88:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+1074↑j
patch=0,EE,2035DF38,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035DF3C,extended,10600004 //                                  beqz    $v1, loc_1FBFA0  # Branch on Zero
patch=0,EE,2035DF40,extended,00000000 //                                  nop
patch=0,EE,2035DF44,extended,8E020004 //                                  lw      $v0, 4($s0)      # Load Word
patch=0,EE,2035DF48,extended,AC620004 //                                  sw      $v0, 4($v1)      # Store Word
patch=0,EE,2035DF4C,extended,00000000 //                                  nop
//
//                              loc_1FBFA0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+108C↑j
patch=0,EE,2035DF50,extended,0C07E188 //                                  jal     sub_1F8620       # Jump And Link
patch=0,EE,2035DF54,extended,0200202D //                                  move    $a0, $s0
patch=0,EE,2035DF58,extended,3C02006B //
patch=0,EE,2035DF5C,extended,24421FF0 //                      li      $v0, _ZN11CTheScripts11ScriptSpaceE  # Load Immediate
patch=0,EE,2035DF60,extended,00511021 //                                 addu    $v0, $s1         # Add Unsigned
patch=0,EE,2035DF64,extended,AE020014 //                                  sw      $v0, 0x14($s0)   # Store Word
patch=0,EE,2035DF68,extended,8F820418 //                                  lw      $v0, byte_66B508  # Load Word
patch=0,EE,2035DF6C,extended,AE020000 //                                  sw      $v0, 0($s0)      # Store Word
patch=0,EE,2035DF70,extended,AE000004 //                                  sw      $zero, 4($s0)    # Store Word
patch=0,EE,2035DF74,extended,8F820418 //                                  lw      $v0, byte_66B508  # Load Word
patch=0,EE,2035DF78,extended,10400003 //                                  beqz    $v0, loc_1FBFD8  # Branch on Zero
patch=0,EE,2035DF7C,extended,00000000 //                                  nop
patch=0,EE,2035DF80,extended,AC500004 //                                  sw      $s0, 4($v0)      # Store Word
patch=0,EE,2035DF84,extended,00000000 //                                  nop
//
//                              loc_1FBFD8:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+10C8↑j
patch=0,EE,2035DF88,extended,AF900418 //                                  sw      $s0, byte_66B508  # Store Word
patch=0,EE,2035DF8C,extended,24020001 //                                  li      $v0, 1           # Load Immediate
patch=0,EE,2035DF90,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035DF94,extended,A20200C4 //                                  sb      $v0, 0xC4($s0)   # Store Byte
patch=0,EE,2035DF98,extended,0C07DFE0 //                                  jal     sub_1F7F80       # Jump And Link
patch=0,EE,2035DF9C,extended,0200282D //                                  move    $a1, $s0
patch=0,EE,2035DFA0,extended,10000115 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035DFA4,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FBFF8:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035DFA8,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # jumptable 001FAF40 case 80
patch=0,EE,2035DFAC,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035DFB0,extended,96420038 //                                  lhu     $v0, 0x38($s2)   # Load Halfword Unsigned
patch=0,EE,2035DFB4,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035DFB8,extended,8E440014 //                                  lw      $a0, 0x14($s2)   # Load Word
patch=0,EE,2035DFBC,extended,24430001 //                                  addiu   $v1, $v0, 1      # Add Immediate Unsigned
patch=0,EE,2035DFC0,extended,00021080 //                                  sll     $v0, 2           # Shift Left Logical
patch=0,EE,2035DFC4,extended,A6430038 //                                  sh      $v1, 0x38($s2)   # Store Halfword
patch=0,EE,2035DFC8,extended,00521021 //                                  addu    $v0, $s2         # Add Unsigned
patch=0,EE,2035DFCC,extended,AC440018 //                                  sw      $a0, 0x18($v0)   # Store Word
patch=0,EE,2035DFD0,extended,8C23DFB0 //                                  lw      $v1, ScriptParams  # Load Word
patch=0,EE,2035DFD4,extended,04610006 //                                  bgez    $v1, loc_1FC040  # Branch on Greater Than or Equal to Zero
patch=0,EE,2035DFD8,extended,00000000 //                                  nop
patch=0,EE,2035DFDC,extended,8E420010 //                                  lw      $v0, 0x10($s2)   # Load Word
patch=0,EE,2035DFE0,extended,00431023 //                                  subu    $v0, $v1         # Subtract Unsigned
patch=0,EE,2035DFE4,extended,10000006 //                                  b       loc_1FC050       # Branch Always
patch=0,EE,2035DFE8,extended,AE420014 //                                  sw      $v0, 0x14($s2)   # Store Word
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035DFEC,extended,00000000 //                                  .align 4
//
//                              loc_1FC040:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+1124↑j
patch=0,EE,2035DFF0,extended,3C02006B //
patch=0,EE,2035DFF4,extended,24421FF0 //                      li      $v0, _ZN11CTheScripts11ScriptSpaceE  # Load Immediate
patch=0,EE,2035DFF8,extended,00431021 //                                 addu    $v0, $v1         # Add Unsigned
patch=0,EE,2035DFFC,extended,AE420014 //                                  sw      $v0, 0x14($s2)   # Store Word
//
//                              loc_1FC050:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+1134↑j
patch=0,EE,2035E000,extended,100000FD //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035E004,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FC058:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035E008,extended,96430038 //                                  lhu     $v1, 0x38($s2)   # jumptable 001FAF40 case 81
patch=0,EE,2035E00C,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035E010,extended,2463FFFF //                                  addiu   $v1, -1          # Add Immediate Unsigned
patch=0,EE,2035E014,extended,A6430038 //                                  sh      $v1, 0x38($s2)   # Store Halfword
patch=0,EE,2035E018,extended,3063FFFF //                                  andi    $v1, 0xFFFF      # AND Immediate
patch=0,EE,2035E01C,extended,00031880 //                                  sll     $v1, 2           # Shift Left Logical
patch=0,EE,2035E020,extended,00721821 //                                  addu    $v1, $s2         # Add Unsigned
patch=0,EE,2035E024,extended,8C630018 //                                  lw      $v1, 0x18($v1)   # Load Word
patch=0,EE,2035E028,extended,100000F3 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035E02C,extended,AE430014 //                                  sw      $v1, 0x14($s2)   # Store Word
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FC080:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035E030,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # jumptable 001FAF40 case 82
patch=0,EE,2035E034,extended,24050006 //                                  li      $a1, 6           # Load Immediate
patch=0,EE,2035E038,extended,100000EF //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035E03C,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FC090:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035E040,extended,0C07DDF4 //                                  jal     _ZN14CRunningScript17CollectParametersEs  # jumptable 001FAF40 case 83
patch=0,EE,2035E044,extended,24050004 //                                  li      $a1, 4           # Load Immediate
patch=0,EE,2035E048,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035E04C,extended,24020001 //                                  li      $v0, 1           # Load Immediate
patch=0,EE,2035E050,extended,8C30DFB0 //                                  lw      $s0, ScriptParams  # Load Word
patch=0,EE,2035E054,extended,3C01007C //
patch=0,EE,2035E058,extended,90233C76 //                      lbu     $v1, byte_7C3C76  # Load Byte Unsigned
patch=0,EE,2035E05C,extended,30630007 //                                 andi    $v1, 7           # AND Immediate
patch=0,EE,2035E060,extended,10620007 //                                  beq     $v1, $v0, loc_1FC0D0  # Branch on Equal
patch=0,EE,2035E064,extended,0000202D //                                  move    $a0, $zero
patch=0,EE,2035E068,extended,2785A0A8 //                                  la      $a1, aPlayer     # "player"
patch=0,EE,2035E06C,extended,0C0B1FAC //                                  jal     sub_2C7EB0       # Jump And Link
patch=0,EE,2035E070,extended,24060068 //                                  li      $a2, 0x68  # 'h'  # Load Immediate
patch=0,EE,2035E074,extended,0C0B0F44 //                                  jal     _ZN10CStreaming22LoadAllRequestedModelsEb  # Jump And Link
patch=0,EE,2035E078,extended,24040001 //                                  li      $a0, 1           # Load Immediate
patch=0,EE,2035E07C,extended,00000000 //                                  nop
//
//                              loc_1FC0D0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+11B0↑j
patch=0,EE,2035E080,extended,0C0681B8 //                                  jal     sub_1A06E0       # Jump And Link
patch=0,EE,2035E084,extended,0200202D //                                  move    $a0, $s0
patch=0,EE,2035E088,extended,001018C0 //                                  sll     $v1, $s0, 3      # Shift Left Logical
patch=0,EE,2035E08C,extended,3C020071 //                                  lui     $v0, 0x71  # 'q'  # Load Upper Immediate
patch=0,EE,2035E090,extended,00701823 //                                  subu    $v1, $s0         # Subtract Unsigned
patch=0,EE,2035E094,extended,244295D0 //                                  li      $v0, _ZN6CWorld13PlayerInFocusE  # Load Immediate
patch=0,EE,2035E098,extended,00031900 //                                  sll     $v1, 4           # Shift Left Logical
patch=0,EE,2035E09C,extended,00701823 //                                  subu    $v1, $s0         # Subtract Unsigned
patch=0,EE,2035E0A0,extended,00031880 //                                  sll     $v1, 2           # Shift Left Logical
patch=0,EE,2035E0A4,extended,00438821 //                                  addu    $s1, $v0, $v1    # Add Unsigned
patch=0,EE,2035E0A8,extended,8E240000 //                                  lw      $a0, 0($s1)      # Load Word
patch=0,EE,2035E0AC,extended,0C064368 //                                  jal     sub_190DA0       # Jump And Link
patch=0,EE,2035E0B0,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035E0B4,extended,0C068238 //                                  jal     sub_1A08E0       # Jump And Link
patch=0,EE,2035E0B8,extended,0200202D //                                  move    $a0, $s0
patch=0,EE,2035E0BC,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035E0C0,extended,3C02C2C8 //                                  lui     $v0, 0xC2C8      # Load Upper Immediate
patch=0,EE,2035E0C4,extended,C436DFB4 //                                  lwc1    $f22, ScriptParams+4  # Load Word to FPU
patch=0,EE,2035E0C8,extended,44820000 //                                  mtc1    $v0, $f0         # Move to FPU
patch=0,EE,2035E0CC,extended,3C010070 //
patch=0,EE,2035E0D0,extended,C435DFB8 //                      lwc1    $f21, flt_6FDFB8  # Load Word to FPU
patch=0,EE,2035E0D4,extended,3C010070
/
patch=0,EE,2035E0D8,extended,C434DFBC //                      lwc1    $f20, flt_6FDFBC  # Load Word to FPU
patch=0,EE,2035E0DC,extended,4600A036 //                                 c.le.s  $f20, $f0        # Floating-point Compare
patch=0,EE,2035E0E0,extended,45000005 //                                  bc1f    loc_1FC148       # Branch on FPU False
patch=0,EE,2035E0E4,extended,4600B306 //                                  mov.s   $f12, $f22       # Floating-point Move
patch=0,EE,2035E0E8,extended,0C0A1A70 //                                  jal     sub_2869C0       # Jump And Link
patch=0,EE,2035E0EC,extended,4600AB46 //                                  mov.s   $f13, $f21       # Floating-point Move
patch=0,EE,2035E0F0,extended,46000506 //                                  mov.s   $f20, $f0        # Floating-point Move
patch=0,EE,2035E0F4,extended,00000000 //                                  nop
//
//                              loc_1FC148:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+1230↑j
patch=0,EE,2035E0F8,extended,0C08C970 //                                  jal     sub_2325C0       # Jump And Link
patch=0,EE,2035E0FC,extended,8E240000 //                                  lw      $a0, 0($s1)      # Load Word
patch=0,EE,2035E100,extended,8E230000 //                                  lw      $v1, 0($s1)      # Load Word
patch=0,EE,2035E104,extended,8C620014 //                                  lw      $v0, 0x14($v1)   # Load Word
patch=0,EE,2035E108,extended,10400007 //                                  beqz    $v0, loc_1FC178  # Branch on Zero
patch=0,EE,2035E10C,extended,4600A500 //                                  add.s   $f20, $f0        # Floating-point Add
patch=0,EE,2035E110,extended,E4560030 //                                  swc1    $f22, 0x30($v0)  # Store Word from FPU
patch=0,EE,2035E114,extended,8C620014 //                                  lw      $v0, 0x14($v1)   # Load Word
patch=0,EE,2035E118,extended,E4550034 //                                  swc1    $f21, 0x34($v0)  # Store Word from FPU
patch=0,EE,2035E11C,extended,8C620014 //                                  lw      $v0, 0x14($v1)   # Load Word
patch=0,EE,2035E120,extended,10000005 //                                  b       loc_1FC188       # Branch Always
patch=0,EE,2035E124,extended,E4540038 //                                  swc1    $f20, 0x38($v0)  # Store Word from FPU
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FC178:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+1258↑j
patch=0,EE,2035E128,extended,E4760004 //                                  swc1    $f22, 4($v1)     # Store Word from FPU
patch=0,EE,2035E12C,extended,E4750008 //                                  swc1    $f21, 8($v1)     # Store Word from FPU
patch=0,EE,2035E130,extended,E474000C //                                  swc1    $f20, 0xC($v1)   # Store Word from FPU
patch=0,EE,2035E134,extended,00000000 //                                  nop
//
//                              loc_1FC188:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+1270↑j
patch=0,EE,2035E138,extended,E7B60050 //                                  swc1    $f22, 0x60+var_10($sp)  # Store Word from FPU
patch=0,EE,2035E13C,extended,E7B50054 //                                  swc1    $f21, 0x60+var_C($sp)  # Store Word from FPU
patch=0,EE,2035E140,extended,E7B40058 //                                  swc1    $f20, 0x60+var_8($sp)  # Store Word from FPU
patch=0,EE,2035E144,extended,8E250000 //                                  lw      $a1, 0($s1)      # Load Word
patch=0,EE,2035E148,extended,0C0C2A84 //                                  jal     sub_30AA10       # Jump And Link
patch=0,EE,2035E14C,extended,27A40050 //                                  addiu   $a0, $sp, 0x60+var_10  # Add Immediate Unsigned
patch=0,EE,2035E150,extended,0C068244 //                                  jal     sub_1A0910       # Jump And Link
patch=0,EE,2035E154,extended,0200202D //                                  move    $a0, $s0
patch=0,EE,2035E158,extended,3C010070 //                                  lui     $at, 0x70  # 'p'  # Load Upper Immediate
patch=0,EE,2035E15C,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035E160,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035E164,extended,0C07DF48 //                                  jal     _ZN14CRunningScript15StoreParametersEs  # Jump And Link
patch=0,EE,2035E168,extended,AC30DFB0 //                                  sw      $s0, ScriptParams  # Store Word
patch=0,EE,2035E16C,extended,0C0FF268 //                                  jal     _ZN5CTasknwEj    # Jump And Link
patch=0,EE,2035E170,extended,2404001C //                                  li      $a0, 0x1C        # Load Immediate
patch=0,EE,2035E174,extended,10400004 //                                  beqz    $v0, loc_1FC1D8  # Branch on Zero
patch=0,EE,2035E178,extended,0040202D //                                  move    $a0, $v0
patch=0,EE,2035E17C,extended,0C118E00 //                                  jal     sub_463800       # Jump And Link
patch=0,EE,2035E180,extended,00000000 //                                  nop
patch=0,EE,2035E184,extended,00000000 //                                  nop
//
//                              loc_1FC1D8:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+12C4↑j
patch=0,EE,2035E188,extended,8E230000 //                                  lw      $v1, 0($s1)      # Load Word
patch=0,EE,2035E18C,extended,0040282D //                                  move    $a1, $v0
patch=0,EE,2035E190,extended,24060004 //                                  li      $a2, 4           # Load Immediate
patch=0,EE,2035E194,extended,0000382D //                                  move    $a3, $zero
patch=0,EE,2035E198,extended,8C6204B4 //                                  lw      $v0, 0x4B4($v1)  # Load Word
patch=0,EE,2035E19C,extended,0C117E60 //                                  jal     _ZN12CTaskManager7SetTaskEP5CTaskib  # Jump And Link
patch=0,EE,2035E1A0,extended,24440004 //                                  addiu   $a0, $v0, 4      # Add Immediate Unsigned
patch=0,EE,2035E1A4,extended,10000094 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035E1A8,extended,0000102D //                                  move    $v0, $zero
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035E1AC,extended,00000000 //                                  .align 4
//
//                              loc_1FC200:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035E1B0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 88
patch=0,EE,2035E1B4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035E1B8,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035E1BC,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035E1C0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035E1C4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035E1C8,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035E1CC,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035E1D0,extended,00621821 //                                  addu    $v1, $v0         # Add Unsigned
patch=0,EE,2035E1D4,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035E1D8,extended,10000087 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035E1DC,extended,AE030000 //                                  sw      $v1, 0($s0)      # Store Word
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FC230:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035E1E0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 89
patch=0,EE,2035E1E4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035E1E8,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035E1EC,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035E1F0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035E1F4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035E1F8,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035E1FC,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035E200,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035E204,extended,46000800 //                                  add.s   $f0, $f1, $f0    # Floating-point Add
patch=0,EE,2035E208,extended,1000007B //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035E20C,extended,E6000000 //                                  swc1    $f0, 0($s0)      # Store Word from FPU
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FC260:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035E210,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 90
patch=0,EE,2035E214,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035E218,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035E21C,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035E220,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035E224,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035E228,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035E22C,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035E230,extended,00621821 //                                  addu    $v1, $v0         # Add Unsigned
patch=0,EE,2035E234,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035E238,extended,1000006F //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035E23C,extended,AE030000 //                                  sw      $v1, 0($s0)      # Store Word
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FC290:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035E240,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 91
patch=0,EE,2035E244,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035E248,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035E24C,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035E250,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035E254,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035E258,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035E25C,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035E260,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035E264,extended,46000800 //                                  add.s   $f0, $f1, $f0    # Floating-point Add
patch=0,EE,2035E268,extended,10000063 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035E26C,extended,E6000000 //                                  swc1    $f0, 0($s0)      # Store Word from FPU
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FC2C0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035E270,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 92
patch=0,EE,2035E274,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035E278,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035E27C,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035E280,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035E284,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035E288,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035E28C,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035E290,extended,00621821 //                                  addu    $v1, $v0         # Add Unsigned
patch=0,EE,2035E294,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035E298,extended,10000057 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035E29C,extended,AE030000 //                                  sw      $v1, 0($s0)      # Store Word
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FC2F0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035E2A0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 93
patch=0,EE,2035E2A4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035E2A8,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035E2AC,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035E2B0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035E2B4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035E2B8,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035E2BC,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035E2C0,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035E2C4,extended,46000800 //                                  add.s   $f0, $f1, $f0    # Floating-point Add
patch=0,EE,2035E2C8,extended,1000004B //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035E2CC,extended,E6000000 //                                  swc1    $f0, 0($s0)      # Store Word from FPU
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FC320:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035E2D0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 94
patch=0,EE,2035E2D4,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035E2D8,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035E2DC,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035E2E0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035E2E4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035E2E8,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035E2EC,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035E2F0,extended,00621821 //                                  addu    $v1, $v0         # Add Unsigned
patch=0,EE,2035E2F4,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035E2F8,extended,1000003F //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035E2FC,extended,AE030000 //                                  sw      $v1, 0($s0)      # Store Word
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FC350:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035E300,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 95
patch=0,EE,2035E304,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035E308,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035E30C,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035E310,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035E314,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035E318,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035E31C,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035E320,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035E324,extended,46000800 //                                  add.s   $f0, $f1, $f0    # Floating-point Add
patch=0,EE,2035E328,extended,10000033 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035E32C,extended,E6000000 //                                  swc1    $f0, 0($s0)      # Store Word from FPU
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FC380:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035E330,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 96
patch=0,EE,2035E334,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035E338,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035E33C,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035E340,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035E344,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035E348,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035E34C,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035E350,extended,00621823 //                                  subu    $v1, $v0         # Subtract Unsigned
patch=0,EE,2035E354,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035E358,extended,10000027 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035E35C,extended,AE030000 //                                  sw      $v1, 0($s0)      # Store Word
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FC3B0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035E360,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 97
patch=0,EE,2035E364,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035E368,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035E36C,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035E370,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035E374,extended,24050002 //                                  li      $a1, 2           # Load Immediate
patch=0,EE,2035E378,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035E37C,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035E380,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035E384,extended,46000801 //                                  sub.s   $f0, $f1, $f0    # Floating-point Subtract
patch=0,EE,2035E388,extended,1000001B //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035E38C,extended,E6000000 //                                  swc1    $f0, 0($s0)      # Store Word from FPU
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FC3E0:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035E390,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 98
patch=0,EE,2035E394,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035E398,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035E39C,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035E3A0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035E3A4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035E3A8,extended,8E030000 //                                  lw      $v1, 0($s0)      # Load Word
patch=0,EE,2035E3AC,extended,8C420000 //                                  lw      $v0, 0($v0)      # Load Word
patch=0,EE,2035E3B0,extended,00621823 //                                  subu    $v1, $v0         # Subtract Unsigned
patch=0,EE,2035E3B4,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035E3B8,extended,1000000F //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035E3BC,extended,AE030000 //                                  sw      $v1, 0($s0)      # Store Word
//                               # ---------------------------------------------------------------------------
//
//                              loc_1FC410:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: seg000:jpt_1FAF40↓o
patch=0,EE,2035E3C0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # jumptable 001FAF40 case 99
patch=0,EE,2035E3C4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035E3C8,extended,0240202D //                                  move    $a0, $s2
patch=0,EE,2035E3CC,extended,0040802D //                                  move    $s0, $v0
patch=0,EE,2035E3D0,extended,0C07E0C0 //                                  jal     _ZN14CRunningScript26GetPointerToScriptVariableEh  # Jump And Link
patch=0,EE,2035E3D4,extended,24050001 //                                  li      $a1, 1           # Load Immediate
patch=0,EE,2035E3D8,extended,C4400000 //                                  lwc1    $f0, 0($v0)      # Load Word to FPU
patch=0,EE,2035E3DC,extended,C6010000 //                                  lwc1    $f1, 0($s0)      # Load Word to FPU
patch=0,EE,2035E3E0,extended,0000102D //                                  move    $v0, $zero
patch=0,EE,2035E3E4,extended,46000801 //                                  sub.s   $f0, $f1, $f0    # Floating-point Subtract
patch=0,EE,2035E3E8,extended,10000003 //                                  b       loc_1FC448       # Branch Always
patch=0,EE,2035E3EC,extended,E6000000 //                                  swc1    $f0, 0($s0)      # Store Word from FPU
//                               # ---------------------------------------------------------------------------
//
//                              def_1FAF40:                              # CODE XREF: CRunningScript__ProcessCommands_0To99+24↑j
//                                                                       # CRunningScript__ProcessCommands_0To99+40↑j
//                                                                       # DATA XREF: ...
patch=0,EE,2035E3F0,extended,2402FFFF //                                  li      $v0, 0xFFFFFFFF  # jumptable 001FAF40 default case, cases 61-65,71-76,84-87
patch=0,EE,2035E3F4,extended,00000000 //                                  nop
//
//                              loc_1FC448:                              # CODE XREF: CRunningScript__ProcessCommands_0To99:loc_1FAF48↑j
//                                                                       # CRunningScript__ProcessCommands_0To99+6C↑j ...
patch=0,EE,2035E3F8,extended,DFBF0060 //                                  ld      $ra, 0x60($sp)  # Load Doubleword
patch=0,EE,2035E3FC,extended,7BB20050 //                                  lq      $s2, 0x50($sp)  # Load Quadword
patch=0,EE,2035E400,extended,C7B60008 //                                  lwc1    $f22, 0x8($sp)  # Load Word to FPU
patch=0,EE,2035E404,extended,7BB10040 //                                  lq      $s1, 0x40($sp)  # Load Quadword
patch=0,EE,2035E408,extended,C7B50004 //                                  lwc1    $f21, 0x4($sp)  # Load Word to FPU
patch=0,EE,2035E40C,extended,7BB00030 //                                  lq      $s0, 0x30($sp)  # Load Quadword
patch=0,EE,2035E410,extended,C7B40000 //                                  lwc1    $f20, 0x0($sp)  # Load Word to FPU
patch=0,EE,2035E414,extended,03E00008 //                                  jr      $ra              # Jump Register
patch=0,EE,2035E418,extended,27BD0080 //                                  addiu   $sp, 0x80        # Add Immediate Unsigned
//                               # End of function CRunningScript__ProcessCommands_0To99
//
//                               # ---------------------------------------------------------------------------
patch=0,EE,2035E41C,extended,000000000