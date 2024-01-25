#!/usr/bin/tclsh

proc mul {a b} {
    return [expr $a * $b];
}
proc sub {a b} {
    return [expr $a - $b];
}
proc div {a b} {
    return [expr $a / $b];
}