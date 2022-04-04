package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval tile {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc tile::YYABORT {} {
    return -code return 1
}

proc tile::YYACCEPT {} {
    return -code return 0
}

proc tile::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc tile::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc tile::yyerror {s} {
    puts stderr $s
}

proc tile::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc tile::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set tile::table {
  25:264,target 28
  18:271,target 33
  11:264 reduce
  7:264,target 15
  0:257 shift
  18:281,target 34
  0:258 shift
  23:0,target 13
  5:0,target 3
  0:259 shift
  0:260 shift
  27:0 reduce
  20:264,target 18
  19:264,target 14
  0:266,target 7
  0:261 shift
  2:264,target 4
  31:263,target 36
  15:y,target 28
  11:0 reduce
  8:267,target 15
  0:276,target 13
  0:262 shift
  17:263 shift
  14:264,target 8
  0:264 reduce
  32:0 reduce
  34:264,target 21
  20:264 reduce
  19:264 reduce
  0:266 shift
  2:264 reduce
  32:0,target 25
  22:264 reduce
  4:264 reduce
  36:0 reduce
  28:264,target 29
  15:x,target 27
  6:0,target 6
  0:275,target 12
  0:269 shift
  24:264 shift
  20:0 reduce
  19:0 reduce
  6:264 reduce
  2:0 reduce
  0:272 shift
  26:264 reduce
  23:264,target 13
  8:264 reduce
  5:264,target 3
  0:273 shift
  9:269,target 21
  0:274 goto
  28:264 reduce
  15:x shift
  9:279,target 23
  6:0 reduce
  0:275 goto
  31:263 shift
  15:y shift
  8:267 shift
  0:264,target 10
  0:276 goto
  8:268 shift
  0:274,target 11
  33:0,target 26
  8:270 shift
  0:278 goto
  33:264 reduce
  28:0 reduce
  25:0,target 28
  15:282 goto
  12:264,target 12
  7:0,target 15
  12:0 reduce
  8:272 shift
  0:0,target 10
  32:264,target 25
  10:0,target 16
  33:0 reduce
  17:263,target 31
  26:264,target 30
  8:264,target 20
  0:273,target 10
  34:0,target 21
  21:264,target 17
  8:280 goto
  3:264,target 2
  26:0,target 30
  21:0 reduce
  8:0,target 20
  3:0 reduce
  1:0,target 1
  11:0,target 11
  10:264 reduce
  0:262,target 6
  0:272,target 9
  25:0 reduce
  12:264 reduce
  7:0 reduce
  10:264,target 16
  18:265,target 32
  14:264 reduce
  30:264,target 24
  29:264,target 22
  16:263 shift
  15:Y,target 26
  9:266,target 20
  35:0,target 9
  30:0 reduce
  29:0 reduce
  27:0,target 27
  13:0 accept
  0:261,target 5
  24:264,target 35
  20:0,target 18
  19:0,target 14
  6:264,target 6
  1:264 reduce
  2:0,target 4
  18:265 shift
  12:0,target 12
  8:272,target 18
  34:0 reduce
  21:264 reduce
  3:264 reduce
  0:0 reduce
  1:264,target 1
  23:264 reduce
  15:X,target 25
  5:264 reduce
  25:264 reduce
  18:271 shift
  7:264 reduce
  0:259,target 3
  0:260,target 4
  36:0,target 23
  22:0 reduce
  0:269,target 8
  4:0 reduce
  33:264,target 26
  28:0,target 29
  27:264 reduce
  15:282,target 29
  14:277 goto
  21:0,target 17
  15:X shift
  3:0,target 2
  30:264 reduce
  29:264 reduce
  15:Y shift
  13:0,target 0
  9:266 shift
  27:264,target 27
  26:0 reduce
  14:277,target 24
  8:0 reduce
  32:264 reduce
  10:0 reduce
  9:269 shift
  0:258,target 2
  34:264 reduce
  22:264,target 19
  4:264,target 5
  18:281 goto
  8:270,target 17
  0:278,target 14
  36:264 reduce
  14:0 reduce
  9:273 shift
  8:280,target 19
  30:0,target 24
  29:0,target 22
  22:0,target 19
  4:0,target 5
  36:264,target 23
  35:0 reduce
  14:0,target 7
  9:273,target 22
  11:264,target 11
  0:257,target 1
  1:0 reduce
  9:279 goto
  8:268,target 16
  23:0 reduce
  16:263,target 30
  5:0 reduce
}

array set tile::rules {
  27,l 282
  9,l 276
  11,l 278
  15,l 278
  20,l 280
  19,l 279
  2,l 274
  24,l 280
  6,l 275
  28,l 282
  12,l 278
  16,l 278
  21,l 280
  3,l 274
  25,l 281
  7,l 276
  30,l 282
  29,l 282
  13,l 278
  0,l 283
  17,l 279
  22,l 280
  4,l 275
  26,l 281
  8,l 277
  10,l 278
  14,l 278
  18,l 279
  1,l 274
  23,l 280
  5,l 275
}

array set tile::rules {
  23,dc 3
  5,dc 1
  0,dc 1
  17,dc 1
  12,dc 1
  26,dc 1
  8,dc 0
  21,dc 2
  3,dc 1
  15,dc 1
  10,dc 0
  30,dc 1
  29,dc 1
  24,dc 2
  6,dc 1
  18,dc 1
  1,dc 1
  13,dc 2
  27,dc 1
  9,dc 3
  22,dc 2
  4,dc 1
  16,dc 1
  11,dc 1
  25,dc 1
  7,dc 1
  20,dc 0
  19,dc 1
  2,dc 1
  14,dc 2
  28,dc 1
}

array set tile::rules {
  13,line 59
  25,line 77
  7,line 52
  10,line 56
  22,line 72
  4,line 47
  18,line 66
  1,line 42
  15,line 61
  27,line 81
  9,line 53
  12,line 58
  24,line 74
  6,line 49
  21,line 71
  3,line 44
  17,line 65
  30,line 84
  29,line 83
  14,line 60
  8,e 1
  26,line 78
  8,line 52
  11,line 57
  23,line 73
  5,line 48
  20,line 70
  19,line 67
  2,line 43
  16,line 62
  28,line 82
}

array set tile::lr1_table {
  35 {{9 0 3}}
  36 {{23 {0 264} 3}}
  14,trans {{277 24}}
  33,trans {}
  18,trans {{265 32} {271 33} {281 34}}
  1,trans {}
  23,trans {}
  5,trans {}
  27,trans {}
  9,trans {{266 20} {269 21} {273 22} {279 23}}
  13,trans {}
  32,trans {}
  17,trans {{263 31}}
  0,trans {{257 1} {258 2} {259 3} {260 4} {261 5} {262 6} {266 7} {269 8} {272 9} {273 10} {274 11} {275 12} {276 13} {278 14}}
  36,trans {}
  22,trans {}
  4,trans {}
  26,trans {}
  8,trans {{267 15} {268 16} {270 17} {272 18} {280 19}}
  12,trans {}
  31,trans {{263 36}}
  16,trans {{263 30}}
  35,trans {}
  21,trans {}
  3,trans {}
  10 {{16 {0 264} 1}}
  11 {{11 {0 264} 1}}
  25,trans {}
  12 {{12 {0 264} 1}}
  7,trans {}
  13 {{0 0 1}}
  14 {{7 0 1} {9 0 1} {8 264 0}}
  15 {{22 {0 264} 1} {27 {0 264} 0} {28 {0 264} 0} {29 {0 264} 0} {30 {0 264} 0}}
  11,trans {}
  30,trans {}
  29,trans {}
  16 {{24 {0 264} 1}}
  0 {{0 0 0} {7 0 0} {9 0 0} {10 {0 264} 0} {11 {0 264} 0} {12 {0 264} 0} {13 {0 264} 0} {14 {0 264} 0} {15 {0 264} 0} {16 {0 264} 0} {1 {0 264} 0} {2 {0 264} 0} {3 {0 264} 0} {4 {0 264} 0} {5 {0 264} 0} {6 {0 264} 0}}
  17 {{23 {0 264} 1}}
  1 {{1 {0 264} 1}}
  18 {{21 {0 264} 1} {25 {0 264} 0} {26 {0 264} 0}}
  2 {{4 {0 264} 1}}
  19 {{14 {0 264} 2}}
  20 {{18 {0 264} 1}}
  15,trans {{X 25} {Y 26} {x 27} {y 28} {282 29}}
  34,trans {}
  3 {{2 {0 264} 1}}
  21 {{17 {0 264} 1}}
  4 {{5 {0 264} 1}}
  22 {{19 {0 264} 1}}
  5 {{3 {0 264} 1}}
  23 {{13 {0 264} 2}}
  20,trans {}
  19,trans {}
  6 {{6 {0 264} 1}}
  2,trans {}
  24 {{9 0 2}}
  7 {{15 {0 264} 1}}
  25 {{28 {0 264} 1}}
  8 {{14 {0 264} 1} {20 {0 264} 0} {21 {0 264} 0} {22 {0 264} 0} {23 {0 264} 0} {24 {0 264} 0}}
  26 {{30 {0 264} 1}}
  9 {{13 {0 264} 1} {17 {0 264} 0} {18 {0 264} 0} {19 {0 264} 0}}
  27 {{27 {0 264} 1}}
  24,trans {{264 35}}
  6,trans {}
  28 {{29 {0 264} 1}}
  29 {{22 {0 264} 2}}
  30 {{24 {0 264} 2}}
  31 {{23 {0 264} 2}}
  32 {{25 {0 264} 1}}
  10,trans {}
  28,trans {}
  33 {{26 {0 264} 1}}
  34 {{21 {0 264} 2}}
}

array set tile::token_id_table {
  280,title {}
  279,title {}
  264,line 16
  270,t 0
  269,t 0
  276,line 51
  265,title AUTOMATIC
  274,t 1
  261,line 11
  257,t 0
  270,title LAYOUT
  269,title GRID
  273,line 28
  y,t 0
  278,t 1
  257,line 7
  262,t 0
  274,title {}
  X,line 81
  283,t 1
  270,line 25
  269,line 24
  259,title ON
  260,title OFF
  266,t 0
  y,title {}
  278,title {}
  282,line 80
  error error
  271,t 0
  264,title string
  266,line 21
  283,title {}
  y,line 82
  278,line 55
  275,t 1
  error,line 40
  268,title GAP
  258,t 0
  263,line 14
  X,t 0
  X X
  error,title {}
  Y Y
  280,t 1
  279,t 1
  275,line 46
  273,title ROW
  263,t 0
  259,line 9
  260,line 10
  258,title NO
  x,title {}
  277,title {}
  272,line 27
  267,t 0
  263,title integer
  282,title {}
  272,t 0
  268,line 23
  267,title DIRECTION
  257 YES_
  281,line 76
  276,t 1
  258 NO_
  259,t 0
  259 ON_
  260 OFF_
  260,t 0
  Y,t 0
  272,title MODE
  261 TRUE_
  265,line 20
  262 FALSE_
  281,t 1
  263 INT_
  x,line 80
  277,line 52
  257,title YES
  264 STRING_
  264,t 0
  276,title {}
  265 AUTOMATIC_
  262,line 12
  266 COLUMN_
  Y,title {}
  267 DIRECTION_
  0,t 0
  0 {$}
  262,title FALSE
  268 GAP_
  268,t 0
  281,title {}
  274,line 41
  270 LAYOUT_
  269 GRID_
  error,t 0
  271 MANUAL_
  272 MODE_
  258,line 8
  273,t 0
  273 ROW_
  266,title COLUMN
  Y,line 83
  274 yes
  275 no
  271,line 26
  276 command
  x,t 0
  x x
  277,t 1
  277 @PSEUDO1
  271,title MANUAL
  283,line 85
  y y
  278 tile
  261,t 0
  280 tileGrid
  279 tileMode
  281 tileGridMode
  267,line 22
  282,t 1
  282 tileGridDir
  275,title {}
  283 start'
  265,t 0
  X,title {}
  280,line 69
  279,line 64
  261,title TRUE
}

proc tile::yyparse {} {
    variable yylval
    variable table
    variable rules
    variable token
    variable yycnt
    variable lr1_table
    variable token_id_table
    variable yyerr
    variable save_state

    set yycnt 0
    set state_stack {0}
    set value_stack {{}}
    set token ""
    set accepted 0
    set yyerr 0
    set save_state 0

    while {$accepted == 0} {
        set state [lindex $state_stack end]
        if {$token == ""} {
            set yylval ""
            set token [yylex]
            set buflval $yylval
	    if {$token>0} {
	        incr yycnt
            }
        }
        if {![info exists table($state:$token)] || $yyerr} {
	    if {!$yyerr} {
	        set save_state $state
	    }
            # pop off states until error token accepted
            while {[llength $state_stack] > 0 && \
                       ![info exists table($state:error)]} {
                set state_stack [lrange $state_stack 0 end-1]
                set value_stack [lrange $value_stack 0 \
                                       [expr {[llength $state_stack] - 1}]]
                set state [lindex $state_stack end]
            }
            if {[llength $state_stack] == 0} {
 
	        set rr { }
                if {[info exists lr1_table($save_state,trans)] && [llength $lr1_table($save_state,trans)] >= 1} {
                    foreach trans $lr1_table($save_state,trans) {
                        foreach {tok_id nextstate} $trans {
			    set ss $token_id_table($tok_id,title)
			    if {$ss != {}} {
			        append rr "$ss, "
                            }
                        }
                    }
                }
		set rr [string trimleft $rr { }]
		set rr [string trimright $rr {, }]
                yyerror "parse error, expecting: $rr"


                return 1
            }
            lappend state_stack [set state $table($state:error,target)]
            lappend value_stack {}
            # consume tokens until it finds an acceptable one
            while {![info exists table($state:$token)]} {
                if {$token == 0} {
                    yyerror "end of file while recovering from error"
                    return 1
                }
                set yylval {}
                set token [yylex]
                set buflval $yylval
            }
            continue
        }
        switch -- $table($state:$token) {
            shift {
                lappend state_stack $table($state:$token,target)
                lappend value_stack $buflval
                set token ""
            }
            reduce {
                set rule $table($state:$token,target)
                set ll $rules($rule,l)
                if {[info exists rules($rule,e)]} {
                    set dc $rules($rule,e)
                } else {
                    set dc $rules($rule,dc)
                }
                set stackpointer [expr {[llength $state_stack]-$dc}]
                setupvalues $value_stack $stackpointer $dc
                set _ $1
                set yylval [lindex $value_stack end]
                switch -- $rule {
                    1 { set _ 1 }
                    2 { set _ 1 }
                    3 { set _ 1 }
                    4 { set _ 0 }
                    5 { set _ 0 }
                    6 { set _ 0 }
                    8 { global ds9; if {!$ds9(init)} {YYERROR} else {yyclearin; YYACCEPT} }
                    10 { ProcessCmdSet current display tile DisplayMode }
                    11 { ProcessCmdSet current display tile DisplayMode }
                    12 { ProcessCmdSet current display single DisplayMode }
                    13 { ProcessCmdSet tile mode $2 DisplayMode }
                    15 { ProcessCmdSet tile mode column DisplayMode }
                    16 { ProcessCmdSet tile mode row DisplayMode }
                    17 { set _ grid }
                    18 { set _ column }
                    19 { set _ row }
                    20 { ProcessCmdSet tile mode grid DisplayMode }
                    21 { ProcessCmdSet tile grid,mode $2 DisplayMode }
                    22 { ProcessCmdSet tile grid,dir $2 DisplayMode }
                    23 { ProcessCmdSet tile grid,col $2; ProcessCmdSet tile grid,row $3; ProcessCmdSet tile grid,mode manual DisplayMode }
                    24 { ProcessCmdSet tile grid,gap $2 DisplayMode }
                    25 { set _ automatic }
                    26 { set _ manual }
                    27 { set _ x }
                    28 { set _ x }
                    29 { set _ y }
                    30 { set _ y }
                }
                unsetupvalues $dc
                # pop off tokens from the stack if normal rule
                if {![info exists rules($rule,e)]} {
                    incr stackpointer -1
                    set state_stack [lrange $state_stack 0 $stackpointer]
                    set value_stack [lrange $value_stack 0 $stackpointer]
                }
                # now do the goto transition
                lappend state_stack $table([lindex $state_stack end]:$ll,target)
                lappend value_stack $_
            }
            accept {
                set accepted 1
            }
            goto -
            default {
                puts stderr "Internal parser error: illegal command $table($state:$token)"
                return 2
            }
        }
    }
    return 0
}

######
# end autogenerated taccle functions
######

proc tile::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}
