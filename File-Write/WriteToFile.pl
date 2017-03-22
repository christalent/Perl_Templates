# WriteToFile.pl
# Purpose: Write to a text file
#
# Chris Talent
# 2017-02-14
#-----------------------------------------------------------------------------
use strict;

#-----------------------------------------------------------------------------
# Declare variables
my $outfile_handle = undef; # Set to undef for error checking on open
my $outfile_name = "test_outfile.txt"; # Name of file to be read
my $encoding = ":encoding(UTF-8)"; # File encoding type

# Open file handle, or die with error message
# Use > to write or overwrite new file, >> to append to a file
open ($outfile_handle, "> $encoding", $outfile_name)
	|| die "$0: can't open $outfile_handle in write-open mode: $!";

# Read a single line from the file, die if the file is empty	
print $outfile_handle "This is line 1.\n";
print $outfile_handle "This is line 2.\n";
print $outfile_handle "This is line 3.\n";

# Close the file handle
close ($outfile_handle) || die "couldn't close $outfile_name: $!";
