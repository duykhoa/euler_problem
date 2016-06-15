module Problem_7
  class Main
    attr_reader :pos

    def initialize(pos)
      @pos = pos
    end

    def solve
      pos < 3 ? start_prime[pos] : prime_at(pos)
    end

    def start_prime
      {
        1 => 2,
        2 => 3
      }
    end

    def prime_at(pos)
      jump = 2
      current_pos = 3
      pos_prime = 5

      while (current_pos < pos)
        pos_prime += jump
        jump = 6 - jump

        if prime?(pos_prime)
          current_pos += 1
          primes << pos_prime
        end
      end

      pos_prime
    end

    def prime?(value)
      primes.each do |i|
        return true if i**2 > value
        return false if value % i == 0
      end
    end

    def primes
      @primes ||= [2, 3, 5]
    end
  end
end
