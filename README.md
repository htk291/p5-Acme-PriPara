[![Build Status](https://travis-ci.org/htk291/p5-Acme-PriPara.png?branch=master)](https://travis-ci.org/htk291/p5-Acme-PriPara) [![Coverage Status](https://coveralls.io/repos/htk291/p5-Acme-PriPara/badge.png?branch=master)](https://coveralls.io/r/htk291/p5-Acme-PriPara?branch=master)
# NAME

Acme::PriPara - It's new $module

# SYNOPSIS

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

# DESCRIPTION

PriPara is a famous Japanese animation.  
Acme::PriPara provides characters information of PriPara.

# SEE ALSO

- PriPara Official Site

    [http://www.takaratomy-arts.co.jp/specials/pripara/](http://www.takaratomy-arts.co.jp/specials/pripara/)

- PriPara (Wikipedia - ja)

    [http://ja.wikipedia.org/wiki/%E3%83%97%E3%83%AA%E3%83%91%E3%83%A9](http://ja.wikipedia.org/wiki/%E3%83%97%E3%83%AA%E3%83%91%E3%83%A9)

- PriPara (Wikipedia - ja)

    [http://en.wikipedia.org/wiki/PriPara](http://en.wikipedia.org/wiki/PriPara)

# LICENSE

Copyright (C) htk291.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

htk291 <htk291@gmail.com>
