#!/usr/bin/perl
use strict;
use warnings;

my @dirs = (
    'pr',
    'vw'
);

my $cfg = {
    username => 'asuser',
    password => 'asuser',
    database => 'astorm'
};

foreach my $dir (@dirs) {
    my $dh;
    opendir($dh, $dir) || die "Can't open $dir: $!";
    my @files = readdir($dh);
    foreach my $file (sort(@files)) {
        next if $file =~ /^[\.]{1,2}$/;
        print "Inserting $dir/$file into $cfg->{database}\n";
        my $sp_file = "$dir/$file";
        my $resp = `export MYSQL_PWD=$cfg->{'password'} ; mysql -u $cfg->{'username'} $cfg->{'database'} < $sp_file`;        
    }
    closedir $dh;
}