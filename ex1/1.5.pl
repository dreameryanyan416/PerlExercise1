#!/usr/bin/perl
# Write a program to accept the two numbers from user input and prints the sum to the screen. 
print "Enter the first num: ";
my $num1 = <STDIN>;
chomp $num1;

print "Enter the second num: ";
my $num2 = <STDIN>;
chomp $num2;

my $sum = $num1 + $num2;

print "The sum of $num1 and $num2 is: $sum\n";