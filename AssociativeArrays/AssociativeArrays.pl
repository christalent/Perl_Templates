# AssociativeArrays.pl
# Purpose: Display information about associative arrays
#
# Chris Talent
# 2017-02-14
#-----------------------------------------------------------------------------
use strict;
use Data::Dumper;

#-----------------------------------------------------------------------------
# Declare variables
my %color_of = (
	apple  => 'red',
	orange => 'orange',
	banana => 'yellow'
);

my $key;

#-----------------------------------------------------------------------------

# Use Data::Dumper to display values of associative array
print Dumper \%color_of;

foreach $key (sort keys %color_of) {
	print "Color of $key is $color_of{$key}\n";
}
print "\n";

# Add an element to the associative array
$color_of{grape} = 'purple';

foreach $key (sort keys %color_of) {
	print "Color of $key is $color_of{$key}\n";
}
print "\n";

# Overwrite the value of an element in the associative array
$color_of{apple} = 'green';

foreach $key (sort keys %color_of) {
	print "Color of $key is $color_of{$key}\n";
}
print "\n";

# Display the number of elements in the hash
print "Total elements in array: " . scalar keys %color_of;
