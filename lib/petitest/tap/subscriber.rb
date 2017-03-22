require "petitest/subscribers/base_subscriber"
require "petitest/subscriber_concerns/output_concern"

module Petitest
  module Tap
    class Subscriber < ::Petitest::Subscribers::BaseSubscriber
      include ::Petitest::SubscriberConcerns::OutputConcern

      attr_writer :index

      # @note Override
      def after_running_test_case(test_case)
        super
        string = ::Petitest::Tap::Texts::TestCaseText.new(
          index: index,
          test_case: test_case,
        ).to_s
        output.puts(string)
      ensure
        increment
      end

      # @note Override
      def before_running_test_cases(test_cases)
        super
        string = [
          "TAP version 13",
          "1..#{test_cases.length}",
        ].join("\n")
        output.puts(string)
      end

      # @return [Integer]
      def increment
        self.index += 1
      end

      # @return [Integer]
      def index
        @index || 0
      end
    end
  end
end
