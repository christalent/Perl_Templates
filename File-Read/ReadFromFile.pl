# ReadFromFile.pl
# Purpose: Read from a text file
#
# Chris Talent
# 2017-02-14
#-----------------------------------------------------------------------------
use strict;

#-----------------------------------------------------------------------------
# Declare variables
my $infile_name = "test.txt"; # Name of file to be read
my $encoding = ":encoding(UTF-8)"; # File encoding type
my $infile_handle = undef; # Set to undef for error checking on open

# Open file handle, or die with error message
open ($infile_handle, "< $encoding", $infile_name)
	|| die "$0: can't open $infile_name for reading: $!";

# Read a single line from the file, die if the file is empty	
my $line;
$line = <$infile_handle> // die "no input found";
print $line;

# Cycle through the remaining lines of the file
while (<$infile_handle>) {
	# $_ contains line from file
	# chomp(); # Removes newline characters from end of file
	print;
	
} # end while

close $infile_handle;
