#!/usr/bin/perl
=pod
Create a new directory within TEMP called “BAK” and move the renamed .bak files from the 
last exercise into this directory. HINT: Move them one by one using a foreach loop.  
=cut

use File::Copy;
use File::Path;
use File::Basename;

$dir = "D:\\TEMP\\*.bak";
my @files = glob( $dir );
$destination_dir = "D:\\TEMP\\BAK";
#Create the destination directory if it doesn't exist
if(!-d $destination_dir){
    mkpath($destination_dir) or die "can not create directory: $!";
}
#Loop all the files in *.bak and move them to the destination directory
foreach $file (@files){
    #get the file name
    $filename=basename($file);
    $newfile = $destination_dir."\\".$filename;
    move($file, $newfile) or die "Move file failed: $!";
    print "$file moved to $newfile\n";
}