module Problem_15
  Point = Struct.new(:x, :y) do
    def +(point)
      Point.new(x + point.x, y + point.y)
    end
  end

  Size = Struct.new(:x, :y)
  Move = Struct.new(:x, :y)
end
