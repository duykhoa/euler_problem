module Al
  class RouteFinder
    def initialize(size)
      @size = size
    end

    private

    def adjacent(point)
      [
        Point.new(point.x-1, point.y),
        Point.new(point.x+1, point.y),
        Point.new(point.x, point.y+1),
        Point.new(point.x, point.y-1),
      ]
    end
  end
end
