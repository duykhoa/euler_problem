module Problem_13
  class Plus
    def call(num1, num2)
      memory = 0
      times = num1.length - 1
      result = ''

      (0..times).reverse_each do |i|
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
