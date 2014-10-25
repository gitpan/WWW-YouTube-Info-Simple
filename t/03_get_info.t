use strict;
use warnings;
use Test::More;

BEGIN { use_ok( 'WWW::YouTube::Info::Simple' ) };

# "Gmail Theater Act 1" http://www.youtube.com/watch?v=_YUugB4IUl4
my $id = '_YUugB4IUl4'; my @args; push @args, $id;
my $yt = new_ok( 'WWW::YouTube::Info::Simple' => \@args );

ok( my $info = $yt->get_info(), "get_info() on VIDEO_ID '$id'" );

done_testing();

