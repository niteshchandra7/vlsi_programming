#!/usr/bin/tclsh

# List of List

set b [list a b {c d e} {f {g h}} ];
foreach elem $b {
    puts $elem;
}
puts $b;

set b [split "a b {c d e} {f {g h}}"];
puts "Transformed by split: $b";

set a [concat a b {c d e} {f {g h}}]
puts "Concatenated: $a";

lappend a {ij K lm}
puts "After lappending: $a";

set b [linsert $a 3 "1 2 3"]; # "1 2 3" is a single element
puts "After insert at position 3: $b";

set b [lreplace $b 3 5 "AA" "BB"];
puts "After lreplacing 3 positions with 2 values at position 3: $b";


puts [lsearch $b a]; # return >=0 if true else negative number

