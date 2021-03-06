package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval prefssend {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc prefssend::YYABORT {} {
    return -code return 1
}

proc prefssend::YYACCEPT {} {
    return -code return 0
}

proc prefssend::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc prefssend::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc prefssend::yyerror {s} {
    puts stderr $s
}

proc prefssend::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc prefssend::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set prefssend::table {
  0:257 shift
  0:258 shift
  23:0,target 13
  17:259 shift
  0:260 shift
  15:0,target 6
  9:0 reduce
  0:261 shift
  0:266,target 9
  11:0 reduce
  0:262 shift
  11:270 goto
  0:263 shift
  0:264 shift
  1:259,target 11
  18:269,target 24
  0:265 shift
  1:270,target 12
  15:0 reduce
  0:266 shift
  0:267 goto
  0:265,target 8
  24:0,target 12
  17:269 goto
  6:0,target 11
  4:271,target 16
  20:0 reduce
  19:0 reduce
  16:0,target 5
  2:0 reduce
  2:270 goto
  22:269 goto
  24:0 reduce
  4:271 goto
  6:0 reduce
  0:264,target 7
  22:269,target 25
  25:0,target 14
  7:0,target 8
  17:0,target 15
  12:0 reduce
  10:0,target 0
  11:270,target 20
  0:263,target 6
  16:0 reduce
  14:271,target 21
  21:0 reduce
  8:0,target 9
  3:0 reduce
  18:0,target 15
  1:0,target 16
  11:0,target 16
  0:262,target 5
  2:270,target 13
  25:0 reduce
  7:0 reduce
  1:259 shift
  3:259 shift
  5:257 shift
  13:0 reduce
  9:0,target 10
  0:261,target 4
  5:258 shift
  20:0,target 4
  19:0,target 1
  2:0,target 16
  12:0,target 3
  14:271 goto
  17:0 reduce
  18:269 goto
  1:270 goto
  17:259,target 22
  0:260,target 3
  22:0 reduce
  17:269,target 23
  4:0 reduce
  3:271 goto
  5:268 goto
  21:0,target 7
  3:0,target 17
  13:0,target 2
  5:258,target 18
  8:0 reduce
  3:271,target 15
  5:268,target 19
  10:0 accept
  0:258,target 2
  14:0 reduce
  3:259,target 14
  5:257,target 17
  22:0,target 15
  4:0,target 17
  14:0,target 17
  18:0 reduce
  0:257,target 1
  1:0 reduce
  0:267,target 10
  23:0 reduce
}

array set prefssend::rules {
  9,l 267
  11,l 267
  15,l 269
  2,l 267
  6,l 267
  12,l 268
  16,l 270
  3,l 267
  7,l 267
  13,l 268
  0,l 272
  17,l 271
  4,l 267
  8,l 267
  10,l 267
  14,l 268
  1,l 267
  5,l 267
}

array set prefssend::rules {
  5,dc 2
  0,dc 1
  17,dc 0
  12,dc 2
  8,dc 1
  3,dc 2
  15,dc 0
  10,dc 1
  6,dc 2
  1,dc 2
  13,dc 2
  9,dc 1
  4,dc 3
  16,dc 0
  11,dc 1
  7,dc 3
  2,dc 2
  14,dc 3
}

array set prefssend::rules {
  13,line 38
  7,line 30
  10,line 33
  4,line 26
  1,line 23
  15,line 42
  9,line 32
  12,line 37
  6,line 28
  3,line 25
  17,line 48
  14,line 39
  8,line 31
  11,line 34
  5,line 27
  2,line 24
  16,line 45
}

array set prefssend::lr1_table {
  14,trans {{271 21}}
  1,trans {{259 11} {270 12}}
  18,trans {{269 24}}
  23,trans {}
  5,trans {{257 17} {258 18} {268 19}}
  9,trans {}
  13,trans {}
  0,trans {{257 1} {258 2} {260 3} {261 4} {262 5} {263 6} {264 7} {265 8} {266 9} {267 10}}
  17,trans {{259 22} {269 23}}
  22,trans {{269 25}}
  4,trans {{271 16}}
  8,trans {}
  12,trans {}
  16,trans {}
  3,trans {{259 14} {271 15}}
  21,trans {}
  10 {{0 0 1}}
  11 {{4 0 2} {16 0 0}}
  25,trans {}
  12 {{3 0 2}}
  7,trans {}
  13 {{2 0 2}}
  14 {{7 0 2} {17 0 0}}
  15 {{6 0 2}}
  11,trans {{270 20}}
  16 {{5 0 2}}
  0 {{0 0 0} {1 0 0} {2 0 0} {3 0 0} {4 0 0} {5 0 0} {6 0 0} {7 0 0} {8 0 0} {9 0 0} {10 0 0} {11 0 0}}
  17 {{13 0 1} {14 0 1} {15 0 0}}
  1 {{3 0 1} {4 0 1} {16 0 0}}
  18 {{12 0 1} {15 0 0}}
  2 {{2 0 1} {16 0 0}}
  19 {{1 0 2}}
  20 {{4 0 3}}
  15,trans {}
  3 {{6 0 1} {7 0 1} {17 0 0}}
  21 {{7 0 3}}
  4 {{5 0 1} {17 0 0}}
  22 {{14 0 2} {15 0 0}}
  5 {{1 0 1} {12 0 0} {13 0 0} {14 0 0}}
  23 {{13 0 2}}
  6 {{11 0 1}}
  2,trans {{270 13}}
  24 {{12 0 2}}
  19,trans {}
  20,trans {}
  7 {{8 0 1}}
  25 {{14 0 3}}
  8 {{9 0 1}}
  9 {{10 0 1}}
  24,trans {}
  6,trans {}
  10,trans {}
}

array set prefssend::token_id_table {
  264,line 16
  270,t 1
  269,t 1
  265,title THEME
  261,line 12
  257,t 0
  270,title {}
  269,title {}
  257,line 8
  262,t 0
  270,line 44
  269,line 41
  259,title COLOR
  260,title NAN
  266,t 0
  271,t 1
  264,title PRECISION
  266,line 18
  error error
  268,title {}
  error,line 21
  258,t 0
  263,line 15
  error,title {}
  263,t 0
  259,line 10
  260,line 11
  258,title BGCOLOR
  272,line 49
  267,t 1
  263,title IRAFALIGN
  272,t 1
  268,line 36
  267,title {}
  257 BACKGROUND_
  258 BGCOLOR_
  259,t 0
  259 COLOR_
  260 NAN_
  260,t 0
  272,title {}
  261 NANCOLOR_
  265,line 17
  262 HAS_
  263 IRAFALIGN_
  257,title BACKGROUND
  264 PRECISION_
  264,t 0
  265 THEME_
  262,line 14
  266 THREADS_
  267 prefssend
  268,t 1
  268 has
  262,title HAS
  0 {$}
  0,t 0
  270 bg
  269 hasbg
  271 nan
  error,t 0
  272 start'
  258,line 9
  266,title THREADS
  271,line 47
  271,title {}
  261,t 0
  267,line 22
  265,t 0
  261,title NANCOLOR
}

proc prefssend::yyparse {} {
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
                    8 { PrefsSendCmdPrecision }
                    9 { ProcessSendCmdGet pds9 theme }
                    10 { ProcessSendCmdGet ds9 threads }
                    11 { ProcessSendCmdYesNo pds9 iraf }
                    15 { ProcessSendCmdYesNo pds9 bg,use }
                    16 { ProcessSendCmdGet pds9 bg }
                    17 { ProcessSendCmdGet pds9 nan }
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

proc prefssend::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}
