# push-pop.pl
# Purpose: Display examples of push and pop on arrays
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

print "Pushing value to array: $extra_name.\n";
push(@names, $extra_name);
print  Dumper \@names;

print "\n";

print "Popping value from array gives results of: " . pop(@names) . "\n";
print  Dumper \@names;
