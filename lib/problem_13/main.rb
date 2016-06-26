require_relative './plus'

module Problem_13
  class Main
    def solve(*num_list)
      num1, *tail = num_list
      return num1 if tail.empty?

      plus_caller.call(
        num1,
        solve(*tail)
      )
    end

    def plus_caller
      @plus_caller ||= Plus::new
    end
  end
end
