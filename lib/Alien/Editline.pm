package Alien::Editline;

use strict;
use warnings;
use base qw( Alien::Base );

# ABSTRACT: Build and make available Editline (libedit)
# VERSION

=head1 SYNOPSIS

In your C<Build.PL>:

 use Alien::Editline;
 use Module::Build;
 
 my $alien = Alien::Editline->new;
 my $build = Module::Build->new(
   ...
   extra_compiler_flags => $alien->cflags,
   extra_linker_flags   => $alien->libs,
   ...
 );
 
 $build->create_build_script;

In your L<FFI::Raw> script:

 use Alien::Editline;
 use FFI::Raw;
 
 my($dll) = Alien::Editline->new->dynamic_libs;
 FFI::Raw->new($dll, '...', ...);

=head1 DESCRIPTION

This distribution installs Editline so that it can be used by other Perl distributions.  If already
installed for your operating system, and it can be found, this distribution will use the Editline
that comes with your operating system, otherwise it will download it from the Internet, build and
install it fro you.

=cut

1;
