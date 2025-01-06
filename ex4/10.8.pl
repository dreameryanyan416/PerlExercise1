#!/usr/bin/perl
=pod
Put a file (e.g. genes.txt) into your TEMP folder. Create a copy of that file (e.g.
genes_copy.txt) inside the folder using the File::Copy module. Read through the description
of the module on Perldoc to decide which function to use and follow the described syntax to
achieve the task.
=cut

#Exec perldoc File::Copy in the command line to see the documentation

use File::Copy;
# Create the file genes.txt if it doesn't exits
my $filename = "D:\\TEMP\\genes.txt";
my $destination_file = "D:\\TEMP\\genes_copy.txt";
open(my $fh, '>', $filename) or die "can not open '$filename' $!";
#Copy the file
copy($filename,$destination_file) or die "Copy failed: $!";
print "$filename is copied to $destination_file \n";
close($fh) or die "can not close '$filename' $!";