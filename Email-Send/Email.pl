# ReadFromFile.pl
# Purpose: Read from a text file
#
# Chris Talent
# 2017-02-14
#-----------------------------------------------------------------------------
use strict;

use Mail::Sender;

my $smtp_server     = 'webmail.cowlitzpud.org';
my $from_address    = 'ctalent@cowlitzpud.org';
my $to_address      = 'ctalent@cowlitzpud.org';
my $subject         = 'Email subject line';
my $message_text    = 'Message text for the body of the document.';
my $file_attachment = 'test.txt';

my $sender = new Mail::Sender
  {smtp => $smtp_server, from => $from_address};
  
 $sender->MailFile({to => $to_address,
               subject => $subject,
                   msg => $message_text,
                  file => $file_attachment});

