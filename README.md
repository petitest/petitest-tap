# Petitest::Tap

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

### Pro tip

https://github.com/calvinmetcalf/tap-nyan demo:

![demo](/images/demo.gif)
