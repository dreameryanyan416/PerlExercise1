#!/usr/bin/perl
=pod
Create an array with all numbers between 1 and 20000. Sort the array (alphabetically) and 
print the result to the screen. Measure how long this whole procedure took (in seconds) and 
report it back to the user. Try it within the IDE and on the console. 
=cut    
use Time::HiRes qw(time);
#Get the start time
my $start_time=time();
my @array = (1..20000);
#Sort the array
@array = sort @array;
print join(', ', @array), "\n";
#Get the end time
my $end_time=time();
print "\nThe time taken is ", $end_time-$start_time, " seconds";