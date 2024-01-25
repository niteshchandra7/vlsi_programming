#!/usr/bin/tclsh

proc add {a b} {
    return [expr $a+$b];
}

set sum [add 2 3];
puts $sum;


proc separator {} {
    puts "=======================";
}

separator;