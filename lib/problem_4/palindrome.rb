module Problem_4
  class Palindrome
    def for(num)
      num.to_s == num.to_s.reverse
    end
  end
end
