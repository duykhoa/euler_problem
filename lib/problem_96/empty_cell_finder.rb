module Problem_96
  class EmptyCellFinder
    def self.find(matrix)
      size = matrix.size
      cells = []

      (0...size).each do |i|
        (0...size).each do |j|
          if matrix[i][j] == 0
            cells << Cell.new(i, j)
          end
        end
      end

      cells
    end
  end
end
