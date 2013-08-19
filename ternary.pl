#!/usr/bin/perl

use strict;
use warnings;

if ( exists($ARGV[0]) && $ARGV[0] eq '--help' ) { eom(); }

my @list = qw/waycross willowbend/;

my $cantype = '';

&street();
&guess();

sub street {
    foreach my $street ( @list ) {
         print "Please type \"$street\" and press return\n";
         chomp( my $response = <STDIN> );
         if ( $response eq $street ) {
             print "Awesome!\n\n";
            next;
        } else {
            print "You reply does not match.\n\n";
            redo;
        }
    }
}

sub guess {
    print "\n\nPlease enter a number between 1 and 1000.\n\n";
    chomp(my $num = <STDIN>);
    my $attempt =
        ( $num < 50 ) ? "Less than 50" :
        ( $num < 200 ) ? "Less than 200" :
        ( $num < 500 ) ? "Less than 500" :
        ( $num < 750 ) ? "Less than 750" :
        ( $num < 999 ) ? "Less than 900" :
                    "Less than 999";
    print "\n\n$num is $attempt\n\n";
}

sub eom {
    print "\n\n\t$0: An excersize in the ternary operator.\n\n";
}
