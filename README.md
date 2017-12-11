# NAME

Map::Tube::Milan - Interface to the Milan tube map

# VERSION

version 0.004

# SYNOPSIS

       use Map::Tube::Milan;
       my $tube = Map::Tube::Milan->new();
    
       my $route = $tube->get_shortest_route('Romolo', 'Lambrate F.S.');
    
       print "Route: $route\n";

# DESCRIPTION

This module allows to find the shortest route between any two given tube
stations in Milan. All interesting methods are provided by the role [Map::Tube](https://metacpan.org/pod/Map::Tube).

# METHODS

## CONSTRUCTOR

    use Map::Tube::Milan;
    my $tube = Map::Tube::Milan->new();

The only argument, `json`, is optional; if specified, it should be a code ref
to a function that returns either the path the JSON map file, or a string
containing this JSON content. The default is the path to `milan.json`
that is a part of this distribution. For further information see [Map::Tube](https://metacpan.org/pod/Map::Tube).

## json()

This read-only accessor returns whatever was specified as the JSON source at
construction.

# ERRORS

If something goes wrong, maybe because the map information file was corrupted,
the constructor will die.

# SEE ALSO

[Map::Tube](https://metacpan.org/pod/Map::Tube), [Map::Tube::GraphViz](https://metacpan.org/pod/Map::Tube::GraphViz).

# AUTHOR

Marco Fontani <MFONTANI@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2017 by Marco Fontani <MFONTANI@cpan.org>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
