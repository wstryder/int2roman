#!/usr/bin/perl
# by Ozfir Izmgzoz, 2021, late@sapatti.fi
# Unlicense

use Switch;

# For each argument
if ($#ARGV != 0) {
	print "Plese give me just one argument.\n";
	exit;
}

$theint = $ARGV[0];

if ($theint !~ m/^[\d]*$/) {
	print "Please give me an integer between 1 ... 3999\n";
} elsif ($theint > 3999) {
	print "The Romans could only count up to 3999.\n";
} elsif ($theint == 0) {
	print "The Romans didn't know zero!\n";
} else {
	# Everything OK
	#print "Is integer between 0 ... 3999\n";

	@intarr = split(//, $theint);
	$sizarr = @intarr;
	
	#print "Array size is $sizarr\n";

	$roman = "";

	# M = 1000
	# D = 500
	# C = 100
	# L = 50
	# X = 10
	foreach $char (@intarr) {
		if ($sizarr == 4) {
			#print "Thousands: " . $char . "\n";
			switch ($char) {
				case 1 { $roman .= "M" }
				case 2 { $roman .= "MM" }
				case 3 { $roman .= "MMM" }
			}
			$sizarr--;
		} elsif ($sizarr == 3) {
			#print "Hundreds: " . $char . "\n";
			switch ($char) {
				case 1 { $roman .= "C" };
				case 2 { $roman .= "CC" };
				case 3 { $roman .= "CCC" };
				case 4 { $roman .= "CD" };
				case 5 { $roman .= "D" };
				case 6 { $roman .= "DC" };
				case 7 { $roman .= "DCC" };
				case 8 { $roman .= "DCCC" };
				case 9 { $roman .= "CM" };
				case 0 { $roman .= "" };
			}
			$sizarr--;
		} elsif ($sizarr == 2) {
			#print "Tens: " . $char . "\n";
			switch ($char) {
				case 1 { $roman .= "X" };
                                case 2 { $roman .= "XX" };
                                case 3 { $roman .= "XXX" };
                                case 4 { $roman .= "XL" };
                                case 5 { $roman .= "L" };
                                case 6 { $roman .= "LX" };
                                case 7 { $roman .= "LXX" };
                                case 8 { $roman .= "LXXX" };
                                case 9 { $roman .= "XC" };
                                case 1 { $roman .= "X" };
				case 0 { $roman .= "" };
			}
			$sizarr--;
		} else {
			#print "Ones: " . $char . "\n";
			switch ($char) {
				case 1 { $roman .= "I" };
                                case 2 { $roman .= "II" };
                                case 3 { $roman .= "III" };
                                case 4 { $roman .= "IV" };
                                case 5 { $roman .= "V" };
                                case 6 { $roman .= "VI" };
                                case 7 { $roman .= "VII" };
                                case 8 { $roman .= "VIII" };
                                case 9 { $roman .= "IX" };
                                case 0 { $roman .= "" };
			}
		}
	}
print $roman . "\n";
}
