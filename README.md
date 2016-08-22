# Buff::Extensions

[![Gem Version](https://badge.fury.io/rb/buff-extensions.svg)](http://badge.fury.io/rb/buff-extensions) [![Build Status](https://travis-ci.org/berkshelf/buff-extensions.svg?branch=master)](https://travis-ci.org/berkshelf/buff-extensions)

Extensions to Core Ruby classes

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'buff-extensions'
```

And then execute:

```shell
$ bundle
```

Or install it yourself as:

```shell
$ gem install buff-extensions
```

## Usage

Using it as a mixin:

```ruby
require 'buff/extensions'

class PowerHash
  include Buff::Extensions::DottedPaths
end
```

# Authors and Contributors

- Jamie Winsor ([jamie@vialstudios.com](mailto:jamie@vialstudios.com))

Thank you to all of our [Contributors](https://github.com/RiotGames/buff-extensions/graphs/contributors), testers, and users.
