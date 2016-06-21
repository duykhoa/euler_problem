module Problem_96
  class EmptyCellFinder
    def self.find(matrix)
      size = matrix.size

      (0...size).each do |i|
        (0...size).each do |j|
          if matrix[i][j] == 0
            return Cell.new(i, j)
          end
        end
      end

      nil
    end
  end
end
