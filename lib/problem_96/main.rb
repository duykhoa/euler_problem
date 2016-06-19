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

    def fill(matrix, count = 0)
      has_empty = false
      _count = count || 0

      (0...SIZE).each do |i|
        (0...SIZE).each do |j|
          if matrix[i][j] == 0
            (1..9).each do |value|
              if checker.check(matrix, i, j, value)
                duplicate_array = duplicator.call(matrix)
                duplicate_array[i][j] = value

                _count += 1

                fill(duplicate_array, _count)
                print duplicate_array
                exit if _count == count_empty(duplicate_array) || _count == 2
              end
            end
          end
        end
      end
    end

    def count_empty(matrix)
      matrix.flatten.count(0)
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
