use strict;
use warnings;
use Acme::PriPara;
use Acme::PriPara::MainMembers::ManakaLala;
use Acme::PriPara::MainMembers::MinamiMirei;
use Acme::PriPara::MainMembers::HojoSophie;
use Acme::PriPara::MainMembers::TodoShion;
use Acme::PriPara::MainMembers::DorothyWest;
use Acme::PriPara::MainMembers::LeonaWest;
use Test::More;
use utf8;

subtest 'Charactors' => sub {
    subtest 'Lala' => sub {
        my $lala = Acme::PriPara::MainMembers::ManakaLala->new;
        is $lala->name,          '真中 らぁら';
        is $lala->firstname,     'らぁら';
        is $lala->lastname,      '真中';
        is $lala->age,            10;
        is $lala->birthday,      '11/20';
        is $lala->cv,            '茜屋日海夏';
        is $lala->voiced_by,     '茜屋日海夏';
        is $lala->say,           'かしこま！';
        is $lala->costume_brand,  undef;    # withiout PriPara Changing, you cannot get costume_brand.

        $lala->pripara_change;
        is $lala->costume_brand, 'Twinkle Ribbon';  
    };

    subtest 'Mirei' => sub {
        my $mirei = Acme::PriPara::MainMembers::MinamiMirei->new;
        is $mirei->name,       '南 みれぃ';
        is $mirei->firstname,  'みれぃ';
        is $mirei->lastname,   '南';
        is $mirei->age,         13;
        is $mirei->birthday,   '10/1';
        is $mirei->cv,         '芹澤優';
        is $mirei->voiced_by,  '芹澤優';
        is $mirei->costume_brand, undef;

        $mirei->pripara_change;
        is $mirei->costume_brand, 'Candy à la Mode';
    };

    subtest 'Sophie' => sub {
        my $sophie = Acme::PriPara::MainMembers::HojoSophie->new;
        is $sophie->name,          '北条 そふぃ';
        is $sophie->firstname,     'そふぃ';
        is $sophie->lastname,      '北条';
        is $sophie->age,            14;
        is $sophie->birthday,      '7/30';
        is $sophie->cv,            '久保田未夢';
        is $sophie->voiced_by,     '久保田未夢';
        is $sophie->costume_brand,  undef;

        $sophie->pripara_change;    # Sophie attempt to enter the PriPara World...
        is $sophie->costume_brand,  undef;

        $sophie->pripara_change('Red Flash'); # Sophie can get to the PriPara World after eating Red Flash
        is $sophie->costume_brand, 'Holic Trick';
    };

    subtest 'Shion' => sub {
        my $shion = Acme::PriPara::MainMembers::TodoShion->new;
        is $shion->name,          '東堂 シオン';
        is $shion->firstname,     'シオン';
        is $shion->lastname,      '東堂';
        is $shion->age,            13;
        is $shion->birthday,      '1/5';
        is $shion->cv,            '山北早紀';
        is $shion->voiced_by,     '山北早紀';
        is $shion->costume_brand,  undef;

        $shion->pripara_change;
        is $shion->costume_brand, 'Baby Monster';
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

        my $leona = Acme::PriPara::MainMembers::LeonaWest->new;
        $dorothy->pripara_change($leona);  # Dorothy is always being with Leona ...
        is $dorothy->costume_brand, 'Fortune Party';
    };
    subtest 'Leona' => sub {
        my $leona = Acme::PriPara::MainMembers::LeonaWest->new;
        is $leona->name,       'レオナ・ウェスト';
        is $leona->firstname,  'レオナ';
        is $leona->lastname,   'ウェスト';
        is $leona->age,         13;
        is $leona->birthday,   '2/5';
        is $leona->cv,         '若井友希';
        is $leona->voiced_by,  '若井友希';

        $leona->pripara_change;
        is $leona->costume_brand, undef;

        my $dorothy = Acme::PriPara::MainMembers::DorothyWest->new;
        $leona->pripara_change($dorothy);  # Leona is always being with Dorothy ...
        is $leona->costume_brand, 'Fortune Party';
    };
};

done_testing;

