#!/usr/bin/tclsh

# Catch -- Evaluate a script and trap exceptional returns

if {[catch {exec pwd} ret]} {
    puts "inside IF-BLOCK-1";
    puts "===$ret";
} else {
    set retStatus [catch [exec pwd]]
    puts "inside ElSE-BLOCK-1";
    puts $retStatus;
}

if {[catch {exec cd /usr/bin/tclsh/abc } ret] } {
    puts "inside IF-BLOCK-2";;
    puts "$ret";
    # puts stderr "error";
} else {
    puts "inside ELSE-BLOCK-2";
    set retStatus [catch [exec cd /usr/bin/tclsh/abc]];
}