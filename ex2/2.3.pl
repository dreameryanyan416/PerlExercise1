#!/usr/bin/perl
#Write a program that swaps the values of two variables without the simple swapping technique. 
my $a = 5;
my $b = 10;

print "Before swapping: a = $a, b = $b\n";

$a = $a + $b;
$b = $a - $b;
$a = $a - $b;

print "After swapping: a = $a, b = $b\n";

print "Swapping again\n";

($a, $b) = ($b, $a);

print "After swapping: a = $a, b = $b\n";