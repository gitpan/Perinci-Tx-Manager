
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::chdir" => 0,
    "Module::Build" => "0.3601",
    "Perinci::Access::InProcess" => "0.32",
    "Perinci::Examples" => 0,
    "Test::More" => "0.96",
    "UUID::Random" => 0
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "A Rinci transaction manager",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Perinci-Tx-Manager",
  "dist_version" => "0.39",
  "license" => "perl",
  "module_name" => "Perinci::Tx::Manager",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "DBD::SQLite" => 0,
    "DBI" => 0,
    "File::Flock" => 0,
    "File::Remove" => 0,
    "JSON" => 0,
    "Log::Any" => 0,
    "Riap" => "v1.1.14",
    "Rinci" => "v1.1.29",
    "UUID::Random" => 0,
    "perl" => "5.010001"
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
