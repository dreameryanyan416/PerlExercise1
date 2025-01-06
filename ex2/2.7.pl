#!/usr/bin/perl
#
#Define an array with the strings “Fred”, “Wilma”, “Pebbles”. Replace the middle element 
#with two new elements containing “Barney” and “Betty”, store the middle element into the 
#variable $room. Now insert an element containing “Bamm-Bamm” to be at the second 
#position of the array. Print $room and the final array to see if it worked.
#
#@array = ("Fred", "Wilma", "Pebbles");
@array = qw(Fred Wilma Pebbles);
#store the middle element into the variable $room
$room = $array[1];
#Replace the middle element with two new elements containing “Barney” and “Betty”
splice(@array,1,1,("Barney","Betty"));
#insert an element containing “Bamm-Bamm” to be at the second position of the array
splice(@array,1,0,"Bamm-Bamm");
print "$room\n";
print "@array";
