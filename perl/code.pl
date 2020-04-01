#!/usr/bin/perl
use strict;
use warnings;
use TO::Handle;

my($remaining, $total);
$remaining = $total = shift(@ARGV);
STDOUT->autoflush(1);
while($remaining) {
	print("Remaining %s/%s \r",$remaining--,$total);
	sleep 1;
}
print "\n";
print "Countdown complete\n";
