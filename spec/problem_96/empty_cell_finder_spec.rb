require_relative '../spec_helper'

describe Problem_96::EmptyCellFinder do
  describe ".find" do
    let(:finder) { Problem_96::EmptyCellFinder }

    it do
      matrix =
      [
        [0, 0, 3],
        [9, 0, 0],
        [0, 0, 1]
      ]

      finder.find(matrix).must_include Problem_96::Cell.new(0, 0)
    end

    it do
      matrix =
      [
        [1, 1, 3],
        [9, 1, 2],
        [1, 2, 0]
      ]
      result = finder.find(matrix)
      result.must_include Problem_96::Cell.new(2, 2)
      result.size.must_equal 1
    end

    it do
      matrix =
      [
        [1, 1, 3],
        [5, 1, 2],
        [5, 2, 4]
      ]

      finder.find(matrix).must_equal []
    end
  end
end
