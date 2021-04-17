# Alien::Editline ![linux](https://github.com/PerlAlien/Alien-Editline/workflows/linux/badge.svg) ![macos](https://github.com/PerlAlien/Alien-Editline/workflows/macos/badge.svg)

Build and make available Editline (libedit)

# SYNOPSIS

In your Makefile.PL:

```perl
use ExtUtils::MakeMaker;
use Alien::Base::Wrapper ();

WriteMakefile(
  Alien::Base::Wrapper->new('Alien::Editline')->mm_args2(
    # MakeMaker args
    NAME => 'My::XS',
    ...
  ),
);
```

In your Build.PL:

```perl
use Module::Build;
use Alien::Base::Wrapper qw( Alien::Editline !export );

my $builder = Module::Build->new(
  ...
  configure_requires => {
    'Alien::Editline' => '0',
    ...
  },
  Alien::Base::Wrapper->mb_args,
  ...
);

$build->create_build_script;
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

Author: Graham Ollis <plicease@cpan.org>

Contributors:

Tom Hukins (TOMHUKINS)

# COPYRIGHT AND LICENSE

This software is copyright (c) 2014-2020 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
