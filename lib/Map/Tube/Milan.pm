use strict;
use warnings;
package Map::Tube::Milan;
use 5.010_000;
# ABSTRACT: Interface to the Milan tube map

use File::Share qw<:all>;
use Moo;
use namespace::autoclean;

has json => (is => 'ro', default => sub { dist_file('Map-Tube-Milan','milan.json') });

with 'Map::Tube';

1;
__END__

=encoding utf8
 
=head1 SYNOPSIS
 
    use Map::Tube::Milan;
    my $tube = Map::Tube::Milan->new();
 
    my $route = $tube->get_shortest_route('Romolo', 'Lambrate F.S.');
 
    print "Route: $route\n";
 
=head1 DESCRIPTION
 
This module allows to find the shortest route between any two given tube
stations in Milan. All interesting methods are provided by the role L<Map::Tube>.
 
=head1 METHODS
 
=method CONSTRUCTOR
 
    use Map::Tube::Milan;
    my $tube = Map::Tube::Milan->new();
 
The only argument, C<json>, is optional; if specified, it should be a code ref
to a function that returns either the path the JSON map file, or a string
containing this JSON content. The default is the path to F<milan.json>
that is a part of this distribution. For further information see L<Map::Tube>.
 
=method json()
 
This read-only accessor returns whatever was specified as the JSON source at
construction.
 
=head1 ERRORS
 
If something goes wrong, maybe because the map information file was corrupted,
the constructor will die.
 
=head1 AUTHOR
 
Marco Fontani
 
=head1 COPYRIGHT AND LICENCE
 
The data for the JSON file were taken from an image in the English-language
Wikipedia in the entry "List of Milan Metro stations",
L<https://en.wikipedia.org/wiki/List_of_Milan_Metro_stations#/media/File:Milano_-_mappa_rete_metropolitana_(schematica).svg>.
It is CC BY-SA 4.0 INT, 2006 by Arbalete.

The module itself is free software; you may redistribute and/or modify
it under the same terms as Perl itself.
 
=head1 SEE ALSO
 
L<Map::Tube>, L<Map::Tube::GraphViz>.
 
=cut
