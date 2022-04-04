package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval skyview {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc skyview::YYABORT {} {
    return -code return 1
}

proc skyview::YYACCEPT {} {
    return -code return 0
}

proc skyview::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc skyview::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc skyview::yyerror {s} {
    puts stderr $s
}

proc skyview::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc skyview::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set skyview::table {
  9:283 shift
  10:280,target 37
  30:283 reduce
  29:283 reduce
  38:281,target 11
  27:0 reduce
  48:0 reduce
  3:267,target 20
  51:283,target 38
  38:281 shift
  38:282 shift
  7:283,target 1
  41:287,target 50
  0:275,target 9
  11:282,target 19
  40:283,target 49
  39:283,target 8
  6:266 shift
  7:262,target 33
  56:0,target 13
  6:268 shift
  24:0 reduce
  48:0,target 36
  38:291 goto
  47:283 reduce
  41:0,target 10
  45:0 reduce
  33:0,target 7
  2:282,target 12
  28:283,target 2
  0:294,target 17
  25:0,target 41
  17:0,target 21
  17:283 reduce
  0:273,target 7
  56:283 reduce
  17:283,target 22
  7:259,target 30
  7:260,target 31
  21:0 reduce
  14:291,target 38
  26:283 reduce
  42:0 reduce
  17:293 goto
  52:283,target 16
  2:280,target 18
  0:292,target 16
  6:295,target 27
  12:282,target 20
  35:281 shift
  35:282 shift
  41:283,target 10
  0:271,target 5
  11:277,target 19
  6:295 goto
  7:257,target 28
  17:0 reduce
  3:267 shift
  30:283,target 3
  29:283,target 5
  35:291 goto
  3:270 shift
  44:283 reduce
  43:290,target 56
  8:281,target 11
  35:282,target 12
  14:281 shift
  14:282 shift
  53:0,target 17
  0:268,target 3
  45:0,target 37
  53:283 reduce
  37:0,target 10
  15:291,target 39
  39:276,target 47
  30:0,target 3
  29:0,target 5
  22:0,target 33
  53:283,target 17
  9:283,target 36
  14:291 goto
  4:263,target 23
  23:283 reduce
  56:0 reduce
  42:283,target 8
  3:289 goto
  12:277,target 20
  38:291,target 46
  32:283 reduce
  11:0 reduce
  31:283,target 6
  0:264 shift
  32:0 reduce
  0:265 shift
  41:279 shift
  53:0 reduce
  0:268 shift
  0:269 shift
  11:276 reduce
  41:283 reduce
  0:271 shift
  11:277 reduce
  20:283,target 15
  0:272 shift
  11:278 reduce
  0:273 shift
  0:274 shift
  11:281 reduce
  41:287 goto
  0:275 shift
  11:282 reduce
  0:264,target 1
  11:283 reduce
  54:283,target 18
  50:283 reduce
  0:280 shift
  7:0,target 1
  28:0 reduce
  0:281 shift
  0:0,target 24
  0:282 shift
  14:282,target 12
  50:0 reduce
  49:0 reduce
  0:283 shift
  19:281 shift
  0:284 shift
  19:282 shift
  43:283,target 12
  20:283 reduce
  50:0,target 39
  49:0,target 23
  0:283,target 13
  19:281,target 11
  42:0,target 8
  17:293,target 40
  34:0,target 32
  8:281 shift
  26:0,target 40
  0:291 goto
  8:282 shift
  32:283,target 4
  0:292 goto
  11:0,target 19
  19:291 goto
  0:294 goto
  25:0 reduce
  28:283 reduce
  46:0 reduce
  21:283,target 14
  37:279 shift
  8:291 goto
  0:281,target 11
  37:283 reduce
  42:276,target 47
  0:0 reduce
  55:283,target 30
  37:287 goto
  22:0 reduce
  15:282,target 12
  46:283 reduce
  43:0 reduce
  37:279,target 44
  8:291,target 35
  44:283,target 11
  1:283,target 26
  43:278,target 54
  33:283,target 7
  55:283 reduce
  39:286,target 48
  3:289,target 22
  38:282,target 12
  5:283 reduce
  54:0,target 18
  39:0 reduce
  22:283,target 33
  25:283 reduce
  46:0,target 31
  31:0,target 6
  23:0,target 28
  43:276,target 52
  11:283,target 19
  56:283,target 13
  34:283 reduce
  43:276 shift
  43:277 shift
  43:278 shift
  45:283,target 37
  36:0 reduce
  43:283 reduce
  34:283,target 32
  0:274,target 8
  11:281,target 19
  43:288 goto
  13:283 reduce
  43:290 goto
  7:261,target 32
  12:0 reduce
  52:283 reduce
  2:280 shift
  2:281 shift
  23:283,target 28
  33:0 reduce
  2:282 shift
  2:281,target 11
  54:0 reduce
  19:291,target 42
  22:283 reduce
  12:283,target 20
  1:0,target 26
  2:291 goto
  0:272,target 6
  11:278,target 19
  7:0 reduce
  51:0,target 38
  31:283 reduce
  7:258,target 29
  46:283,target 31
  43:0,target 12
  39:276 shift
  30:0 reduce
  29:0 reduce
  27:0,target 35
  7:257 shift
  20:0,target 15
  51:0 reduce
  7:258 shift
  12:0,target 20
  0:291,target 15
  7:259 shift
  7:260 shift
  8:282,target 12
  7:261 shift
  42:286,target 51
  40:283 shift
  39:283 reduce
  7:262 shift
  12:281,target 20
  10:280 shift
  39:286 goto
  0:269,target 4
  11:276,target 19
  24:283,target 29
  26:0 reduce
  48:283 reduce
  47:0 reduce
  18:280 shift
  43:288,target 55
  13:283,target 27
  35:281,target 11
  12:278,target 20
  1:0 reduce
  41:279,target 44
  47:283,target 9
  4:283,target 24
  7:283 reduce
  23:0 reduce
  37:287,target 45
  7:285 goto
  27:283 reduce
  44:0 reduce
  5:0,target 25
  36:283,target 34
  55:0,target 30
  12:276,target 20
  47:0,target 9
  36:283 reduce
  18:280,target 41
  39:0,target 8
  4:263 shift
  25:283,target 41
  32:0,target 4
  0:265,target 2
  6:268,target 26
  24:0,target 29
  16:0,target 0
  20:0 reduce
  41:0 reduce
  45:283 reduce
  0:284,target 14
  15:281 shift
  19:282,target 12
  15:282 shift
  48:283,target 36
  5:283,target 25
  54:283 reduce
  6:266,target 25
  16:0 accept
  2:291,target 19
  4:283 shift
  37:283,target 10
  37:0 reduce
  15:291 goto
  14:281,target 11
  24:283 reduce
  0:282,target 12
  26:283,target 40
  33:283 reduce
  13:0 reduce
  42:276 shift
  34:0 reduce
  55:0 reduce
  52:0,target 16
  12:276 reduce
  44:0,target 11
  42:283 reduce
  12:277 reduce
  36:0,target 34
  12:278 reduce
  50:283,target 39
  0:280,target 10
  28:0,target 2
  42:286 goto
  12:281 reduce
  21:0,target 14
  12:282 reduce
  13:0,target 27
  12:283 reduce
  51:283 reduce
  31:0 reduce
  15:281,target 11
  1:283 reduce
  52:0 reduce
  35:291,target 43
  3:270,target 21
  21:283 reduce
  7:285,target 34
  27:283,target 35
  43:277,target 53
  5:0 reduce
}

array set skyview::rules {
  9,l 286
  11,l 287
  32,l 294
  6,l 285
  28,l 294
  3,l 285
  25,l 294
  0,l 296
  22,l 293
  18,l 290
  40,l 295
  39,l 294
  15,l 289
  36,l 294
  12,l 288
  33,l 294
  7,l 285
  29,l 294
  30,l 294
  4,l 285
  26,l 294
  1,l 285
  23,l 292
  19,l 291
  20,l 291
  41,l 295
  16,l 290
  37,l 294
  13,l 288
  34,l 294
  8,l 286
  10,l 287
  31,l 294
  5,l 285
  27,l 294
  2,l 285
  24,l 294
  21,l 292
  17,l 290
  38,l 294
  14,l 289
  35,l 294
}

array set skyview::rules {
  12,dc 0
  26,dc 1
  3,dc 1
  41,dc 1
  18,dc 1
  33,dc 2
  9,dc 1
  11,dc 1
  25,dc 1
  2,dc 1
  40,dc 1
  39,dc 4
  17,dc 1
  32,dc 2
  8,dc 0
  10,dc 0
  24,dc 0
  1,dc 0
  38,dc 4
  16,dc 1
  31,dc 3
  7,dc 1
  23,dc 3
  0,dc 1
  37,dc 3
  15,dc 1
  29,dc 2
  30,dc 4
  6,dc 1
  22,dc 0
  36,dc 3
  14,dc 1
  28,dc 2
  5,dc 1
  21,dc 1
  35,dc 2
  13,dc 1
  27,dc 1
  4,dc 1
  19,dc 1
  20,dc 1
  34,dc 2
}

array set skyview::rules {
  41,line 147
  7,line 90
  37,line 141
  4,line 87
  34,line 136
  1,line 84
  31,line 133
  27,line 128
  24,line 125
  21,line 121
  17,line 114
  22,e 1
  14,line 109
  11,line 102
  9,line 98
  40,line 146
  39,line 143
  6,line 89
  36,line 139
  3,line 86
  33,line 135
  29,line 130
  30,line 132
  26,line 127
  23,line 122
  19,line 117
  20,line 118
  16,line 113
  13,line 106
  10,line 101
  8,line 97
  38,line 142
  5,line 88
  35,line 138
  2,line 85
  32,line 134
  28,line 129
  25,line 126
  22,line 121
  18,line 115
  15,line 110
  12,line 105
}

array set skyview::lr1_table {
  35 {{30 {0 283} 2} {19 {0 276 277 278} 0} {20 {0 276 277 278} 0}}
  14,trans {{281 11} {282 12} {291 38}}
  36 {{34 {0 283} 2}}
  33,trans {}
  37 {{37 {0 283} 2} {10 {0 283} 0} {11 {0 283} 0}}
  52,trans {}
  38 {{31 {0 283} 2} {19 {0 283} 0} {20 {0 283} 0}}
  40 {{20 {0 276} 1}}
  39 {{19 {0 276} 1}}
  18,trans {{280 43}}
  41 {{36 {0 283} 2} {8 {0 283} 0} {9 {0 283} 0}}
  1,trans {}
  37,trans {{279 48} {287 49}}
  42 {{23 0 2}}
  56,trans {}
  43 {{39 {0 283} 3} {10 {0 283} 0} {11 {0 283} 0}}
  44 {{38 {0 283} 3} {8 {0 283} 0} {9 {0 283} 0}}
  45 {{19 {0 276 277 278} 1}}
  23,trans {}
  5,trans {}
  42,trans {{283 55}}
  46 {{20 {0 276 277 278} 1}}
  61,trans {}
  47 {{30 {0 283} 3} {12 {0 283} 0} {13 {0 283} 0} {16 {0 283} 0} {17 {0 283} 0} {18 {0 283} 0}}
  48 {{11 {0 283} 1}}
  50 {{19 {0 283} 1}}
  49 {{37 {0 283} 3}}
  27,trans {}
  9,trans {{283 36}}
  46,trans {}
  51 {{20 {0 283} 1}}
  52 {{31 {0 283} 3}}
  53 {{9 {0 283} 1}}
  13,trans {}
  54 {{36 {0 283} 3}}
  32,trans {}
  51,trans {}
  55 {{23 0 3}}
  56 {{39 {0 283} 4}}
  57 {{38 {0 283} 4}}
  17,trans {{293 42}}
  0,trans {{264 1} {265 2} {268 3} {269 4} {271 5} {272 6} {273 7} {274 8} {275 9} {280 10} {281 11} {282 12} {283 13} {284 14} {291 15} {292 16} {294 17}}
  58 {{16 {0 283} 1}}
  36,trans {}
  55,trans {}
  60 {{18 {0 283} 1}}
  59 {{17 {0 283} 1}}
  61 {{30 {0 283} 4}}
  62 {{13 {0 283} 1}}
  22,trans {}
  4,trans {{263 23} {283 24}}
  41,trans {{276 53} {286 54}}
  60,trans {}
  59,trans {}
  26,trans {}
  8,trans {{281 11} {282 12} {291 35}}
  45,trans {}
  12,trans {}
  31,trans {}
  50,trans {}
  49,trans {}
  16,trans {}
  35,trans {{281 45} {282 46} {291 47}}
  54,trans {}
  21,trans {}
  3,trans {{267 20} {270 21} {289 22}}
  40,trans {}
  39,trans {}
  58,trans {}
  10 {{37 {0 283} 1}}
  11 {{19 {281 282} 1}}
  25,trans {}
  12 {{20 {281 282} 1}}
  7,trans {{257 28} {258 29} {259 30} {260 31} {261 32} {262 33} {285 34}}
  44,trans {{276 53} {286 57}}
  13 {{27 {0 283} 1}}
  14 {{31 {0 283} 1} {19 {281 282} 0} {20 {281 282} 0}}
  11,trans {}
  15 {{36 {0 283} 1} {19 {0 276} 0} {20 {0 276} 0}}
  30,trans {}
  29,trans {}
  16 {{0 0 1}}
  48,trans {}
  0 {{0 0 0} {21 0 0} {23 0 0} {24 {0 283} 0} {25 {0 283} 0} {26 {0 283} 0} {27 {0 283} 0} {28 {0 283} 0} {29 {0 283} 0} {30 {0 283} 0} {31 {0 283} 0} {32 {0 283} 0} {33 {0 283} 0} {34 {0 283} 0} {35 {0 283} 0} {36 {0 283} 0} {37 {0 283} 0} {38 {0 283} 0} {39 {0 283} 0} {19 {281 282} 0} {20 {281 282} 0}}
  17 {{21 0 1} {23 0 1} {22 283 0}}
  1 {{26 {0 283} 1}}
  18 {{39 {0 283} 2}}
  15,trans {{281 39} {282 40} {291 41}}
  2 {{38 {0 283} 1} {39 {0 283} 1} {19 {281 282} 0} {20 {281 282} 0}}
  19 {{38 {0 283} 2} {19 {0 276} 0} {20 {0 276} 0}}
  20 {{15 {0 283} 1}}
  34,trans {}
  3 {{33 {0 283} 1} {14 {0 283} 0} {15 {0 283} 0}}
  21 {{14 {0 283} 1}}
  53,trans {}
  4 {{28 {0 283} 1} {29 {0 283} 1}}
  22 {{33 {0 283} 2}}
  5 {{25 {0 283} 1}}
  23 {{28 {0 283} 2}}
  20,trans {}
  19,trans {{281 39} {282 40} {291 44}}
  6 {{35 {0 283} 1} {40 {0 283} 0} {41 {0 283} 0}}
  2,trans {{280 18} {281 11} {282 12} {291 19}}
  24 {{29 {0 283} 2}}
  38,trans {{281 50} {282 51} {291 52}}
  7 {{32 {0 283} 1} {1 {0 283} 0} {2 {0 283} 0} {3 {0 283} 0} {4 {0 283} 0} {5 {0 283} 0} {6 {0 283} 0} {7 {0 283} 0}}
  25 {{41 {0 283} 1}}
  57,trans {}
  8 {{30 {0 283} 1} {19 {281 282} 0} {20 {281 282} 0}}
  26 {{40 {0 283} 1}}
  9 {{34 {0 283} 1}}
  27 {{35 {0 283} 2}}
  24,trans {}
  6,trans {{266 25} {268 26} {295 27}}
  28 {{2 {0 283} 1}}
  43,trans {{279 48} {287 56}}
  29 {{5 {0 283} 1}}
  30 {{3 {0 283} 1}}
  62,trans {}
  31 {{6 {0 283} 1}}
  10,trans {{280 37}}
  32 {{4 {0 283} 1}}
  28,trans {}
  33 {{7 {0 283} 1}}
  47,trans {{276 58} {277 59} {278 60} {288 61} {290 62}}
  34 {{32 {0 283} 2}}
}

array set skyview::token_id_table {
  286,t 1
  286 deg
  280,title SEXSTR
  279,title SEXAGESIMAL
  264,line 15
  292,line 120
  287 sex
  270,t 0
  269,t 0
  288 sizeOpt
  290 rformat
  289 frame
  276,line 28
  265,title COORD
  291,t 1
  291 numeric
  284,title PIXELS
  292 command
  274,t 0
  261,line 11
  293 @PSEUDO1
  288,line 104
  257,t 0
  294 skyview
  270,title NEW
  269,title NAME
  295,t 1
  295 update
  288,title {}
  273,line 24
  296 start'
  278,t 0
  257,line 7
  262,t 0
  285,line 83
  274,title SIZE
  293,title {}
  283,t 0
  270,line 21
  269,line 20
  259,title ON
  260,title OFF
  266,t 0
  278,title ARCSEC
  282,line 37
  287,t 1
  error error
  271,t 0
  264,title CLOSE
  266,line 17
  294,line 124
  283,title string
  292,t 1
  278,line 30
  error,line 82
  275,t 0
  268,title FRAME
  287,title {}
  258,t 0
  263,line 14
  291,line 116
  error,title {}
  296,t 1
  280,t 0
  279,t 0
  275,line 26
  273,title SAVE
  292,title {}
  263,t 0
  259,line 9
  260,line 10
  287,line 100
  258,title NO
  284,t 0
  277,title ARCMIN
  296,title {}
  272,line 23
  267,t 0
  263,title CLEAR
  288,t 1
  284,line 43
  282,title float
  272,t 0
  268,line 19
  296,line 148
  267,title CURRENT
  293,t 1
  286,title {}
  257 YES_
  281,line 36
  276,t 0
  258 NO_
  259,t 0
  259 ON_
  260 OFF_
  260,t 0
  272,title UPDATE
  261 TRUE_
  265,line 16
  293,line 121
  291,title {}
  262 FALSE_
  281,t 0
  263 CLEAR_
  277,line 29
  257,title YES
  264 CLOSE_
  264,t 0
  276,title DEGREES
  265 COORD_
  295,title {}
  262,line 12
  266 CROSSHAIR_
  290,line 112
  289,line 108
  285,t 1
  267 CURRENT_
  0,t 0
  0 {$}
  262,title FALSE
  268 FRAME_
  268,t 0
  281,title integer
  274,line 25
  270 NEW_
  269 NAME_
  error,t 0
  271 OPEN_
  290,t 1
  289,t 1
  272 UPDATE_
  258,line 8
  286,line 96
  273,t 0
  273 SAVE_
  266,title CROSSHAIR
  285,title {}
  274 SIZE_
  275 SURVEY_
  271,line 22
  294,t 1
  276 DEGREES_
  277,t 0
  277 ARCMIN_
  271,title OPEN
  290,title {}
  289,title {}
  283,line 39
  278 ARCSEC_
  261,t 0
  280 SEXSTR_
  279 SEXAGESIMAL_
  281 INT_
  267,line 18
  295,line 145
  282,t 0
  282 REAL_
  275,title SURVEY
  294,title {}
  283 STRING_
  265,t 0
  284 PIXELS_
  280,line 34
  279,line 32
  285 yesno
  261,title TRUE
}

proc skyview::yyparse {} {
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
                    4 { set _ 1 }
                    5 { set _ 0 }
                    6 { set _ 0 }
                    7 { set _ 0 }
                    8 { set _ degrees }
                    9 { set _ degrees }
                    10 { set _ sexagesimal }
                    11 { set _ sexagesimal }
                    12 { set _ degrees }
                    13 { set _ $1 }
                    14 { set _ new }
                    15 { set _ current }
                    16 { set _ degrees }
                    17 { set _ arcmin }
                    18 { set _ arcsec }
                    19 { set _ $1 }
                    20 { set _ $1 }
                    22 { global ds9; if {!$ds9(init)} {YYERROR} else {yyclearin; YYACCEPT} }
                    24 { IMGSVRApply dskyview 1 }
                    26 { ARDestroy dskyview }
                    27 { ProcessCmdSet dskyview name $1 "IMGSVRApply dskyview 1" }
                    28 { ProcessCmdSet dskyview name {} }
                    29 { ProcessCmdSet dskyview name $2 "IMGSVRApply dskyview 1" }
                    30 { ProcessCmdSet4 dskyview width $2 height $3 rformat $4 rformat,msg $4 }
                    31 { ProcessCmdSet2 dskyview width,pixels $2 height,pixels $3 }
                    32 { ProcessCmdSet dskyview save $2 }
                    33 { ProcessCmdSet dskyview mode $2 }
                    34 { ProcessCmdSet dskyview survey $2 }
                    36 { ProcessCmdSet4 dskyview x $1 y $2 skyformat $3 skyformat,msg $3 "IMGSVRApply dskyview 1" }
                    37 { ProcessCmdSet4 dskyview x $1 y $2 skyformat $3 skyformat,msg $3 "IMGSVRApply dskyview 1" }
                    38 { ProcessCmdSet4 dskyview x $2 y $3 skyformat $4 skyformat,msg $4 "IMGSVRApply dskyview 1" }
                    39 { ProcessCmdSet4 dskyview x $2 y $3 skyformat $4 skyformat,msg $4 "IMGSVRApply dskyview 1" }
                    40 { IMGSVRUpdate dskyview; IMGSVRApply dskyview 1 }
                    41 { IMGSVRCrosshair dskyview; IMGSVRApply dskyview 1 }
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

proc skyview::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_
     
     ParserError $msg $yycnt $yy_current_buffer $index_
}
