#!/usr/bin/tclsh

namespace eval space {
    proc mul {a b} {
        return [expr $a * $b];
    }
    proc sub {a b} {
        return [expr $a - $b];
    }
    proc div {a b} {
        return [expr $a/$b];
    }

    # From inside exporting to outside
    namespace export *;
}

namespace import space::*

set result [mul 5 2]
puts $result;

set result [sub 5 2]
puts $result;

set result [div 5 2]
puts $result;

# Deleting all the imported value from present namespace

namespace forget space::*;

# set result [div 5 2]
# puts $result;

