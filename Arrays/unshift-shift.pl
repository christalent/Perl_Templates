# unshift-shift.pl
# Purpose: Display examples of unshift and shift on arrays
#
# Chris Talent
# 2017-02-21
#-----------------------------------------------------------------------------
use strict;

use Data::Dumper qw(Dumper);

#-----------------------------------------------------------------------------
# Declare variables
my @names = ("Homer", "Marge", "Bart", "Lisa");
my $extra_name = "Maggie";

#-----------------------------------------------------------------------------

print  Dumper \@names;

print "Unshifting value to array: $extra_name.\n";
unshift(@names, $extra_name);
print  Dumper \@names;

print "\n";

print "Shifting value from array gives results of: " . shift(@names) . "\n";
print  Dumper \@names;
