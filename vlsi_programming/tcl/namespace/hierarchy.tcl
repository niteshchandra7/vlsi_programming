#!/usr/bin/tclsh

# Global namespace
namespace eval top {
    variable test;
    # Local namespace
    namespace eval within {
        proc hello {} {
            puts "hello world";
        }
    }
}

# Changing the variable value and printing
set ::top::test 25;
puts $::top::test;

# Accessing a proc defined in a local namespace

::top::within::hello;