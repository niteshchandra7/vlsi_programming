#!/usr/bin/tclsh

set money 1900;
puts "money is = $money";

set a 10;
set b [expr $a+5];
puts "==$a===$b===";

unset a;
#puts "==$a===$b===";

if {![info exists a]} {
	set a 50;
}
incr a;
puts "==$a===$b===";
