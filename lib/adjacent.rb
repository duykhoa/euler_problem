module Al
  class Adjacent
    POSSIBLE_MOVES =
      [
        Movement.new(-1, 0),
        Movement.new(1, 0),
        Movement.new(0, 1),
        Movement.new(0, -1),
      ].freeze

    def self.for(point)
      new.adjacent point
    end

    private

    def adjacent(point)
      POSSIBLE_MOVES.inject([]) do |list, move|
        new_point = point + move
        new_point.valid? ? list << new_point : list
      end
    end
  end
end
