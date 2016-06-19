module Problem_96
  class Checker
    SIZE = 9

    def check(array, x, y, value)
      @array = array
      @x, @y = x, y
      @value = value

      check_row && check_col && check_box
    end

    def check_row(array = @array, x = @x, y = @y, value = @value)
      (0...SIZE).each do |j|
        return false if array[x][j] == value
      end

      true
    end

    def check_col(array = @array, x = @x, y = @y, value = @value)
      (0...SIZE).each do |i|
        return false if array[i][y] == value
      end

      true
    end

    def check_box(array = @array, x = @x, y = @y, value = @value)
      box_x = (x / 3) * 3
      box_y = (x / 3) * 3

      (box_x..(box_x + 2)).each do |i|
        (box_y..(box_y + 2)).each do |j|
          return false if array[i][j] == value
        end
      end

      true
    end
  end
end
