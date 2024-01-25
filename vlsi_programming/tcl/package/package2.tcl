#!/usr/bin/tclsh

# get the current working directory
set thisDirectory [pwd];

# Will use: pkg_mkIndex - Build an index for automatic loading
# of packages

pkg_mkIndex -verbose [file join [pwd]] . package*.tcl 
