module Problem_3
  class Main
    def initialize(num)
      @num = num
    end

    def solve
      counter = 2
      large_fact = @num
      new_num = @num

      while (counter**2 <= new_num)
        if new_num % counter == 0
          new_num = new_num / counter
          large_fact = new_num
        else
          counter = counter == 2 ? 3 : counter + 2
        end
      end

      large_fact
    end
  end
end
