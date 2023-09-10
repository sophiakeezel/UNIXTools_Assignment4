#!/usr/bin/perl

use strict;
use warnings;

# read file from command line
my $file=$ARGV[0];

# move file contents into a string
my $string = do {
    local $/ = undef;
    open my $fh, "<", $file
        or die "could not open $file: $!";
    <$fh>;
};

# get the number of charactes and lines 
open(FILE, $file) or die "Could not open file: $!";
  my ($lines,$chars) = (0,0);
 while (<FILE>) {
    $lines++;
    $chars += length($_);
}

# create an array of words 
my @words = split(/\s+/, $string); 
# find the size of the word array
my $wordSize = @words;

# output the number of characters, words, and lines in the file
print "Number of characters: $chars";

print "\nNumber of words: $wordSize";

print "\nNumber of lines: $lines";

print "\nFrequency of words in the file: \n-----------------------------\n";

my %count;
 
# gather the frequency count 
foreach my $str (@words) {
    $count{$str}++;
}
 
# print words: frequencies 
foreach my $str (sort keys %count) {
    printf "%-s: %s\n", $str, $count{$str};
}