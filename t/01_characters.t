use strict;
use warnings;
use Acme::PriPara;
use Acme::PriPara::MainMembers::ManakaLaala;
use Acme::PriPara::MainMembers::MinamiMirei;
use Acme::PriPara::MainMembers::HojoSophy;
use Acme::PriPara::MainMembers::TodoSion;
use Acme::PriPara::MainMembers::DorothyWest;
use Acme::PriPara::MainMembers::ReonaWest;
use Test::More;
use utf8;

subtest 'Charactors' => sub {
    subtest 'Lala' => sub {
        my $laala = Acme::PriPara::MainMembers::ManakaLaala->new;
        is $laala->name,          '真中 らぁら';
        is $laala->firstname,     'らぁら';
        is $laala->lastname,      '真中';
        is $laala->age,            10;
        is $laala->birthday,      '11/20';
        is $laala->cv,            '茜屋日海夏';
        is $laala->voiced_by,     '茜屋日海夏';
        is $laala->say,           'かしこま！';
        is $laala->costume_brand,  undef;    # withiout PriPara Changing, you cannot get costume_brand.

        $laala->pripara_change;
        is $laala->costume_brand, 'Twinkle Ribbon';  
    };

    subtest 'Mirei' => sub {
        my $mirei = Acme::PriPara::MainMembers::MinamiMirei->new;
        is $mirei->name,          '南 みれぃ';
        is $mirei->firstname,     'みれぃ';
        is $mirei->lastname,      '南';
        is $mirei->age,            13;
        is $mirei->birthday,      '10/1';
        is $mirei->cv,            '芹澤優';
        is $mirei->voiced_by,     '芹澤優';
        is $mirei->costume_brand,  undef;

        $mirei->pripara_change;
        is $mirei->costume_brand, 'Candy à la Mode';
    };

    subtest 'Sophie' => sub {
        my $sophy = Acme::PriPara::MainMembers::HojoSophy->new;
        is $sophy->name,          '北条 そふぃ';
        is $sophy->firstname,     'そふぃ';
        is $sophy->lastname,      '北条';
        is $sophy->age,            14;
        is $sophy->birthday,      '7/30';
        is $sophy->cv,            '久保田未夢';
        is $sophy->voiced_by,     '久保田未夢';
        is $sophy->costume_brand,  undef;

        $sophy->pripara_change;    # Sophie attempt to enter the PriPara World...
        is $sophy->costume_brand,  undef;

        $sophy->pripara_change('Red Flash'); # Sophie can get to the PriPara World after eating Red Flash
        is $sophy->costume_brand, 'Holic Trick';
    };

    subtest 'Shion' => sub {
        my $sion = Acme::PriPara::MainMembers::TodoSion->new;
        is $sion->name,          '東堂 シオン';
        is $sion->firstname,     'シオン';
        is $sion->lastname,      '東堂';
        is $sion->age,            13;
        is $sion->birthday,      '1/5';
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
        is $dorothy->cv,          '澁谷梓希';
        is $dorothy->voiced_by,   '澁谷梓希';

        $dorothy->pripara_change;
        is $dorothy->costume_brand, undef;

        my $reona = Acme::PriPara::MainMembers::ReonaWest->new;
        $dorothy->pripara_change($reona);  # Dorothy is always being with Leona ...
        is $dorothy->costume_brand, 'Fortune Party';
    };
    subtest 'Leona' => sub {
        my $reona = Acme::PriPara::MainMembers::ReonaWest->new;
        is $reona->name,          'レオナ・ウェスト';
        is $reona->firstname,     'レオナ';
        is $reona->lastname,      'ウェスト';
        is $reona->age,            13;
        is $reona->birthday,      '2/5';
        is $reona->cv,            '若井友希';
        is $reona->voiced_by,     '若井友希';

        $reona->pripara_change;
        is $reona->costume_brand, undef;

        my $dorothy = Acme::PriPara::MainMembers::DorothyWest->new;
        $reona->pripara_change($dorothy);  # Leona is always being with Dorothy ...
        is $reona->costume_brand, 'Fortune Party';
    };
};

done_testing;

