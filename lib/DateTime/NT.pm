package DateTime::NT;

use 5.008008;
use strict;
use warnings;

use parent qw{ Exporter };

our %EXPORT_TAGS = ( 'all' => [ qw(nt_to_unix unix_to_nt) ] ); 
our @EXPORT_OK = ( @{ $EXPORT_TAGS{'all'} } );
our @EXPORT = ();
our $VERSION = '0.001';

sub nt_to_unix {
    my $ntTime = shift;
    $ntTime =~ s/[0-9]{7}$//;
    return int($ntTime) - 11644473600;
}

sub unix_to_nt {
    my $unixTime = shift;
    $unixTime += 11644473600;
    return "${unixTime}0000000";
}


1;
__END__

=head1 NAME

DateTime::NT - Perl extension for Working with Windows NT sytem time format

=head1 SYNOPSIS

  use DateTime::NT ':all';
  my $nttime = unix_to_nt(time);
  my $unixtime = nt_to_unix($nttime);

=head1 DESCRIPTION

This module provides functions for converting NT System time format 
to unix time and vice versa. This time format is used extensively 
in Microsoft Active Directory attributes. 

This module side steps any need for 64bit math, when dealing with
the 64bit NT system time.

=head1 FUNCTIONS

The following functions can be exported from the C<DateTime::NT>
module. No functions are exported by default.

=over 4

=item nt_to_unix($nt_datetime_str)

This function will take a NT system time format and convert it to a unix timestamp.

=item unix_to_nt($unix_timestamp)

This function will take a unix timestamp and convert it to NT system time format. 

=back

=head1 AUTHOR

Jason Fried <fried@cpan.org>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2010 by Jason Fried. All rights reserved.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
