#!/usr/bin/tclsh

set no_of_edge 3

switch $no_of_edge {
    0 -
    1 -
    2 -
    3 { puts "This is a triangle"}
    4 { puts "This is a quadrilateral" }
    5 { puts "This is a pentagon"}
    default {puts "This is an unknown polygon"}
}