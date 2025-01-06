#!/usr/bin/perl
#Rewrite our array printing loop (2.2.pl) using foreach instead of while.


my $str="I am learning Perl";
#my $str="I am learning Perl and Python";
my @arr=split(" ",$str);
foreach my $word (@arr)
{
    #print the array
	print "$word\n";
}
