#!/usr/bin/tclsh

# The exec command executes a system command(binary) from linux/unix 
# while staying within TCLSH.

# The exec command treats its arguments as the names and arguments 
# for a set of program to run.

# In VLSI EDA Automation any external EDA-Software Binary can also be executed
# using exec while staying within shell of Parent EDA Tool.

# Simple use of exec
set output [exec ./hello.tcl];
puts $output;

set output [exec pwd];
puts $output;

set output [exec whoami];
puts $output;