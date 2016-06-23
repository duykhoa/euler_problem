module Problem_10
  class Main
    def solve(n = 1000)
      sum = 2 + 3
      pos_prime = 5
      counter = 2

      while (pos_prime <= n) do
        if prime?(pos_prime)
          primes << pos_prime
          sum += pos_prime
        end

        pos_prime += counter
        counter = 6 - counter
      end

      sum
    end

    def primes
      @primes ||= [2, 3]
    end

    def prime?(n)
      i = 0
      prime = 0

      while prime**2 < n
        prime = primes[i]
        if n%prime == 0
          return false
        end

        i += 1
      end

      true
    end
  end
end
