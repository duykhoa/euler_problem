# Sudoku problem
#
# Solution idea
#
# To solve the sudoku problem, we just apply the bruteforce approach
# For each empty cell (value 0), we try to fill in with a number from 1-9
#
# If a cell is filled with a value, we move on
#

require_relative './duplicate_array'
require_relative './empty_cell_finder'
require_relative './checker'

module Problem_96
  Cell = Struct.new(:x, :y)
  SIZE = 9

  class Main

    attr_reader :counter, :solution

    def initialize
      @counter = 0
    end

    def solve(sudoku_matrix)
      @solution = nil
      fill(sudoku_matrix)
      @solution
    end

    def fill(matrix)
      @counter += 1

      cell = find_empty_cell(matrix)

      if cell
        new_matrices = fill_in(matrix, cell)

        return if new_matrices.empty?

        new_matrices.each do |new_matrix|
          fill(new_matrix)

          return if @solution
        end
      else
        @solution = matrix
      end
    end

    def fill_in(matrix, cell)
      matrices = []

      (1..9).each do |value|
        if checker.check(matrix, cell.x, cell.y, value)
          matrices << new_matrix_with_value(matrix, cell, value)
        end
      end

      matrices
    end

    def find_empty_cell(matrix)
      EmptyCellFinder.find(matrix)
    end

    def new_matrix_with_value(matrix, cell, value)
      new_matrix = duplicator.call(matrix)
      new_matrix[cell.x][cell.y] = value
      new_matrix
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
    end
  end
end
