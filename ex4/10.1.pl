#!/usr/bin/perl
=pod
Move to your Windows system directory (for almost all systems this is “C:\Windows”). Try 
to find out how many files ending with .exe are present there.
=cut

$dir = "C:\\Windows\\*.exe";
my @files = glob( $dir );
$number = @files;
print "There are $number files ending with .exe in C:\Windows \n";


print "Try another way \n";
opendir(my $dh, "C:\\Windows") or die "can not open directory, $!";
my $count = 0;

while (my $file = readdir $dh) {
    if ($file=~ /\.exe$/i) {
        $count++;
    }
}
closedir $dh;
print "There are $count files ending with .exe in C:\Windows \n";