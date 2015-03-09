use strict;
use warnings;
use Acme::PriPara;
use Acme::PriPara::MainMembers::ManakaLaara;
use Acme::PriPara::MainMembers::MinamiMirei;
use Acme::PriPara::MainMembers::HojoSophy;
use Acme::PriPara::MainMembers::TodoSion;
use Acme::PriPara::MainMembers::DorothyWest;
use Acme::PriPara::MainMembers::ReonaWest;
use Test::More;
use utf8;

subtest 'Charactors' => sub {

    subtest 'Laara' => sub {
        my $laara = Acme::PriPara::MainMembers::ManakaLaara->new;
        is $laara->name,          '真中 らぁら';
        is $laara->firstname,     'らぁら';
        is $laara->lastname,      '真中';
        is $laara->age,            10;
        is $laara->birthday,      '11/20';
        is $laara->blood_type,    'O';
        is $laara->cv,            '茜屋日海夏';
        is $laara->voiced_by,     '茜屋日海夏';
        is $laara->say,           'かしこま！';
        is $laara->costume_brand,  undef;    # withiout PriPara Changing, you cannot get costume_brand.

        $laara->pripara_change;
        is $laara->costume_brand, 'Twinkle Ribbon';  
    };

    subtest 'Mirei' => sub {
        my $mirei = Acme::PriPara::MainMembers::MinamiMirei->new;
        is $mirei->name,          '南 みれぃ';
        is $mirei->firstname,     'みれぃ';
        is $mirei->lastname,      '南';
        is $mirei->age,            13;
        is $mirei->birthday,      '10/1';
        is $mirei->blood_type,    'A';
        is $mirei->cv,            '芹澤優';
        is $mirei->voiced_by,     '芹澤優';
        is $mirei->costume_brand,  undef;

        $mirei->pripara_change;
        is $mirei->costume_brand, 'Candy à la Mode';
    };

    subtest 'Sophy' => sub {
        my $sophy = Acme::PriPara::MainMembers::HojoSophy->new;
        is $sophy->name,          '北条 そふぃ';
        is $sophy->firstname,     'そふぃ';
        is $sophy->lastname,      '北条';
        is $sophy->age,            14;
        is $sophy->birthday,      '7/30';
        is $sophy->blood_type,    'AB';
        is $sophy->cv,            '久保田未夢';
        is $sophy->voiced_by,     '久保田未夢';
        is $sophy->costume_brand,  undef;

        $sophy->pripara_change;    # Sophy attempt to enter the PriPara World...
        is $sophy->costume_brand,  undef;

        $sophy->pripara_change('Red Flash'); # Sophy can get to the PriPara World after eating Red Flash
        is $sophy->costume_brand, 'Holic Trick';
    };

    subtest 'Sion' => sub {
        my $sion = Acme::PriPara::MainMembers::TodoSion->new;
        is $sion->name,          '東堂 シオン';
        is $sion->firstname,     'シオン';
        is $sion->lastname,      '東堂';
        is $sion->age,            13;
        is $sion->birthday,      '1/5';
        is $sion->blood_type,    'B';
        is $sion->cv,            '山北早紀';
        is $sion->voiced_by,     '山北早紀';
        is $sion->costume_brand,  undef;

        $sion->pripara_change;
        is $sion->costume_brand, 'Baby Monster';
    };

    subtest 'Dorothy' => sub {
        my $dorothy = Acme::PriPara::MainMembers::DorothyWest->new;
        is $dorothy->name,        'ドロシー・ウェスト';
        is $dorothy->firstname,   'ドロシー';
        is $dorothy->lastname,    'ウェスト';
        is $dorothy->age,          13;
        is $dorothy->birthday,    '2/5';
        is $dorothy->blood_type,  'A';
        is $dorothy->cv,          '澁谷梓希';
        is $dorothy->voiced_by,   '澁谷梓希';

        $dorothy->pripara_change;
        is $dorothy->costume_brand, undef;

        my $reona = Acme::PriPara::MainMembers::ReonaWest->new;
        $dorothy->pripara_change($reona);  # Dorothy is always being with Reona ...
        is $dorothy->costume_brand, 'Fortune Party';
    };

    subtest 'Reona' => sub {
        my $reona = Acme::PriPara::MainMembers::ReonaWest->new;
        is $reona->name,          'レオナ・ウェスト';
        is $reona->firstname,     'レオナ';
        is $reona->lastname,      'ウェスト';
        is $reona->age,            13;
        is $reona->birthday,      '2/5';
        is $reona->blood_type,    'A';
        is $reona->cv,            '若井友希';
        is $reona->voiced_by,     '若井友希';

        $reona->pripara_change;
        is $reona->costume_brand, undef;

        my $dorothy = Acme::PriPara::MainMembers::DorothyWest->new;
        $reona->pripara_change($dorothy);  # Reona is always being with Dorothy ...
        is $reona->costume_brand, 'Fortune Party';
    };
};

done_testing;

