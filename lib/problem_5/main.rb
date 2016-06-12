require_relative './prime_factor'
module Problem_5
  class Main
    attr_reader :max

    def initialize(min: 2, max: 10)
      @max = max
      @min = min
    end

    def solve
      analyzed_hash = Hash.new(0)

      @min.upto(@max).each do |num|
        analyzed_hash.merge!(analyze(num)) { |key, old, new| old > new ? old : new }
      end

      analyzed_hash.inject(1) { |s, factor| s * factor.flatten[0]**factor.flatten[1] }
    end

    def analyze(num)
      PrimeFactor.for(num)
    end
  end
end
