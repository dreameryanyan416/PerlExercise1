#!/usr/bin/perl
=pod
Delete the “BAK” directory you just created. HINT: You will have to delete the contents 
inside of the directory first.
=cut

use File::Path qw(remove_tree);

my $directory="D:\\TEMP\\BAK";

#Check if the directory exists
if(-d $directory)
{
    #Delete the contents inside the directory and delete the directory
    remove_tree($directory) or die "Could not delete $directory: $!";
    print "Directory $directory deleted successfully\n";
}