# Alien::Editline [![Build Status](https://secure.travis-ci.org/plicease/Alien-Editline.png)](http://travis-ci.org/plicease/Alien-Editline)

Build and make available Editline (libedit)

# SYNOPSIS

In your `Build.PL`:

    use Alien::Editline;
    use Module::Build;
    
    my $build = Module::Build->new(
      ...
      extra_compiler_flags => Alien::Editline->cflags,
      extra_linker_flags   => Alien::Editline->libs,
      ...
    );
    
    $build->create_build_script;

In your [FFI::Raw](https://metacpan.org/pod/FFI::Raw) script:

    use Alien::Editline;
    use FFI::Raw;
    
    my($dll) = Alien::Editline->dynamic_libs;
    FFI::Raw->new($dll, '...', ...);

# DESCRIPTION

This distribution installs Editline so that it can be used by other Perl distributions.  If already
installed for your operating system, and it can be found, this distribution will use the Editline
that comes with your operating system, otherwise it will download it from the Internet, build and
install it fro you.

# AUTHOR

Graham Ollis <plicease@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Graham Ollis.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
