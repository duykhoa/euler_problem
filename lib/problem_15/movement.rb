module Problem_15
  class Movement
    POSSIBLE_MOVES = [
      Move.new(1, 0),
      Move.new(0, 1)
    ]

    attr_reader :max_point

    def initialize(max_point)
      @max_point = max_point
    end

    def move(point)
      POSSIBLE_MOVES.inject([]) do |result, move|
        new_point = point + move
        add(result, new_point)
      end
    end

    def add(result, new_point)
      valid?(new_point) ? result << new_point : result
    end

    def valid?(point)
      point.x >=0 && point.y >=0 &&
      point.x <= max_point.x && point.y <= max_point.y
    end
  end
end
