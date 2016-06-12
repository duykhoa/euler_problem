module Problem_2
  class Main
    def initialize(max)
      @max = max
    end

    def solve
      sum, a, b = 1, 1, 2

      while (b <= @max)
        sum += b if b % 2 == 1
        b, a = a + b, b
      end

      sum
    end
  end
end
