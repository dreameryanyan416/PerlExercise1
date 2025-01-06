#!/usr/bin/perl
=pod
Fill two arrays with several words. Some elements within the two arrays should be the same, 
some different. Write a program that compares the contents of both arrays and reports the 
elements they have in common. Try using the smart-match operator. 
=cut
use 5.010;  

my @array1 = ('apple', 'banana', 'cherry', 'date', 'pig');
my @array2 = ('banana', 'date', 'grape', 'kiwi', 'apple');

# find common elements
my @common_elements;
for my $element (@array2) {
    if ($element ~~ @array1) {
        push @common_elements, $element;
    }
}

print "Common elements are: @common_elements\n";