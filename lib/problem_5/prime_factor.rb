module Problem_5
  class PrimeFactor
    def self.for(num)
      new(num).analyze
    end

    def initialize(num)
      @num = num
      @factors = Hash.new(0)
    end

    def analyze
      new_num = @num
      counter = 2

      while (counter <= new_num)
        if (new_num % counter == 0)
          new_num = new_num / counter
          @factors[counter] += 1
        else
          counter = counter == 2 ? 3 : counter + 2
        end
      end

      @factors
    end
  end
end
