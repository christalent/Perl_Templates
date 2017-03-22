# Arrays.pl
# Purpose: Display information about arrays
#
# Chris Talent
# 2017-02-21
#-----------------------------------------------------------------------------
use strict;

use Data::Dumper qw(Dumper);

#-----------------------------------------------------------------------------
# Declare variables
my @names = ("Homer", "Marge", "Bart", "Lisa", "Maggie");

#-----------------------------------------------------------------------------

print  Dumper \@names;

# Display the number of elements in the hash
print "Total elements in array: " . scalar  @names . "\n";
print "\n";

# Use a foreach loop to display all values in the array
foreach my $n (@names) {
	print "$n ";
}
print "\n";

# Use a foreach loop to display values using an index
foreach my $i (0 .. $#names) {
	print "$i: $names[$i] ";
}
print "\n";
