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

    $ gem install blinkbox-rubocop --source "http://artifactory.blinkbox.local/artifactory/api/gems/bbb-gems/"

## Usage

From within the code project you wish to evaluate

```
$ bbrubocop
```

Alternatively you can pass rubocop a list of files and directories to check:

```
$ bbrubocop lib/blinkbox/rubocop.rb bin
```

To run only on files with local changes - [tracked, staged and unstaged, changes against current HEAD](http://stackoverflow.com/questions/5096268/git-reports-get-changed-files)
```
<<<<<<< HEAD
$ bbrubocop --git-diff
# or
$ bbrubocop -g
```

For more details check the available command-line options:

```
$ bbrubocop -h
```

## TODOs

Add in a Rake task handler
