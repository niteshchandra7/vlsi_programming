#!/usr/bin/tclsh

set x "a b c";
puts "item at index 2 of the list {$x} is: [lindex $x 2]";

set idx 0
foreach elem $x {
    puts "$idx:$elem";
    incr idx 1;
}

