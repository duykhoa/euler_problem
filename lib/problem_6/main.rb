module Problem_6
  class Main
    attr_reader :num

    def initialize(num)
      @num = num
    end

    def solve
      num**2 * (num + 1)**2 / 4 -
        num * (num + 1) * (2 * num + 1) /6
    end
  end
end
