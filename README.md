# Qotd ~ Quote of the Day

Displays a random formatted quote from a massive compilation of hilarious
quotes.

The output is formatted to always be spaced out to the 80th column, and the
quote is displayed with reversed foreground / background colors.

![screenshot](screenshot/screenshot.png)

A big thanks to [textfiles.com](textfiles.com), where I got all the quotes.
Without it, there would be no quote of the day. The reformatted file with all
the quotes in it numbers over 3000 lines!

## Todo

- Make a method that returns a quotes array.
- Make a method that returns the same formatted array as before.
    - Test each of them.

## Installation

Add this line to your application's Gemfile:

    gem 'qotd'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install qotd

## Usage

Add it to a shell configuration file.

    # ~/.bashrc
    # ...
    qotd

## Contributing

1. Fork it ( http://github.com/jfjhh/qotd/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

