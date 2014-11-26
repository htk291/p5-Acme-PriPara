[![Build Status](https://travis-ci.org/htk291/p5-Acme-PriPara.png?branch=master)](https://travis-ci.org/htk291/p5-Acme-PriPara) [![Coverage Status](https://coveralls.io/repos/htk291/p5-Acme-PriPara/badge.png?branch=master)](https://coveralls.io/r/htk291/p5-Acme-PriPara?branch=master)
# NAME

Acme::PriPara - It's new $module

# SYNOPSIS

    use Acme::PriPara;

    my ($lala, $mirei, $sophie, $shion, $dorothy, $leona) = Acme::PriPara->main_members;

    $lala->name;            # => 真中 らぁら
    $lala->firstname;       # => らぁら
    $lala->lastname;        # => 真中
    $lala->age;             # => 10
    $lala->birthday;        # => 11/20
    $lala->cv;              # => 茜屋日海夏
    $lala->say;             # => かしこま！
    $lala->pripara_change;
    $lala->costume_brand;   # => Twinkle Ribbon

# DESCRIPTION

SEE CONCEPT AT [https://github.com/htk291/p5-Acme-PriPara/blob/master/etc/90\_concept.t](https://github.com/htk291/p5-Acme-PriPara/blob/master/etc/90_concept.t)

PriPara is a famous Japanese animation.  
Acme::PriPara provides characters information of PriPara.

# SEE ALSO

- PriPara Official Site

    [http://www.takaratomy-arts.co.jp/specials/pripara/](http://www.takaratomy-arts.co.jp/specials/pripara/)

- プリパラ (Wikipedia - ja)

    [http://ja.wikipedia.org/wiki/%E3%83%97%E3%83%AA%E3%83%91%E3%83%A9](http://ja.wikipedia.org/wiki/%E3%83%97%E3%83%AA%E3%83%91%E3%83%A9)

- PriPara (Wikipedia - en)

    [http://en.wikipedia.org/wiki/PriPara](http://en.wikipedia.org/wiki/PriPara)

# LICENSE

Copyright (C) htk291.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

htk291 <htk291@gmail.com>
