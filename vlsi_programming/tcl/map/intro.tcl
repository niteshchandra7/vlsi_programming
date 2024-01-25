#!/usr/bin/tclsh

# associative array


set color(rose) red;
set color(sky) blue;
set color(medal) gold;
set color(leaves) green;
set color(blackboard) black;

foreach elem [array names color] {
    puts "$elem: $color($elem)";
}

puts "\n";

array set colorobject {
    rose red
    sky blue
    medal gold
    leaves green
    board black
}

foreach {obj col} [array get colorobject] {
    puts "$obj:$colorobject($obj)";
}
puts "\n";

# Array element Exists

array set colorcount {
    red 1
    green 5
    blue 4
    white 9
}

set lst [list red green yellow purple white];

foreach col $lst {
    catch {info exists $colorcount($col)} ret; 
    if {0 == $ret} {
        puts "EXIST == $col == whose value is = $colorcount($col)";
    } else {
        puts "NOT EXIST == $col"
    }
}
