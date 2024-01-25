#!/usr/bin/tclsh

# Many ways to create a list.

set myList1 [list a b c];

set myList2 "a b c";

set myList3 {a b c};

# set myList [list $a $b $c];
# set myList {$a $b $c};

puts "$myList1";
puts "$myList2";
puts "$myList3"; 