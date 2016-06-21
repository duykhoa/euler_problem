require_relative './sudoku_solver'
require_relative './read_from_file'
require_relative './output'

module Problem_96
  class Main
    def solve
      reader.read do |matrix|
        sudoku_solver.solve(matrix)
        output.write sudoku_solver
      end
    end

    def output
      @output ||= Output.new
    end

    def reader
      ReadFromFile.new
    end

    def sudoku_solver
      @solver ||= SudokuSolver.new
    end
  end
end
