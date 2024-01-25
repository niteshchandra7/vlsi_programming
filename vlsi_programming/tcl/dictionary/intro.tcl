#!/usr/bin/tclsh

# In TCL 8.5 the dict command was introduced
# This provides efficient access to key-value pairs.
# Dictionary is like associative arrays, but order of sequence is not important
# Dictionaries can be passed to a procedure
# Unlike arrays, dictionaries can nest dictionaries.
# Hence Dictionary help you to build complicated data structures, 
# such as hierarchical databases.
# You can also combine dictionaries with other TCL data structure.

set FT [dict create .txt Text .jpg Image .zip ZipArchive .doc Document];

dict set FT .mp3 Music;
dict set FT .avi Video;

puts [$FT .avi];

dict for {ext desc} $FT {
    puts "$desc file has extension: $ext";
}
puts "Let's Now use Foreach Loop\n";

foreach {ext desc} $FT {
     puts "$desc file has extension: $ext";
}

puts "\n";


set lst [list .txt .ogg .rar .doc];

foreach elem $lst {
    puts "checking for $elem=====>\n";
    # puts "[dict exists $FT $elem]";
    if {[dict exists $FT $elem]==1} {
        puts "\t Key == $elem exists "
    } else {
        puts "\t Key == $elem  doesn't exists "
    }
}
