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

    attr_reader :sudoku_matrix

    def initialize(sudoku_matrix = [])
      @sudoku_matrix = sudoku_matrix
    end

    def solve
      matrix = sudoku_matrix
      fill(matrix)
    end

    def fill(matrix)
      cells = find_empty_cell(matrix)

      if cells.any?
        cells.each do |cell|
          new_matrices = fill_in(matrix, cell)
          new_matrices.each do |new_matrix|
            print new_matrix
            fill(new_matrix)
          end
        end
      else
        print matrix
        exit
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
      puts "----"
    end
  end
end
