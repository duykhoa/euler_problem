require_relative './point'
require_relative './adjacent'

module Al
  class LatticePaths
    attr_reader :x, :y

    def initialize(x, y)
      @x, @y = x, y
    end

    def count
      find_routes
      count
    end

    def find_routes
    end

    private

    def start_point
      Point.new(0, 0)
    end

    def end_point
      Point.new(x, y)
    end
  end
end
