#!/usr/bin/perl
=pod
Make use of the features of Perl 5.10.1 and shortcuts to write the shortest script you can think 
of that prints the numbers 1 to 10 from an array, line by line.
=cut

use 5.010;  

my @numbers = 1..10;
say for @numbers;
