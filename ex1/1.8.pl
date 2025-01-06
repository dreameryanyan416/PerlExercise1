#!/usr/bin/perl
#Modify 1.7.pl so it does not only print the numbers, but also prints if this number is even or odd.

#Enter a number
print "Enter a num: ";
my $num = <STDIN>;
chomp $num;

#create an array from 1 to num
my @array = (1..$num);
#print 1 to num and show if it is even or odd
foreach my $i (@array){
    if($i % 2 == 0){
        print "$i is even\n";
    }else{
        print "$i is odd\n";
    }   
}
 
