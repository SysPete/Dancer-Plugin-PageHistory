use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'Dancer::Plugin::PageHistory',
    AUTHOR       => q{Peter Mottram (SysPete) <peter@sysnix.com>},
    VERSION_FROM => 'lib/Dancer/Plugin/PageHistory.pm',
    ABSTRACT => 'Collect interesting pages a user has visited in the session',
    LICENSE  => 'perl',
    PL_FILES => {},
    MIN_PERL_VERSION   => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Class::Load'           => 0,
        'File::Spec'            => 0,
        'File::Temp'            => 0,
        'HTTP::Cookies'         => 0,
        'HTTP::Request::Common' => 0,
        'JSON'                  => 0,
        'Plack'                 => '1.0031',
        'Test::Exception'       => 0,
        'Test::More'            => 0,
    },
    PREREQ_PM => {
        'Dancer'                => '1.3136',
        'Data::Structure::Util' => '0.16',
        'Moo'                   => '2.000',
        'namespace::clean'      => 0,
        'Scalar::Util'          => 0,
        'Sub::Quote'            => 0,
        'Type::Tiny'            => 0,
        'URI'                   => 0,
    },
    dist => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean      => { FILES => 'Dancer-Plugin-PageHistory-* t/TestApp/sessions' },
    META_MERGE => {
        resources => {
            repository =>
              'https://github.com/SysPete/Dancer-Plugin-PageHistory',
            bugtracker =>
              'https://github.com/SysPete/Dancer-Plugin-PageHistory/issues',
            IRC => 'irc://irc.freenode.net/#interchange',
        },
    },
);
