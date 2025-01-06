#!/usr/bin/perl
=pod
Create a program that returns only the “head” of an array, meaning only a certain number of
elements at the very front of the array. Let the user specify how many elements from the start
of the array should be returned. If the specified number of elements is bigger than the whole
original array, just return the complete original array. Print the new array to screen to see if it
worked!
=cut

print "Enter the number of the elements";
my $num = <STDIN>;
chomp $num;
@words = ("apple", "banana", "cherry", "date", "elderberry");
if($num>scalar @words){
    print "@words\n";}else{
    print "@words[0..$num-1]\n";}