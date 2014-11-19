package Acme::PriPara::MainMembers::LeonaWest;
use Mouse;
extends 'Acme::PriPara::MainMembers';
use utf8;

no Mouse;

sub name {
    my ($self) = @_;
    return $self->firstname . ' ' . $self->lastname;
}

sub pripara_change {
    my ($self, $twin) = @_;
    $self->{has_pripara_changed} = 1 if ref $twin eq 'Acme::PriPara::MainMembers::DorothyWest';
}


1;

__DATA__

@@ LeonaWest
firstname: Leona
lastname: West
age: 13
cv: Wakai Yuki
costume_brand: Fortune Party
