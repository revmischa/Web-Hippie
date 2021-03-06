sub author_tests  { }
sub readme_from   { }
sub auto_set_repository { }

use inc::Module::Install;
name 'Web-Hippie';
all_from 'lib/Web/Hippie.pm';
readme_from 'lib/Web/Hippie.pm';
build_requires 'Test::More';
test_requires 'Test::Requires';
requires 'Plack';
requires 'AnyMQ' => '0.35';
requires 'Class::Accessor' => '0.34';
requires 'Protocol::WebSocket' => '0.00903';
requires 'JSON';
requires 'AnyEvent';
requires 'HTTP::Date';

install_share 'share';

auto_include_deps;
author_tests('xt');
auto_set_repository;
WriteAll;
