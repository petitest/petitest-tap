# Petitest::Tap

[![Gem Version](https://badge.fury.io/rb/petitest-tap.svg)](https://rubygems.org/gems/petitest-tap)
[![Documentation](http://img.shields.io/badge/docs-rdoc.info-blue.svg)](http://www.rubydoc.info/github/petitest/petitest-tap)

TAP output for [Petitest](https://github.com/petitest/petitest).

## Installation

Add this line to your application"s Gemfile:

```ruby
gem "petitest-tap"
```

And then execute:

```bash
bundle
```

Or install it yourself as:

```bash
gem install petitest-tap
```

## Usage

1. Require `petitest/tap`
2. Change `Petitest.configuration.subscribers`
3. Run tests

```ruby
require "petitest/tap"
Petitest.configuration.subscribers = [Petitest::Tap::Subscriber.new]
```

### nyan

Demo with https://github.com/calvinmetcalf/tap-nyan:

![demo](/images/demo.gif)
