package Moose::Meta::Method::Accessor::Native::Array::push;

use strict;
use warnings;

our $VERSION = '1.13';
$VERSION = eval $VERSION;
our $AUTHORITY = 'cpan:STEVAN';

use base 'Moose::Meta::Method::Accessor::Native::Array::Writer';

sub _adds_members { 1 }

sub _potential_value {
    my ( $self, $slot_access ) = @_;

    return "( \@{ $slot_access }, \@_ )";
}

1;
