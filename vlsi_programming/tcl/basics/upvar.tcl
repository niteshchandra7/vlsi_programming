#!/usr/bin/tclsh

# The upvar coomand "ties" (makes an alias) the name of a variable in the current scope
# to a variable in a different scope.

# This is commonly used to simulate pass-by-reference to procs.


proc SetPositive { variable value } {
    upvar $variable myvar;
    if {$value < 0} {
        set myvar [expr {-$value}];
    } else {
        set myvar $value;
    }
    return 1
}

set a -30;

SetPositive a -30;
puts $a;

