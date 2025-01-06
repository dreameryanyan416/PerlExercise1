#=!/usr/bin/perl
=pod
Write a subroutine called “absolute” that calculates the absolute value of number and returns
it, i.e. if it finds a negative number it should return its positive counterpart. If the number is
positive it should simply return the number. Print the returned value to check if it worked.
=cut

sub absolute {
    my ($number) = @_;
    if ($number < 0) {
        return -$number;
    } else {
        return $number;
    }
}
print "Absolute value of -10 is ".absolute(-10)."\n";
print "Absolute value of 200 is ".absolute(200)."\n"