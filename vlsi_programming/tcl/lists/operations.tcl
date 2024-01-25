#!/usr/bin/tclsh

set testList "a b c";

# Accessing the elements by index

puts [lindex $testList 0];
puts [lindex $testList end];

lappend testList "d";
puts $testList;

set testList [linsert $testList 0 "e"]; # entry from LHS
puts $testList;

# Replace a single element 
set testList [lreplace $testList 2 2 "k"];
puts $testList;

set testList [lreplace $testList end end "i"];
puts $testList;

