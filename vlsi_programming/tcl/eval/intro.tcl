#!/usr/bin/tclsh

# TCL allow new command creation and execute them while 
# running a tcl script.

# Typically a TCL command is defined as "a list of strings
# where the first string is a command or procedure".

# Any string or list which meets this criteria can be evaluated
# and executed by the command eval.

# In VLSI EDA Automation, you may club a set of command which
# you need to repeat several times in your EDA-tool shell
# for design and analysis.

# Define a short-hand for "a set of tcl commands"

set cmd {puts "Hello World !"};

# execute it any number of times later in the script
eval $cmd;

set cmd {
    set output [exec which tclsh];
    puts $output;
}

eval $cmd;


set i 0;

set cmdIncr {incr i};

while {$i < 20} {
    puts "i==$i";
    eval $cmdIncr;
}

# Summary
# Eval and Exec are ways to execute internal macro & 
# external binary respectively.

# Eval provides a way short-hand to a bunch of TCL commands
# clubbed together.

# Exec provides a way to call external binaries within TCLSH shell.