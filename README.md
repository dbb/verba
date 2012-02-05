# verba.pl

<http://github.com/dbb/verba>

## Description
`verba.pl` is a simple Perl library that uses a YAML data file to conjugate regular Latin verbs.

## Usage
This example will fetch the first person plural active present form of *amo*:

```perl

my $basis = "am";
my $thema = $data->{VERBA}->{THEMATA}->{PRAES}->{1};    ## returns 'a'
my $termi = $data->{VERBA}->{TERM}->{ACT}->{PLUR}->{1}; ## returns 'mus'
my $respo = $basis . $thema . $termi;   ## catenates the three substrings

```

