#!/usr/bin/tclsh

# Creation of Complex Data Structure
# Employee Database (1:many mapping using dictionary)

# Data for one employee
dict set employeeInfo 12345-A forenames "Joe";
dict set employeeInfo 12345-A surnames "Schmoe";
dict set employeeInfo 12345-A street "147 Short Street";
dict set employeeInfo 12345-A city "Springfield";
dict set employeeInfo 12345-A phone "555-1234";

# Data for another employee
dict set employeeInfo 98372-J forenames "Anne";
dict set employeeInfo 98372-J surnames "Walker";
dict set employeeInfo 98372-J street "32995 Oakdale Way";
dict set employeeInfo 98372-J city "Springfield";
dict set employeeInfo 98372-J phone "555-8765";

# Access

set i 0;
puts "There are [dict size $employeeInfo] employees";
dict for {id info} $employeeInfo {
    puts "Employee #[incr i]: $id";
    dict with info {
        puts " Name: $forenames $surnames";
        puts " Address: $street, $city";
        puts " Telephone: $phone "
    }
}
puts "\n";

# Another way to iterate and pick out name...
# Given a dictionary key (first argument) and a value (second argument),
# this <dict get> will retrieve the value for that key.

foreach id [dict keys $employeeInfo] {
    set name [dict get $employeeInfo $id forenames];
    set surn [dict get $employeeInfo $id surnames];
    puts "Hello, $name $surn!"
}