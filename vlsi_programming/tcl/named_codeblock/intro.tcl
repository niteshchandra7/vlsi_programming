#!/usr/bin/tclsh
set Script {
    set Number1 11;
    set Number2 34;
    set Result [expr $Number1 + $Number2];
}
eval $Script;
puts $Number1;
puts $Number2;
puts $Result;