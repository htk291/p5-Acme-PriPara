requires 'perl', '5.008001';
requires 'Mouse';
requires 'Data::Section::Simple';
requires 'YAML::Tiny';

on 'test' => sub {
    requires 'Test::More', '0.98';
};

