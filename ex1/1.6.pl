#!/usr/bin/perl
#Write a program that asks the user for two strings, compares them and tells the user if they are 
#the same or not. 
print "Enter the first string: ";
my $str1 = <STDIN>;
chomp $str1;

print "Enter the second string: ";
my $str2 = <STDIN>;
chomp $str2;

if($str1 eq $str2)
{
    print "$str1 is equal to $str2\n";
    }
else
{
    print "$str1 is not equal to $str2\n";
    }
