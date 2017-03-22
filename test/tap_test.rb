require "petitest/autorun"
require "petitest/tap"

Petitest.configuration.subscribers = [Petitest::Tap::Subscriber.new]

class TapTest < Petitest::TestGroup
  def test_a
    assert do
      "a"
    end
  end

  def test_b
    assert do
      "b"
    end
  end
end
