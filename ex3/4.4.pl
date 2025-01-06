#/usr/bin/perl
=pod
Modify 4.3.pl to immediately return the text “negative number found” if it finds a negative
number in the array. If not it should still return the sum of the array.
=cut

sub sum{
    my $sum = 0;
    foreach $num (@_){
        if($num<0){
            return "negative number found";
        }else{
            $sum += $num;
        }
    }
    
    return $sum;
}
@array = (1,2,3,4,5,6,7,8,9,10,11);
print sum(@array)."\n";
@array1 = (1,2,3,-4,5,6,7,8,9,10);
print sum(@array1);
