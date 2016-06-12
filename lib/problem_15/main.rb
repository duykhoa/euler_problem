require_relative './util'

module Problem_15
  class Main
    attr_reader :start_point, :end_point
    def initialize(size, start_point, end_point)
      @size = size
      @start_point = start_point
      @end_point = end_point
    end

    def solve
      found = 0

      while visited_queue.size > 0
        explore_point = visited_queue.shift

        if explore_point == end_point
          found += 1
          next
        end

        visited_queue.concat possible_moves(explore_point)
      end

      found
    end

    def visited_queue
      @visited_queue ||= [start_point]
    end

    def possible_moves(point)
      movement.move(point)
    end

    def movement
      Movement.new(end_point)
    end
  end
end
