use strict;
use warnings;
use Test::Stream -V1;
use Test::Alien;
use Alien::Editline;

plan 3;

alien_ok 'Alien::Editline';

ffi_ok { symbols => ['history_init', 'history_end'] }, with_subtest {
  my($ffi) = @_;
  plan 2;
  my $ptr = $ffi->function( history_init => [] => 'opaque')->call;
  ok $ptr, "ptr = $ptr";
  $ffi->function('history_end' => ['opaque'] => 'void')->call($ptr);
  ok 1, 'history_end did not crash!';
};
