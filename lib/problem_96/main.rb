# Sudoku problem
#
# Solution idea
#
# To solve the sudoku problem, we just apply the bruteforce approach
# For each empty cell (value 0), we try to fillin with a number from 1-9
#
# If a cell is filled with a value, we move on
#

require_relative './duplicate_array'
require_relative './checker'

module Problem_96
  class Main
    SIZE = 9

    attr_reader :sudoku_matrix

    def initialize(sudoku_matrix = [])
      @sudoku_matrix = sudoku_matrix
    end

    def solve
      matrix = sudoku_matrix
      fill(matrix)
    end

    def fill(matrix)
      has_empty = false

      (0...SIZE).each do |i|
        (0...SIZE).each do |j|
          if matrix[i][j] == 0
            has_empty = true
            fill_in(matrix, i, j)
          end
        end
      end

      return matrix unless has_empty
    end

    def fill_in(matrix, i, j)
      (1..9).each do |value|
        if checker.check(matrix, i, j, value)
          duplicate_array = duplicator.call(matrix)
          duplicate_array[i][j] = value

          fill(duplicate_array)
        end
      end
    end

    def checker
      @checker ||= Checker.new
    end

    def duplicator
      @duplicator ||= DuplicateArray.new
    end

    def print(matrix)
      matrix.each do |arr|
        puts arr.inspect
      end
      puts "----"
    end
  end
end
