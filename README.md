# Blinkbox::Rubocop

An easy to use wrapper for Rubocop, and Blinkbox code styles. Rather than faff about with
storing config files, and passing commandline switches to Rubocop; just install this.

Under the hood, it'll automagically check out the latest code styles, and instruct Rubocop
to run with them.

Future scoping of this could include the auto deployment of custom in-house Rubocop Cop files.

## Installation

Add this line to your application's Gemfile:

    gem 'blinkbox-rubocop'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blinkbox-rubocop

## Usage

From within the code project you wish to evaluate

```
bbrubocop
```

## TODOs

Add in a Rake task handler
