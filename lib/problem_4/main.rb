require_relative './palindrome'

module Problem_4
  Result = Struct.new(:x, :y) do
    def result
      x * y
    end
  end

  class Main
    attr_reader :max

    def initialize(max)
      @max = max
    end

    def solve
      max.downto(1).each do |i|
        max.downto(1).each do |j|
          if palindrome?(i * j)
            return Result.new(i, j)
          end
        end
      end
    end

    def palindrome?(num)
      palindrome_checker.for(num)
    end

    def palindrome_checker
      @checker ||= Palindrome.new
    end
  end
end
