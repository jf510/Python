package provide DS9 1.0

######
# Begin autogenerated taccle (version 1.3) routines.
# Although taccle itself is protected by the GNU Public License (GPL)
# all user-supplied functions are protected by their respective
# author's license.  See http://mini.net/tcl/taccle for other details.
######

namespace eval analysissend {
    variable yylval {}
    variable table
    variable rules
    variable token {}
    variable yycnt 0
    variable yyerr 0
    variable save_state 0

    namespace export yylex
}

proc analysissend::YYABORT {} {
    return -code return 1
}

proc analysissend::YYACCEPT {} {
    return -code return 0
}

proc analysissend::YYERROR {} {
    variable yyerr
    set yyerr 1
}

proc analysissend::yyclearin {} {
    variable token
    variable yycnt
    set token {}
    incr yycnt -1
}

proc analysissend::yyerror {s} {
    puts stderr $s
}

proc analysissend::setupvalues {stack pointer numsyms} {
    upvar 1 1 y
    set y {}
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        set y [lindex $stack $pointer]
        incr pointer
    }
}

proc analysissend::unsetupvalues {numsyms} {
    for {set i 1} {$i <= $numsyms} {incr i} {
        upvar 1 $i y
        unset y
    }
}

array set analysissend::table {
  3:268,target 14
  0:258 shift
  0:259 shift
  0:260 shift
  5:0,target 6
  0:261 shift
  9:0 reduce
  11:0 reduce
  0:264 shift
  2:262 shift
  3:257,target 8
  0:265 shift
  2:263 shift
  3:267,target 13
  15:257,target 16
  0:265,target 6
  2:263,target 10
  0:269 goto
  6:0,target 7
  16:0,target 3
  2:0 reduce
  2:271 goto
  3:266,target 12
  6:0 reduce
  0:264,target 5
  2:262,target 9
  1:257,target 8
  7:0,target 0
  0:0,target 1
  10:0,target 14
  13:257,target 10
  16:0 reduce
  2:271,target 11
  12:257 reduce
  14:257 reduce
  8:0,target 2
  11:0,target 5
  1:257 shift
  7:0 accept
  3:257 reduce
  9:0,target 13
  0:261,target 4
  2:0,target 12
  0:0 reduce
  3:266 shift
  3:267 shift
  0:260,target 3
  0:259,target 2
  3:268 shift
  0:269,target 7
  3:270 goto
  4:0 reduce
  14:257,target 11
  8:0 reduce
  10:0 reduce
  0:258,target 1
  3:270,target 15
  4:0,target 4
  13:257 reduce
  15:257 shift
  12:257,target 9
  5:0 reduce
}

array set analysissend::rules {
  9,l 270
  11,l 270
  2,l 269
  6,l 269
  12,l 271
  3,l 269
  7,l 269
  13,l 271
  0,l 272
  4,l 269
  8,l 270
  10,l 270
  14,l 271
  1,l 269
  5,l 269
}

array set analysissend::rules {
  5,dc 2
  0,dc 1
  12,dc 0
  8,dc 0
  3,dc 3
  10,dc 1
  6,dc 1
  1,dc 0
  13,dc 1
  9,dc 1
  4,dc 1
  11,dc 1
  7,dc 1
  2,dc 2
  14,dc 1
}

array set analysissend::rules {
  13,line 43
  7,line 33
  10,line 38
  4,line 30
  1,line 27
  9,line 37
  12,line 42
  6,line 32
  3,line 29
  14,line 44
  8,line 36
  11,line 39
  5,line 31
  2,line 28
}

array set analysissend::lr1_table {
  13,trans {}
  0 {{0 0 0} {1 0 0} {2 0 0} {3 0 0} {4 0 0} {5 0 0} {6 0 0} {7 0 0}}
  14,trans {}
  1 {{2 0 1}}
  15,trans {{257 16}}
  2 {{5 0 1} {12 0 0} {13 0 0} {14 0 0}}
  16,trans {}
  3 {{3 0 1} {8 257 0} {9 257 0} {10 257 0} {11 257 0}}
  4 {{4 0 1}}
  0,trans {{258 1} {259 2} {260 3} {261 4} {264 5} {265 6} {269 7}}
  5 {{6 0 1}}
  1,trans {{257 8}}
  2,trans {{262 9} {263 10} {271 11}}
  6 {{7 0 1}}
  3,trans {{266 12} {267 13} {268 14} {270 15}}
  7 {{0 0 1}}
  4,trans {}
  8 {{2 0 2}}
  5,trans {}
  10 {{14 0 1}}
  9 {{13 0 1}}
  6,trans {}
  11 {{5 0 2}}
  7,trans {}
  12 {{9 257 1}}
  8,trans {}
  13 {{10 257 1}}
  10,trans {}
  9,trans {}
  14 {{11 257 1}}
  11,trans {}
  15 {{3 0 2}}
  16 {{3 0 3}}
  12,trans {}
}

array set analysissend::token_id_table {
  264,line 17
  270,t 1
  269,t 1
  265,title LOCK
  261,line 14
  257,t 0
  270,title {}
  269,title {}
  257,line 7
  262,t 0
  270,line 35
  269,line 26
  259,title FILEDIALOG
  260,title MESSAGE
  266,t 0
  271,t 1
  error error
  264,title TASK
  266,line 20
  error,line 25
  268,title YESNO
  258,t 0
  263,line 16
  error,title {}
  263,t 0
  259,line 12
  260,line 13
  258,title ENTRY
  272,line 45
  267,t 0
  263,title SAVE
  272,t 1
  268,line 22
  267,title OKCANCEL
  257 STRING_
  258 ENTRY_
  259,t 0
  259 FILEDIALOG_
  260 MESSAGE_
  260,t 0
  272,title {}
  261 MODE_
  265,line 18
  262 OPEN_
  263 SAVE_
  257,title string
  264 TASK_
  264,t 0
  265 LOCK_
  262,line 15
  266 OK_
  267 OKCANCEL_
  0,t 0
  0 {$}
  262,title OPEN
  268 YESNO_
  268,t 0
  270 type
  269 analysissend
  271 which
  error,t 0
  272 start'
  258,line 11
  266,title OK
  271,line 41
  271,title {}
  261,t 0
  267,line 21
  265,t 0
  261,title MODE
}

proc analysissend::yyparse {} {
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
                    1 { AnalysisSendCmd }
                    2 { AnalysisSendCmdEntry $2 }
                    3 { AnalysisSendCmdMessage $2 $3 }
                    4 { ProcessSendCmdGet ime task }
                    5 { AnalysisSendCmdFileDialog $2 }
                    6 { AnalysisSendCmdTask }
                    7 { ProcessSendCmdGet ime lock }
                    8 { set _ ok }
                    9 { set _ ok }
                    10 { set _ okcancel }
                    11 { set _ yesno }
                    12 { set _ open }
                    13 { set _ open }
                    14 { set _ save }
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

proc analysissend::yyerror {msg} {
     variable yycnt
     variable yy_current_buffer
     variable index_

     ParserError $msg $yycnt $yy_current_buffer $index_
}