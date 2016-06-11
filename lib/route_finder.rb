module Al
  class RouteFinder
    attr_reader :start_point, :end_point

    def initialize(start_point, end_point)
      @start_point = start_point
      @end_point   = end_point
    end

    def find_all
      discover(start_point)
    end

    def discover(point)
      Adjacent.for(point, end_point).each do |point|
        if point == end_point
          sol_count += 1
        else
          visited_queue.enq point
        end
      end

      discover(visited_queue.deq) unless visited_queue.size == 0
    end

    def sol_count
      @sol_count ||= 0
    end

    def visited_queue
      @queue ||= Queue.new
    end
  end
end
