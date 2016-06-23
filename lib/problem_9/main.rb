module Problem_9
  class Main
    def solve(s = 1000)
      (1..s/2).each do |a|
        (1..s/2).each do |b|
          if 2 * s * (a + b) == s**2 + 2 * a * b
            return a, b, s - a - b
          end
        end
      end
    end
  end
end
