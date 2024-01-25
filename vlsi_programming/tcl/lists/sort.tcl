#!/usr/bin/tclsh

set lst2 {0 1 2 3 4 5 6 7 8 9 10 11 12 13 15};

set lst2 [lsort -ascii $lst2]; #sort as ascii
puts $lst2;

set lst2 [lsort -integer  $lst2]; #sort as integer.
puts $lst2;

set lst2 [lsort -integer -decreasing $lst2]; #sort as integer in a decreasing manner.
puts $lst2;

set lst2 [lsort -dictionary $lst2]; #sort as dictionary.
puts $lst2;

set rlst "0.01 0.002 0.2 0.4 0.5 0.3 0.0015 9.345 77.45 2.387 ";

set rlst [lsort -real $rlst];
puts $rlst;

set rlst [lsort -real -decreasing $rlst];
puts $rlst;