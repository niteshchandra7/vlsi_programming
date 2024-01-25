#!/usr/bin/tclsh

# get the current working directory
set thisDirectory [pwd];

# $auto_path_variable is to store a list of directories 
# which contains TCL packages.
puts "ORIGINAL AUTO_PATH :: $auto_path ";
lappend auto_path $thisDirectory;
puts "AFTER APPENDING AUTO_PATH :: $auto_path ";

package require mathf 1.0

set result [mathf::mul 5 2];
puts $result;

set result [mathf::sub 5 2];
puts $result;

set result [mathf::div 5 2];
puts $result;