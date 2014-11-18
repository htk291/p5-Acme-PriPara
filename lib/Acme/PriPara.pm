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

    my ($lala, $mirei, $sophie, $shion, $dorothy, $leona) = Acme::PriPara->main_members;

    is $lala->name,          '真中 らぁら';
    is $lala->firstname,     'らぁら';
    is $lala->lastname,      '真中';
    is $lala->age,            10;
    is $lala->cv,            '茜屋日海夏';
    is $lala->say,           'かしこま！';
    $lala->pripara_change;
    is $lala->costume_brand, 'Twinkle Ribbon';  

=head1 DESCRIPTION

PriPara is a famous Japanese animation.  
Acme::PriPara provides characters information of PriPara.

=head1 SEE ALSO

=over 4

=item * PriPara Official Site

L<http://www.takaratomy-arts.co.jp/specials/pripara/>

=item * PriPara (Wikipedia - ja)

L<http://ja.wikipedia.org/wiki/%E3%83%97%E3%83%AA%E3%83%91%E3%83%A9>

=item * PriPara (Wikipedia - ja)

L<http://en.wikipedia.org/wiki/PriPara>

=back

=head1 LICENSE

Copyright (C) htk291.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

htk291 E<lt>htk291@gmail.comE<gt>

=cut

