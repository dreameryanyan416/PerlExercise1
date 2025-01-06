
#!/usr/bin/perl
#Create an array of 3 elements, where the elements contain the letters “a”, “b” and “c” 
#respectively. Write a program that prints each element on a new line. Use a while loop to 
#achieve this. 

my @array = qw(a b c);
my $index = 0;

while ($index < scalar @array) {
    print "$array[$index]\n";
    $index++;
}