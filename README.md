# Buff::Extensions
[![Gem Version](https://badge.fury.io/rb/buff-extensions.png)](http://badge.fury.io/rb/buff-extensions)
[![Build Status](https://travis-ci.org/RiotGames/buff-extensions.png?branch=master)](https://travis-ci.org/RiotGames/buff-extensions)

Extensions to Core Ruby classes

## Installation

Add this line to your application's Gemfile:

    gem 'buff-extensions'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install buff-extensions

## Usage

Using it as a mixin

    require 'buff/extensions'

    class PowerHash
      include Buff::Extensions::DottedPaths
    end

# Authors and Contributors

* Jamie Winsor (<jamie@vialstudios.com>)

Thank you to all of our [Contributors](https://github.com/RiotGames/buff-extensions/graphs/contributors), testers, and users.
