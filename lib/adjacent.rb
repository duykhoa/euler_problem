module Al
  class Adjacent
    POSSIBLE_MOVES =
      [
        Movement.new(-1, 0),
        Movement.new(1, 0),
        Movement.new(0, 1),
        Movement.new(0, -1),
      ].freeze

    attr_reader :max_point

    def initialize(max_point)
      @max_point = max_point
    end

    def self.for(point, max_point)
      new(max_point).adjacent point
    end

    def adjacent(point)
      POSSIBLE_MOVES.inject([]) do |list, move|
        new_point = point + move
        new_point.valid?(max_point) ? list << new_point : list
      end
    end
  end
end
