package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval graphsend {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc graphsend::YYABORT {} {
    return -code return 1
}

proc graphsend::YYACCEPT {} {
    return -code return 0
}

proc graphsend::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc graphsend::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc graphsend::yyerror {s} {
    puts stderr $s
}

proc graphsend::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc graphsend::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set graphsend::table {
  6:0 reduce
  3:0,target 5
  0:257 shift
  7:0 reduce
  0:264,target 7
  0:258 shift
  8:0 reduce
  5:0,target 1
  0:259 shift
  10:0 accept
  9:0 reduce
  0:266,target 9
  0:261 shift
  7:0,target 7
  0:262 shift
  0:258,target 2
  0:263 shift
  10:0,target 0
  9:0,target 9
  0:264 shift
  0:261,target 4
  2:0,target 3
  0:265 shift
  0:266 shift
  0:263,target 6
  4:0,target 4
  0:267 goto
  0:265,target 8
  6:0,target 6
  1:0 reduce
  0:257,target 1
  2:0 reduce
  0:267,target 10
  8:0,target 8
  3:0 reduce
  0:259,target 3
  4:0 reduce
  1:0,target 2
  5:0 reduce
  0:262,target 5
}

array set graphsend::rules {
  9,l 267
  2,l 267
  6,l 267
  3,l 267
  7,l 267
  0,l 268
  4,l 267
  8,l 267
  1,l 267
  5,l 267
}

array set graphsend::rules {
  5,dc 1
  0,dc 1
  8,dc 1
  3,dc 1
  6,dc 1
  1,dc 1
  9,dc 1
  4,dc 1
  7,dc 1
  2,dc 1
}

array set graphsend::rules {
  7,line 30
  4,line 27
  1,line 24
  9,line 32
  6,line 29
  3,line 26
  8,line 31
  5,line 28
  2,line 25
}

array set graphsend::lr1_table {
  0 {{0 0 0} {1 0 0} {2 0 0} {3 0 0} {4 0 0} {5 0 0} {6 0 0} {7 0 0} {8 0 0} {9 0 0}}
  1 {{2 0 1}}
  2 {{3 0 1}}
  3 {{5 0 1}}
  4 {{4 0 1}}
  0,trans {{257 1} {258 2} {259 3} {261 4} {262 5} {263 6} {264 7} {265 8} {266 9} {267 10}}
  1,trans {}
  5 {{1 0 1}}
  2,trans {}
  6 {{6 0 1}}
  3,trans {}
  7 {{7 0 1}}
  4,trans {}
  8 {{8 0 1}}
  5,trans {}
  9 {{9 0 1}}
  10 {{0 0 1}}
  6,trans {}
  7,trans {}
  8,trans {}
  10,trans {}
  9,trans {}
}

array set graphsend::token_id_table {
  264,line 17
  265,title SIZE
  261,line 11
  257,t 0
  257,line 7
  262,t 0
  259,title FONTSLANT
  260,title FONTSTYLE
  266,t 0
  264,title METHOD
  266,line 19
  error error
  268,title {}
  error,line 22
  258,t 0
  263,line 16
  error,title {}
  263,t 0
  259,line 9
  260,line 10
  258,title FONTSIZE
  267,t 1
  263,title LOG
  268,line 33
  267,title {}
  257 FONT_
  258 FONTSIZE_
  259,t 0
  259 FONTSLANT_
  260 FONTSTYLE_
  260,t 0
  261 FONTWEIGHT_
  265,line 18
  262 GRID_
  263 LOG_
  257,title FONT
  264 METHOD_
  264,t 0
  265 SIZE_
  262,line 15
  266 THICKNESS_
  267 graphsend
  268,t 1
  268 start'
  262,title GRID
  0 {$}
  0,t 0
  error,t 0
  258,line 8
  266,title THICKNESS
  261,t 0
  267,line 23
  265,t 0
  261,title FONTWEIGHT
}

proc graphsend::yyparse {} {
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
                    1 { ProcessSendCmdYesNo graph grid }
                    2 { ProcessSendCmdGet graph font }
                    3 { ProcessSendCmdGet graph font,size }
                    4 { ProcessSendCmdGet graph font,weight }
                    5 { ProcessSendCmdGet graph font,slant }
                    6 { ProcessSendCmdYesNo graph log }
                    7 { ProcessSendCmdGet graph method }
                    8 { ProcessSendCmdGet graph size }
                    9 { ProcessSendCmdGet graph thick }
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

proc graphsend::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}
