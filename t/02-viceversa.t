#Time should convert in and out of NT format and be the same at the end.
use strict;
use Test::More tests => 2;
BEGIN { use_ok('DateTime::NT',qw(unix_to_nt nt_to_unix)) };

my $unix_time = time;
ok $unix_time eq nt_to_unix(unix_to_nt($unix_time)),"Vice Versa Test";
