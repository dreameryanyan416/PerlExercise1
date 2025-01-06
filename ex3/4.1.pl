#!/usr/bin/perl
=pod
Define a variable called $x and put a number into it. Now write a subroutine called
“increment” that adds 1 to this variable. Use this subroutine to increment the contents of $x
three times. Print $x to see if it worked.
=cut

my $x=3;
sub increment{
    $x++;
}

for (1..3){
    increment();
}
print $x;