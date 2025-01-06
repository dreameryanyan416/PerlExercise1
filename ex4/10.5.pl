#!/usr/bin/perl
=pod
Copy some text files (with the extension .txt) into a temporary folder on drive D called
“TEMP”. Write a program that renames all of those files into files with .bak extensions.
HINT: Use regular expressions to replace any trailing .txt with .bak for each found file.
=cut

use File::Copy;
use File::Path;

#Open the directory with all the .txt files
opendir(my $dh, ".\\directory") or die "can not open directory, $!";
$destination_dir = "D:\\TEMP\\";
#Create the destination directory if it doesn't exist
if(!-d $destination_dir){
    mkpath($destination_dir) or die "can not create directory: $!";
}
#Loop all the txt files ,rename and copy them to the destination directory
while (my $file = readdir $dh){
    if($file=~ /\.txt$/i)
        {
        $destination_file=$destination_dir.$file;
        $newfile = $destination_file;
        $newfile =~ s/\.txt/\.bak/;
        copy(".\\directory\\".$file, $newfile) or die "Copy failed: $!";
        print "$file copied to $newfile\n";
    }
}
closedir $dh;
