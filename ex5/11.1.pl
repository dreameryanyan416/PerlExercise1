#!/usr/bin/perl
=pod
Call the Windows command “dir c:\\windows” from within a Perl script. Capture the output 
of “dir” and print to the screen only those lines that display info about a directory (the lines 
containing <DIR>).
=cut

#Single quaote is used to execute the command in the system
@files = `dir c:\\windows`;
foreach $file (@files){
    if ($file =~ /<DIR>/) {
        print "$file\n";
    }
}