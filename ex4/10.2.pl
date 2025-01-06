#!/usr/bin/perl
=pod
Write a program that gets the contents of a directory and then prints it to the screen, but only 
for files which haven’t been modified for at least 1 day. Try the directory where your Perl 
scripts are located. 
=cut

use File::stat;
use Time::localtime;

# Get the current time minus one day in seconds
my $one_day_ago = time() - (24 * 60 * 60);

# Open the current directory
opendir(my $dh, ".") or die "Cannot open directory: $!";

# Read each entry in the directory
while (my $file = readdir $dh) {
    next if $file eq "." or $file eq "..";
    # Get the file status, remember to write the full path
    my $stat = stat(".\\$file");
    # Check if the file has not been modified in the last day
    if ($stat && $stat->mtime < $one_day_ago) {
        print "$file\n";
    }
}

# Close the directory handle
closedir $dh;