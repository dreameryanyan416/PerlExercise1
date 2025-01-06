#!/usr/bin/perl
#Write a program that asks the user for a number and then prints all numbers between 1 and the 
#given number to the screen. 

#Enter a number
print "Enter a num: ";
my $num = <STDIN>;
chomp $num;

#create an array from 1 to num
my @array = (1..$num);
#print 1 to num
print "@array\n";   
