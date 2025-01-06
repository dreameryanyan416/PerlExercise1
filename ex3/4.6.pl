#!/usr/bin/perl
=pod
Define 4 variables $x, $y, $a and $b and fill them with numbers. Now write a subroutine that
calculates the difference of two variables that get passed on as parameters. Inside the
subroutine use private variables called $a and $b to do the calculation (i.e. copy over the
contents of @_). Use the subroutine to calculate the difference between $x and $y first and
then the difference between $a and $b that you defined in the very beginning. Check what
happens if don’t make sure that the $a and $b inside the subroutine are private.
=cut

$x = 10;
$y = 6;
$a = 4;
$b = 2;

sub difference1{
    my $a = $_[0];
    my $b = $_[1];
    return $a - $b;
}

sub difference2{
    $a = $_[0];
    $b = $_[1];
    return $a - $b;
}

print "Checking difference between $x and $y, using private variables \n";
print difference1($x,$y)."\n";
print difference1($a,$b)."\n";

print "Checking difference between $x and $y, not using private variables \n";
print difference2($x,$y)."\n";
print difference2($a,$b)."\n";
