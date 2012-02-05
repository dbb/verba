#!/usr/bin/env perl
use strict;
use warnings;
use 5.010;

use autodie;
use YAML::XS;
#use Data::Dumper;

open my $fh, '<', 'data.yaml';
my $yml = do { local $/; <$fh> };
my $data = Load $yml;
#print Dumper($config), "\n";


#my $test = $data->{TERM}->{PAS}->{SING}->{1}[0];
my $test = $data->{TERM}->{PAS};

print $test . "\n"; # prints 'r'

my $basis = "am";
my $thema = $data->{VERBA}->{THEMATA}->{PRAES}->{1};
my $termi = $data->{VERBA}->{TERM}->{ACT}->{PLUR}->{1};
my $respo = $basis . $thema . $termi;

print $respo . "\n"; # prints 'amamus'
