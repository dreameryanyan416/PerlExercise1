#!/usr/bin/perl
=pod
Write a subroutine that calculates the sum of an array (that you can define as you like) and
returns it. Print the result to the screen.
=cut

sub sum{
    my $sum = 0;
    foreach $num (@_){
        $sum += $num;
    }
    return $sum;
    
}
@array = (1,2,3,4,5,6,7,8,9,10,11);
print sum(@array);