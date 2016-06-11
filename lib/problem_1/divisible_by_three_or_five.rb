module Problem1
  class DivisibleByThreeOrFive
    THREE = 3
    FIVE  = 5

    def self.divisible?(value)
      value % THREE == 0 ||
        value % FIVE  == 0
    end
  end
end
