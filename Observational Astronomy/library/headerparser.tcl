package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval header {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc header::YYABORT {} {
    return -code return 1
}

proc header::YYACCEPT {} {
    return -code return 0
}

proc header::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc header::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc header::yyerror {s} {
    puts stderr $s
}

proc header::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc header::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set header::table {
  0:257 shift
  0:258 reduce
  0:260 shift
  0:259 shift
  2:257 shift
  5:0,target 1
  0:261 goto
  2:258 reduce
  11:0 reduce
  10:258,target 11
  0:263 goto
  0:264 goto
  3:257,target 9
  6:258 reduce
  8:258 reduce
  2:265 goto
  6:258,target 4
  6:0,target 4
  2:0 reduce
  1:258,target 8
  3:266,target 11
  13:258,target 12
  6:0 reduce
  0:264,target 6
  7:0,target 10
  9:258,target 13
  0:0,target 7
  10:0,target 11
  0:263,target 5
  10:258 reduce
  12:258 shift
  5:262,target 12
  8:0,target 5
  11:258,target 6
  1:0,target 8
  11:0,target 6
  7:0 reduce
  1:258 reduce
  7:258,target 10
  3:257 shift
  3:258 shift
  13:0 reduce
  0:261,target 4
  2:258,target 9
  5:258 reduce
  2:0,target 9
  7:258 reduce
  5:262 goto
  9:258 shift
  0:0 reduce
  3:266 goto
  0:260,target 3
  0:259,target 2
  2:257,target 7
  4:0 accept
  13:0,target 12
  5:258,target 2
  8:0 reduce
  10:0 reduce
  0:258,target 7
  14:0 reduce
  12:258,target 14
  4:0,target 0
  14:0,target 3
  11:258 reduce
  0:257,target 1
  1:0 reduce
  8:258,target 5
  2:265,target 8
  13:258 reduce
  3:258,target 10
  5:0 reduce
}

array set header::rules {
  9,l 265
  11,l 266
  2,l 262
  6,l 263
  12,l 266
  3,l 261
  7,l 264
  0,l 267
  4,l 263
  8,l 264
  10,l 265
  1,l 261
  5,l 263
}

array set header::rules {
  5,dc 2
  0,dc 1
  12,dc 2
  8,dc 1
  3,dc 3
  10,dc 1
  6,dc 2
  1,dc 1
  9,dc 0
  4,dc 1
  11,dc 1
  7,dc 0
  2,dc 0
}

array set header::rules {
  2,e 1
  7,line 28
  10,line 33
  4,line 23
  1,line 19
  9,line 32
  12,line 37
  6,line 25
  3,line 20
  8,line 29
  11,line 36
  5,line 24
  2,line 19
}

array set header::lr1_table {
  13,trans {}
  0 {{0 0 0} {1 0 0} {3 0 0} {4 {0 258} 0} {5 {0 258} 0} {6 {0 258} 0} {7 {0 258} 0} {8 {0 258} 0}}
  14,trans {}
  1 {{8 {0 258} 1}}
  2 {{5 {0 258} 1} {9 {0 258} 0} {10 {0 258} 0}}
  3 {{6 {0 258} 1} {11 {0 258} 0} {12 {0 258} 0}}
  4 {{0 0 1}}
  0,trans {{257 1} {259 2} {260 3} {261 4} {263 5} {264 6}}
  5 {{1 0 1} {3 0 1} {2 258 0}}
  1,trans {}
  6 {{4 {0 258} 1}}
  2,trans {{257 7} {265 8}}
  3,trans {{257 9} {258 10} {266 11}}
  7 {{10 {0 258} 1}}
  4,trans {}
  8 {{5 {0 258} 2}}
  5,trans {{262 12}}
  10 {{11 {0 258} 1}}
  9 {{12 {0 258} 1}}
  6,trans {}
  11 {{6 {0 258} 2}}
  7,trans {}
  12 {{3 0 2}}
  13 {{12 {0 258} 2}}
  8,trans {}
  14 {{3 0 3}}
  10,trans {}
  9,trans {{258 13}}
  11,trans {}
  12,trans {{258 14}}
}

array set header::token_id_table {
  264,line 27
  265,title {}
  261,line 18
  257,t 0
  257,line 7
  262,t 1
  259,title CLOSE
  260,title SAVE
  266,t 1
  error error
  264,title {}
  266,line 35
  error,line 17
  258,t 0
  263,line 22
  error,title {}
  263,t 1
  259,line 13
  260,line 14
  258,title string
  267,t 1
  263,title {}
  267,title {}
  257 INT_
  258 STRING_
  259,t 0
  259 CLOSE_
  260 SAVE_
  260,t 0
  261 command
  265,line 31
  262 @PSEUDO1
  263 header
  257,title integer
  264 display
  264,t 1
  265 close
  262,line 19
  266 save
  267 start'
  0 {$}
  0,t 0
  262,title {}
  error,t 0
  258,line 9
  266,title {}
  261,t 1
  267,line 38
  265,t 1
  261,title {}
}

proc header::yyparse {} {
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
                    2 { global ds9; if {!$ds9(init)} {YYERROR} else {yyclearin; YYACCEPT} }
                    5 { CloseHeaderCmd $2 }
                    7 { DisplayHeaderCmd 1 }
                    8 { DisplayHeaderCmd $1 }
                    9 { set _ 1 }
                    10 { set _ $1 }
                    11 { SaveHeaderCmd 1 $1 }
                    12 { SaveHeaderCmd $1 $2 }
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

proc header::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}