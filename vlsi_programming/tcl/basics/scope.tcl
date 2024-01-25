#!/usr/bin/tclsh

set a 2
set b 3
set c 4

puts "\n ==== $a ==== $b ==== $c ====";
proc var_scope {} {
    global a;
    set a 20;
    set ::b 30;
    set c 100;
}

var_scope;
puts "\n ==== $a ==== $b ==== $c ====";