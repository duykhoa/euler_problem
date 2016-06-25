module Problem_13
  class Plus
    def call(num1, num2)
      memory = 0
      result = ''

      max_length = [num1.length, num2.length].max

      if num1.length > num2.length
        num2.insert 0, "0" * (max_length - num2.length)
      else
        num1.insert 0, "0" * (max_length - num1.length)
      end

      (0...max_length).reverse_each do |i|
        x, memory = add(num1[i], num2[i], memory)
        result.insert 0, x.to_s
      end

      result.insert 0, memory.to_s if memory > 0
      result
    end

    def add(digit_1, digit_2, memory)
      sum = digit_1.to_i + digit_2.to_i + memory
      [(sum % 10), sum/10]
    end
  end
end
