require_relative '../spec_helper'

describe Problem_96::SudokuSolver do
  def cell_value(matrix, cell)
    solver.fill_in(matrix, cell).map do |matrix|
      matrix[cell.x][cell.y]
    end
  end

  let(:solver) { Problem_96::SudokuSolver.new }

  describe "#fill_in" do
    let(:matrix) {
      [
        [0, 0, 3, 0, 2, 0, 6, 0, 0],
        [9, 0, 0, 3, 0, 5, 0, 0, 1],
        [0, 0, 1, 8, 0, 6, 4, 0, 0],
        [0, 0, 8, 1, 0, 2, 9, 0, 0],
        [7, 0, 0, 0, 0, 0, 0, 0, 8],
        [0, 0, 6, 7, 0, 8, 2, 0, 0],
        [0, 0, 2, 6, 0, 9, 5, 0, 0],
        [8, 0, 0, 2, 0, 3, 0, 0, 9],
        [0, 0, 5, 0, 1, 0, 3, 0, 0]
      ]
    }

    it do
      cell = Problem_96::Cell.new(0, 0)
      result = cell_value(matrix, cell)
      result.size.must_equal 2
      result.must_equal [4,5]
    end

    it do
      cell = Problem_96::Cell.new(8, 8)
      result = cell_value(matrix, cell)
      result.size.must_equal 4
      result.must_equal [2,4,6,7]
    end
  end

  describe "#fill" do
    let(:matrix) {
      [
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0]
      ]
    }

    it do
      solver.solve(matrix)
      solver.counter.must_equal 392
      #solver.print(solver.solution)
    end

    let(:matrix2) {
      [
        [0, 0, 3, 0, 2, 0, 6, 0, 0],
        [9, 0, 0, 3, 0, 5, 0, 0, 1],
        [0, 0, 1, 8, 0, 6, 4, 0, 0],
        [0, 0, 8, 1, 0, 2, 9, 0, 0],
        [7, 0, 0, 0, 0, 0, 0, 0, 8],
        [0, 0, 6, 7, 0, 8, 2, 0, 0],
        [0, 0, 2, 6, 0, 9, 5, 0, 0],
        [8, 0, 0, 2, 0, 3, 0, 0, 9],
        [0, 0, 5, 0, 1, 0, 3, 0, 0]
      ]
    }

    it do
      solver.solve matrix2
      solver.counter.must_equal 201
    end

    let(:matrix3) {
      [
        [2, 0, 0, 0, 8, 0, 3, 0, 0],
        [0, 6, 0, 0, 7, 0, 0, 8, 4],
        [0, 3, 0, 5, 0, 0, 2, 0, 9],
        [0, 0, 0, 1, 0, 5, 4, 0, 8],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [4, 0, 2, 7, 0, 6, 0, 0, 0],
        [3, 0, 1, 0, 0, 7, 0, 4, 0],
        [7, 2, 0, 0, 4, 0, 0, 6, 0],
        [0, 0, 4, 0, 1, 0, 0, 0, 3]
      ]
    }

    it do
      solver.solve matrix3
      solver.counter.must_equal 295
    end
  end
end
