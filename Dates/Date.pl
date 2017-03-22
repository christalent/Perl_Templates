# Date.pl
# Purpose: Display different date functions
#
# Chris Talent
# 2017-02-14
#-----------------------------------------------------------------------------
use strict;
use POSIX qw(strftime);

my $datestring;
my $formatstring;

#-----------------------------------------------------------------
# Display current date and time in multiple formats

$formatstring = '%A, %B %d, %Y %I:%M:%S %p';
$datestring = strftime $formatstring, localtime();
print $datestring . "\n" . $formatstring . "\n\n";

$formatstring = '%m/%d/%Y %I:%M:%S %p';
$datestring = strftime $formatstring, localtime();
print $datestring . "\n" . $formatstring . "\n\n";

$formatstring = '%c';
$datestring = strftime $formatstring, localtime();
print $datestring . "\n" . $formatstring . "\n\n";

$formatstring = '%Y-%m-%d %H:%M:%S';
$datestring = strftime $formatstring, localtime();
print $datestring . "\n" . $formatstring . "\n\n";

my $week_of_year = strftime "%W", localtime;
print "Week of year: " . $week_of_year . "\n";

my $day_of_year  = strftime "%j", localtime;
print "Day of year: " . $day_of_year . "\n";

print "\n";

# Calculate yesterday's date
$datestring = strftime "%Y-%m-%d", localtime(time() - 24 * 60 * 60);
print "Yesterday's date: " . $datestring. "\n";

