#!/usr/bin/perl
=pod
In the last program also directories where listed. Modify the program so only files get printed. 
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
        #Only print if it is not a directory
        if(! -d $file){
            print "$file\n";
        }
    }
}

# Close the directory handle
closedir $dh;