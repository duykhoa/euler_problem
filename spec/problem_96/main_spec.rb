require_relative '../spec_helper'

describe Problem_96::Main do
  let(:sudoku_matrix) { 
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

  #describe "#fill_in" do
    #let(:solver) { Problem_96::Main.new(sudoku_matrix) }

    #it do
      #solver.stub(:fill, true) do
        #solver.fill_in(sudoku_matrix, 0, 0)
      #end
    #end
  #end

  describe "#fill" do
    let(:solver) { Problem_96::Main.new(sudoku_matrix) }

    it do
      #result = solver.fill(sudoku_matrix)
    end
  end
end
