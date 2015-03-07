[![Build Status](https://travis-ci.org/htk291/p5-Acme-PriPara.png?branch=master)](https://travis-ci.org/htk291/p5-Acme-PriPara) [![Coverage Status](https://coveralls.io/repos/htk291/p5-Acme-PriPara/badge.png?branch=master)](https://coveralls.io/r/htk291/p5-Acme-PriPara?branch=master)
# NAME

Acme::PriPara - It's new $module

# SYNOPSIS

    use Acme::PriPara;

    my ($laala, $mirei, $sophy, $sion, $dorothy, $reona) = Acme::PriPara->main_members;

    print $laala->name;            # => 真中 らぁら
    print $laala->firstname;       # => らぁら
    print $laala->lastname;        # => 真中
    print $laala->age;             # => 10
    print $laala->birthday;        # => 11/20
    print $laala->cv;              # => 茜屋日海夏
    print $laala->say;             # => かしこま！
    print $laala->color;           # => ピンク

    $laala->pripara_change;        # => $laala get into PriPara world
    print $laala->costume_brand;   # => Twinkle Ribbon

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
