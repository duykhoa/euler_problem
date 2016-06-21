module Problem_96
  class Checker
    SIZE = 9

    def check(array, x, y, value)
      check_row(array, x, y, value) &&
      check_col(array, x, y, value) &&
      check_box(array, x, y, value)
    end

    def check_row(array, x, y, value)
      (0...SIZE).each do |j|
        return false if array[x][j] == value
      end

      true
    end

    def check_col(array, x, y, value )
      (0...SIZE).each do |i|
        return false if array[i][y] == value
      end

      true
    end

    def check_box(array, x, y, value)
      box_x = (x / 3) * 3
      box_y = (y / 3) * 3

      (box_x..(box_x + 2)).each do |i|
        (box_y..(box_y + 2)).each do |j|
          return false if array[i][j] == value
        end
      end

      true
    end
  end
end
