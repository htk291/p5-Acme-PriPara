use strict;
use warnings;
use Acme::PriPara;
use Test::More;
use utf8;

subtest 'Team' => sub {
    subtest 'Main Members' => sub {
        my ($lala, $mirei, $sophie, $shion, $dorothy, $leona) = Acme::PriPara->main_members;

        is ref $lala,    'Acme::PriPara::MainMembers::ManakaLala';
        is ref $mirei,   'Acme::PriPara::MainMembers::MinamiMirei';
        is ref $sophie,  'Acme::PriPara::MainMembers::HojoSophie';
        is ref $shion,   'Acme::PriPara::MainMembers::TodoShion';
        is ref $dorothy, 'Acme::PriPara::MainMembers::DorothyWest';
        is ref $leona,   'Acme::PriPara::MainMembers::LeonaWest';
    };
    subtest 'Lara and Mirei' => sub {
        my ($lala, $mirei) = Acme::PriPara->members_of($Acme::PriPara::Lala_and_Mirei);

        is ref $lala,    'Acme::PriPara::MainMembers::ManakaLala';
        is ref $mirei,   'Acme::PriPara::MainMembers::MinamiMirei';
    };
    subtest 'SoLaMiSmile' => sub {
        my ($lala, $mirei, $sophie) = Acme::PriPara->members_of($Acme::PriPara::SoLaMi_Smile);

        is ref $lala,    'Acme::PriPara::MainMembers::ManakaLala';
        is ref $mirei,   'Acme::PriPara::MainMembers::MinamiMirei';
        is ref $sophie,  'Acme::PriPara::MainMembers::HojoSophie';
    };
    subtest 'Dorothy_and_Leona' => sub {
        my ($dorothy, $leona) = Acme::PriPara->members_of($Acme::PriPara::Dorothy_and_Leona);

        is ref $dorothy, 'Acme::PriPara::MainMembers::DorothyWest';
        is ref $leona,   'Acme::PriPara::MainMembers::LeonaWest';
    };
    subtest 'Dressing_Pafé' => sub {
        my ($shion, $dorothy, $leona) = Acme::PriPara->members_of($Acme::PriPara::Dressing_Pafé);

        is ref $shion,   'Acme::PriPara::MainMembers::TodoShion';
        is ref $dorothy, 'Acme::PriPara::MainMembers::DorothyWest';
        is ref $leona,   'Acme::PriPara::MainMembers::LeonaWest';
    };
};

done_testing;
