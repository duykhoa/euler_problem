require_relative 'divisible_by_three_or_five'

module Problem1
  class Main
    attr_reader :limit

    def initialize(limit)
      @limit = limit
    end

    def solve
      (1...limit).inject(0) do |sum, i|
        divisible(i) ? sum + i : sum
      end
    end

    private

    def divisible(val)
      DivisibleByThreeOrFive.divisible?(val)
    end
  end
end
