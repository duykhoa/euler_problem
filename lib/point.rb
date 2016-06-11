module Al
  Point = Struct.new(:x, :y) do
    def +(point)
      Point.new(x + point.x, y + point.y)
    end

    def valid?
      x >= 0 && y >= 0
    end
  end

  Movement = Point
  Size = Point
end
