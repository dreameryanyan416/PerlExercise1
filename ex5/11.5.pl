#!/usr/bin/perl
=pod
Take the original array from your last exercise and upper-case all elements. Try using map!
=cut
@words = ("apple", "banana", "cherry", "date", "elderberry");
@uppercase_words = map { uc($_) } @words;
print "@uppercase_words\n";