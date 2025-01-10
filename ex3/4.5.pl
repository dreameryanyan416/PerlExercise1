#!/usr/bin/perl
=pod
Modify 4.2.pl so you can use the subroutine on any variable by passing it as a parameter when
calling the subroutine. Apply the subroutine to two different variables (e.g. $x and $y). Print
the results of the subroutine to see if it worked.
=cut

sub absolute {
    my @final_array;
    #checking each variables
    foreach (@_) {
      if($_ < 0){
        push @final_array, -$_;
      } 
      else
      {
        push @final_array, $_;
      }

    }
   return @final_array;
}

# define 2 variables
my $x = -5;
my $y = 10;

# call the subroutine
my @res_x = absolute($x, $y);
my $result = join(",", @res_x);
# output the result
print "The Absolute value of $x,$y are $result";