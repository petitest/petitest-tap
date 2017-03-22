module Petitest
  module Tap
    module Texts
      class TestCaseText
        NOT_OK = "not ok"
        OK = "ok"
        SKIP_DIRECTIVE = " # SKIP"

        # @param index [Integer]
        # @param test_case [Petitest::TestCase]
        def initialize(index:, test_case:)
          @index = index
          @test_case = test_case
        end

        # @note Override
        def to_s
          string = "#{ok_or_not_ok} #{test_number} - #{description}"
          string += SKIP_DIRECTIVE if test_case.skipped?
          string
        end

        private

        # @return [String]
        def description
          test_case.test_signature
        end

        # @return [Integer]
        def index
          @index
        end

        # @return [String]
        def ok_or_not_ok
          test_case.passed? ? OK : NOT_OK
        end

        # @return [Petitest::TestCase]
        def test_case
          @test_case
        end

        # @return [Integer]
        def test_number
          index + 1
        end
      end
    end
  end
end
