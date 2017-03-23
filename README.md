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

### Output

See https://testanything.org/ for more details about the TAP specifications.

```
TAP version 13
1..2
ok 1 - TapTest#test_a
ok 2 - TapTest#test_b
```

### Nyan

Demo with https://github.com/calvinmetcalf/tap-nyan:

![demo](/images/demo.gif)
