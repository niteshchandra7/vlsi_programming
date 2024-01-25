#!/usr/bin/tclsh

# A namespace allows you to place a bunch of code under the hood of a name.
# Thus any naming conflicts with Classes, Functions and Constants 
# etc are avoided between two namespaces.


# Creating a namespace
namespace eval Counter {
    variable num 1;
    proc increase {} {
        variable num;
        return [incr num];
    }
    puts "INSIDE: Num = $Counter::num";
}

# Adding proc/variable in above namespace
namespace eval Counter {
    variable clock 5;
    proc hello {} {
        puts "Hello World"
    }
    puts "INSIDE: Clock = $clock";
}

# Printing a variable outside its namespace 
puts "OUTSIDE: Num = $Counter::num";
puts "OUTSIDE: Clock = $Counter::clock";

Counter::increase;
puts "OUTSIDE: Num = $Counter::num";

Counter::hello;

# Removing a proc in the above namespace

namespace eval Counter {
    rename hello "";
}

puts [info exists Counter::hello]; # 0



