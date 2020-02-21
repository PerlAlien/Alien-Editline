# Alien::Editline [![Build Status](https://secure.travis-ci.org/Perl5-Alien/Alien-Editline.png)](http://travis-ci.org/Perl5-Alien/Alien-Editline)

Build and make available Editline (libedit)

# SYNOPSIS

In your Build.PL:

```perl
use Module::Build;
use Alien::Editline;
my $builder = Module::Build->new(
  ...
  configure_requires => {
    'Alien::Editline' => '0',
    ...
  },
  extra_compiler_flags => Alien::Editline->cflags,
  extra_linker_flags   => Alien::Editline->libs,
  ...
);

$build->create_build_script;
```

In your Makefile.PL:

```perl
use ExtUtils::MakeMaker;
use Config;
use Alien::Editline;

WriteMakefile(
  ...
  CONFIGURE_REQUIRES => {
    'Alien::Editline' => '0',
  },
  CCFLAGS => Alien::Editline->cflags . " $Config{ccflags}",
  LIBS    => [ Alien::Editline->libs ],
  ...
);
```

In your [FFI::Platypus](https://metacpan.org/pod/FFI::Platypus) script or module:

```perl
use FFI::Platypus;
use Alien::Editline;

my $ffi = FFI::Platypus->new(
  lib => [ Alien::Editline->dynamic_libs ],
);
```

# DESCRIPTION

This distribution installs Editline so that it can be used by other Perl distributions.  If already
installed for your operating system, and it can be found, this distribution will use the Editline
that comes with your operating system, otherwise it will download it from the Internet, build and
install it fro you.

# SEE ALSO

[Alien](https://metacpan.org/pod/Alien), [Alien::Base](https://metacpan.org/pod/Alien::Base), [Alien::Build::Manual::AlienUser](https://metacpan.org/pod/Alien::Build::Manual::AlienUser)

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
