#!/usr/bin/tclsh

set lstColors "red dark yellow green purple blue";
puts $lstColors;
foreach col $lstColors {
    puts "$col";
}
set tclFiles [glob *.tcl];

foreach tclFile $tclFiles {
    puts "File = $tclFile";
}

set lstColors {red orange yellow green blue purple};
set lstFoods {apple orange banana lime berry grape};
set status "ok bad ok ok bad bad";

foreach f $lstFoods c $lstColors s $status {
    puts "a <$f> is usually <$c> and is = <$s>";
}