#!/usr/bin/perl
#Put the words of the sentence “I am learning Perl” into an array, where each element contains 
#a single word. Print the sentence one word below the other. Check if the program still works if 
#you enter sentences of different lengths. HINT: Use the $#array special variable! 

my $str="I am learning Perl";
#my $str="I am learning Perl and Python";
my @arr=split(" ",$str);
#Get the largest index of the array
my $len=$#arr;
for($i=0;$i<=$len;$i++)
{
    #print the array
	print "$arr[$i]\n";
}
