#!/usr/bin/tclsh

# Register the package name
package provide mathf 1.0

# Include the basic TCL (with versions) inside the package
package require Tcl 8.5

# We create namespace same as package name [easy to remember later use ]
namespace eval mathf {
    proc mul {a b} {
        return [expr $a * $b];
    }
    proc sub {a b} {
        return [expr $a - $b];
    }
    proc div {a b} {
        return [expr $a / $b];
    }
}


