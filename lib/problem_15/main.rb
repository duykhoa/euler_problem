require_relative './util'

module Problem_15
  class Main
    def initialize(size, start_point, end_point)
      @size = size
      @start_point = start_point
      @end_point = end_point
    end

    def solve
    end

    private

    def possible_move(point)
      movement.for(point)
    end
  end
end
