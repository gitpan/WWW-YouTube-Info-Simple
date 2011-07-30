use strict;
use warnings;
use Test::More;

BEGIN { use_ok( 'WWW::YouTube::Info::Simple' ) };

# "Gmail Theater Act 1" http://www.youtube.com/watch?v=_YUugB4IUl4
my $id = '_YUugB4IUl4'; my @args; push @args, $id;
my $yt = new_ok( 'WWW::YouTube::Info::Simple' => \@args );

SKIP: {
  my $info = $yt->get_info();
  skip "get_title() might fail! (\$info->{status} ne 'ok')", 2 if $info->{status} ne 'ok';

  ok( my $title = $yt->get_title(), "get_title() on VIDEO_ID '$id'" );
  is( $title, 'Gmail Theater Act 1', "is 'Gmail Theater Act 1'" );
};

done_testing();

