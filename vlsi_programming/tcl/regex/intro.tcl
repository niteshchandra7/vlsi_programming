#!/usr/bin/tclsh

# Regular expression can be expressed in just a few rules:
    # ^ matches the beginning of a string
    # $ matches the end of a string
    # . matches any single character
    # * matches any count (0-n) of the previous character
    # + matches any count but atleast 1 of the previous character
    # [...] matches any character or set of characters
    # [^...] macthes ny character NOT a member of the set of characters
        # following the ^.
    # (...) groups a set of character into a sub specification

set myStr "A quick brown fox jumped over a brown lazy dog";

# use regexp tp pattern match
if {[regexp -nocase "brown" $myStr]} {
    puts "Match found in \"$myStr\"... and replacing ";
    # use regsub for substitution
    regsub -nocase -all brown $myStr REPLACED myStr;
    puts "now it is \"$myStr\"";
}

set res "A quick brown fox jumped over a brwn lazy dog";

foreach elem $res {
    # use of wild card matching of regex
    if {[regexp {b.*n} $elem]} {
        puts $elem;
    }
}

# Group macthing and status
set sample "Where there is a will, There is a way";

# match the first substring with lower letters only
set result [regexp {[a-z]+} $sample match];
puts "match_status<$result> matched string:<$match> ";

set result [regexp {([A-Za-z]+) +([a-z]+)} $sample match sub1 sub2];
puts "match_status<$result> matched string:<$match> sub1: <$sub1> sub2: <$sub2>";

# Replace a word
regsub way $sample abundance sample2;
puts "old_string: $sample, new_string: $sample2";

# Use the -all option to count number of words
puts "Number of macthing words: [regexp -all {[^ ]+} $sample]"