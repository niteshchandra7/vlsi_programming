#!/usr/bin/tclsh

for {set i 0} {$i < 10} {incr i 1} {
    puts "I am at count $i and going up";
    after 200;
    update;
}