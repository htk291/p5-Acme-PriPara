package Acme::PriPara;
use 5.008001;
use strict;
use warnings;
use utf8;

our $VERSION = "0.01";

use Readonly;

Readonly our $Lala_and_Mirei => [
    'ManakaLala',
    'MinamiMirei',
];
Readonly our $SoLaMi_Smile => [
    @$Lala_and_Mirei,
    'HojoSophie',
];

Readonly our $Dorothy_and_Leona => [
    'DorothyWest',
    'LeonaWest',
];
Readonly our $DressingPafé => [
    'TodoShion',
    @$Dorothy_and_Leona,
];

Readonly our $MainMembers => [
    @$SoLaMi_Smile,
    @$DressingPafé,
];

sub main_members {
    my $self = shift;
    return $self->members_of($MainMembers);
}

sub members_of {
    my ($self, $team) = @_;
    my @members;
    for my $member_name (@{ $team }) {
        my $pkg = "Acme::PriPara::MainMembers::$member_name";
         if (eval "require $pkg;1;") {
             push @members, $pkg->new;
        }
    }
    return @members;
}

1;
__END__

=encoding utf-8

=head1 NAME

Acme::PriPara - It's new $module

=head1 SYNOPSIS

    use Acme::PriPara;

=head1 DESCRIPTION

Acme::PriPara is ...

=head1 LICENSE

Copyright (C) htk291.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

htk291 E<lt>htk291@gmail.comE<gt>

=cut

