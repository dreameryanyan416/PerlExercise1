=pod
Fill an array with a couple of words of different lengths and create a new array containing 
only those words that contain 4 or more letters. Try using grep! 
=cut

@words = ("apple", "banana", "cherry", "date", "elderberry");
@long_words = grep { length($_) >= 4 } @words;
print "@long_words\n";