use lib 'lib';
use AudioFile::Info::Build;

my $module = 'AudioFile::Info::Ogg::Vorbis::Header';

my $b = AudioFile::Info::Build->new(
    module_name => $module,
    dist_version => '1.08',
    license => 'perl',
    requires => {
        perl                  => '5.6.0',
        'AudioFile::Info'     => 0,
        'Ogg::Vorbis::Header' => 0,
    },
    build_requires => {
        'Module::Build' => 0,
        YAML            => 0,
    },
    create_makefile_pl => 'traditional',
);

$b->create_build_script;
$b->notes(package => $module);
$b->notes(config  => {
                      read_mp3 => 0,
                      write_mp3 => 0,
                      read_ogg => 1,
                      write_ogg => 1,
                      pure_perl => 0
                     });
