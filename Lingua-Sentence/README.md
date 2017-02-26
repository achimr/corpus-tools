# NAME

Lingua::Sentence - Perl extension for breaking text paragraphs into sentences

# SYNOPSIS

        use Lingua::Sentence;

        my $splitter = Lingua::Sentence->new("en");

        my $text = 'This is a paragraph. It contains several sentences. "But why," you ask?';

        print $splitter->split($text);

# DESCRIPTION

This module allows splitting of text paragraphs into sentences. It is based on scripts developed by Philipp Koehn and Josh Schroeder for processing the Europarl corpus ([http://www.statmt.org/europarl/](http://www.statmt.org/europarl/)).

The module uses punctuation and capitalization clues to split paragraphs into an newline-separated string with one sentence per line. For example:

        This is a paragraph. It contains several sentences. "But why," you ask?

goes to:

        This is a paragraph.
        It contains several sentences.
        "But why," you ask?

Languages currently supported by the module are:

- Catalan
- Czech
- Dutch
- English
- French
- German
- Greek
- Hungarian
- Icelandic
- Italian
- Latvian
- Polish
- Portuguese
- Russian
- Spanish
- Slovak
- Slovenian
- Swedish

## Nonbreaking Prefixes Files

Nonbreaking prefixes are loosely defined as any word ending in a period that does NOT indicate an end of sentence marker. A basic example is Mr. and Ms. in English.

The sentence splitter module uses the nonbreaking prefix files included in this distribution.

To add a file for other languages, follow the naming convention nonbreaking\_prefix.?? and use the two-letter language code you intend to use when creating a Lingua::Sentence object.

The sentence splitter module will first look for a file for the language it is processing, and fall back to English if a file
for that language is not found.

For the splitter, normally a period followed by an uppercase word results in a sentence split. If the word preceeding the period
is a nonbreaking prefix, this line break is not inserted.

A special case of prefixes, NUMERIC\_ONLY, is included for special cases where the prefix should be handled ONLY when before numbers.
For example, "Article No. 24 states this." the No. is a nonbreaking prefix. However, in "No. It is not true." No functions as a word.

See the example prefix files included in the distribution for more examples.

### CREDITS

Thanks for the following individuals for supplying nonbreaking prefix files:
Bas Rozema (Dutch), Hilário Leal Fontes (Portuguese), Jesús Giménez (Catalan & Spanish), Anne-Kathrin Schumann (Russian)

## EXPORT

- new($lang\_id)

    Instantiate an object to split sentences in language $lang\_id. If the language is not supported, a splitter object for English will be instantiated.

- new($lang\_id,$nonbreaking\_prefix\_file)

    Instantiate an object to split sentences in language $lang\_id and the nonbreaking prefix file $nonbreaking\_prefix\_file. If the file does not exist, a splitter object for English will be instantiated.

- split($text)

    Split sentences in $text by inserting newline characters at the sentence breaks. The resulting string is also terminated with a newline.

- split\_array($text)

    Split sentences in $text into an array of sentences.

# SUPPORT

Bugs should always be submitted via the project hosting bug tracker

[http://code.google.com/p/corpus-tools/issues/list](http://code.google.com/p/corpus-tools/issues/list)

For other issues, contact the maintainer.

# SEE ALSO

[Text::Sentence](https://metacpan.org/pod/Text::Sentence), [Lingua::EN::Sentence](https://metacpan.org/pod/Lingua::EN::Sentence), [Lingua::DE::Sentence](https://metacpan.org/pod/Lingua::DE::Sentence), [Lingua::HE::Sentence](https://metacpan.org/pod/Lingua::HE::Sentence)

# AUTHOR

Achim Ruopp, <achimru@gmail.com>

# COPYRIGHT AND LICENSE

Copyright (C) 2010 by Digital Silk Road

Portions Copyright (C) 2005 by Philip Koehn and Josh Schroeder (used with permission)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with this program.  If not, see &lt;http://www.gnu.org/licenses/>.
