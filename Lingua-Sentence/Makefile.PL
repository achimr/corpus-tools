use inc::Module::Install;

# Define metadata
name	    'Lingua-Sentence';
all_from    'lib/Lingua/Sentence.pm';

# Dependencies
requires    'Carp' => 0;
requires    'File::ShareDir' => '1.02';
test_requires	'Test::More' => '0.47';

install_share;

WriteAll;
