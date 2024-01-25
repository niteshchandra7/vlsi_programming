#!/usr/bin/tclsh

# get the present working directory

set thisDirectory [pwd]
source "$thisDirectory/source1.tcl"

set result [mul 5 2];
puts $result;