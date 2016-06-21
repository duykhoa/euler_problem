require_relative './sudoku_solver'
require_relative './read_from_file'

module Problem_96
  class Main
    def solve
      reader.read do |matrix|
        sudoku_solver.solve matrix
        sudoku_solver.print
      end
    end

    def reader
      ReadFromFile.new
    end

    def sudoku_solver
      @solver ||= SudokuSolver.new
    end
  end
end
