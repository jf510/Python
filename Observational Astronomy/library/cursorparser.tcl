package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval cursor {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc cursor::YYABORT {} {
    return -code return 1
}

proc cursor::YYACCEPT {} {
    return -code return 0
}

proc cursor::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc cursor::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc cursor::yyerror {s} {
    puts stderr $s
}

proc cursor::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc cursor::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set cursor::table {
  6:0 reduce
  3:0,target 1
  0:257 shift
  5:258,target 6
  1:257 shift
  0:259 goto
  0:261 goto
  3:258 reduce
  1:257,target 4
  4:258 reduce
  3:260 goto
  5:258 shift
  0:261,target 3
  2:0,target 0
  4:258,target 4
  3:260,target 5
  4:0,target 4
  6:0,target 3
  0:257,target 1
  2:0 accept
  0:259,target 2
  3:0 reduce
  4:0 reduce
  3:258,target 2
}

array set cursor::rules {
  0,l 262
  1,l 259
  2,l 260
  3,l 259
  4,l 261
}

array set cursor::rules {
  0,dc 1
  2,dc 0
  4,dc 2
  1,dc 1
  3,dc 3
}

array set cursor::rules {
  2,e 1
  2,line 16
  4,line 20
  1,line 16
  3,line 17
}

array set cursor::lr1_table {
  0 {{0 0 0} {1 0 0} {3 0 0} {4 {0 258} 0}}
  1 {{4 {0 258} 1}}
  2 {{0 0 1}}
  3 {{1 0 1} {3 0 1} {2 258 0}}
  0,trans {{257 1} {259 2} {261 3}}
  4 {{4 {0 258} 2}}
  1,trans {{257 4}}
  5 {{3 0 2}}
  2,trans {}
  6 {{3 0 3}}
  3,trans {{260 5}}
  4,trans {}
  5,trans {{258 6}}
  6,trans {}
}

array set cursor::token_id_table {
  262,title {}
  0 {$}
  0,t 0
  error,t 0
  error error
  258,line 9
  261,line 19
  error,line 14
  257 INT_
  257,t 0
  258 STRING_
  258,t 0
  260,t 1
  260 @PSEUDO1
  259,t 1
  259 command
  error,title {}
  261,t 1
  261 cursor
  262,t 1
  262 start'
  257,line 7
  260,line 16
  259,line 15
  257,title integer
  258,title string
  262,line 21
  260,title {}
  259,title {}
  261,title {}
}

proc cursor::yyparse {} {
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
                    4 { CursorCmd $1 $2 }
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

proc cursor::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}
