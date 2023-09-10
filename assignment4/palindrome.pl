#!/usr/bin/perl

use strict;
use warnings;

my $userInput;

do {

# request user input
print "Please input a string: ";

# get user input 
$userInput = <STDIN>;
chomp ($userInput);

# make user string lowercase
my $userInput = lc $userInput;

if ($userInput eq "quit") {
  exit;
}

# declare array from user input
my @string = split ' ', $userInput;

# declare copy array which will be used to compare
my @first = @string;

# reverse letters in array elements
foreach my $i(@string)
{
    $i = reverse $i;
}

# reverse elements and store in array palindrome
my @palindrome = reverse(@string);  

# if first and reversed elements are equal, userinput is a palindrome
if ( @palindrome ~~ @first ) {
  print '"';
  print join(" ", @palindrome);
  print '" is a palindrome';
  print "\n";

} else {
  print '"';
  print join(" ", @first);
  print '" is not a palindrome';
  print "\n";

}

} while ($userInput ne "quit"); # users decides to quit program
