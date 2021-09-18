#!/usr/bin/perl
use strict;
use warnings;

sub check_item() {
    if (read_result()) {
	print "Cool, next!\n";
    } else {
	print "And you thought you were ready!\n";
	exit(1);
    }
}

sub read_result() {
    my $result = "";
    do {
	read( STDIN, $result, 1);
    } while( $result ne "y" && $result ne "n");
    return $result eq "y"
}

while(<>) {
    if (/^NAME: (.*?)$/) {
	print "Going to go $1, huh? Think you're ready?\n";
	
    }
    if (/^ITEM: (.*?)$/) {
	print "Have you packed your $1?\n";
	check_item();
    }
    if (/^ACTION: (.*?)$/) {
	print "Have you already $1?\n";
	check_item();
    }
    
}

print "Sweet, you're on your way!!!!"
#exit(0)
