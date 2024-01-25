#!/usr/bin/tclsh

set mlst [split "/home/msg/Documents/TCL_Test" "/"];

puts $mlst;

foreach folder $mlst {
    puts "$folder";
}

set lst [list 0 1 2 3 4 5 6 7];
puts $lst;

foreach num $lst {
    puts [expr $num+1];
}

puts [lindex $lst 3]; # pulls out value at index 3;

set lst2 [concat $lst {8 9 10}];
puts $lst2;

lappend lst2 11 12 13 14;
puts $lst2;

lset lst2 end 15;
puts $lst2;

set len [llength $lst2]
puts $len;