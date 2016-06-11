module Al
  module Add
    def +(point)
      Point.new(x + point.x, y + point.y)
    end
  end

  Point = Struct.new(:x, :y) do
    include Add

    def valid?(max_point)
      x >= 0 && y >= 0 &&
        x <= max_point.x && y <= max_point.y
    end
  end

  Movement = Struct.new(:x, :y) do
    include Add
  end

  Size = Struct.new(:x, :y)
end
