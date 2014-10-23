package Acme::PriPara::MainMembers::HojoSophie;
use Mouse;
extends 'Acme::PriPara::MainMembers';
use utf8;

no Mouse;

sub pripara_change { #override
    my ($self, $option) = @_; 
    return unless (defined $option && $option eq 'Red Flash');
    $self->{has_pripara_changed} = 1;
}

1;

__DATA__

@@ MinamiMirei
firstname: Sophie
lastname: Hojo
age: 14
cv: Kubota Miyu
costume_brand: Holic Trick
