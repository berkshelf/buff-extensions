# Contributing

## Running tests

### Install prerequisites

Install the latest version of [Bundler](http://gembundler.com)

    $ gem install bundler

Clone the project

    $ git clone git://github.com/RiotGames/buff-extensions.git

and run:

    $ cd buff-extensions
    $ bundle install

Bundler will install all gems and their dependencies required for testing and developing.

### Running unit (RSpec) tests

    $ bundle exec guard start
