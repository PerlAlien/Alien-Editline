package My::ModuleBuild;

use strict;
use warnings;
use base qw( Alien::Base::ModuleBuild );

sub new
{
  my($class, %args) = @_;
  
  $args{alien_name} = 'libedit';
  $args{alien_build_commands} = [
    '%c --with-pic --prefix=%s',
    'make',
  ];
  $args{alien_isolate_dynamic} = 1;
  $args{alien_repository} = {
    protocol => 'http',
    host     => 'thrysoee.dk',
    location => '/editline',
    pattern  => qr{^libedit-.*\.tar\.gz$},
  };
  
  my $self = $class->SUPER::new(%args);
  
  $self;
}

1;
