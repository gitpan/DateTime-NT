use 5.008008;
use inc::Module::Install 0.87;

name('DateTime-NT');
abstract('Convert NT System Time to Unix Timestamp and vice versa');
author('Jason Fried <fried@cpan.org>');
version_from('lib/DateTime/NT.pm');
license('perl');

WriteAll;
