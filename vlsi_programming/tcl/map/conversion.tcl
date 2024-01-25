#!/usr/bin/tclsh

array set colorcount {
    red 1 
    green 5
    blue 4
    white 9
}
puts [$colorcount red];

set h2l [array get colorcount];
puts "$h2l\n";


array set l2h $h2l;

foreach elem [array names l2h] {
    puts "$elem:$l2h($elem)";
}