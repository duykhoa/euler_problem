require_relative '../spec_helper'

describe Problem_96::Checker do
  let(:checker) { Problem_96::Checker.new }
  let(:array) {
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

  describe "#check_row" do
    it "returns false" do
      checker.check_row(array, 0, 1, 3).must_equal false
      checker.check_row(array, 0, 1, 6).must_equal false
    end

    it "returns true" do
      checker.check_row(array, 0, 1, 5).must_equal true
      checker.check_row(array, 0, 1, 7).must_equal true
      checker.check_row(array, 0, 1, 1).must_equal true
      checker.check_row(array, 0, 1, 9).must_equal true
      checker.check_row(array, 0, 1, 8).must_equal true
    end
  end

  describe "#check_col" do
    it "returns false" do
      checker.check_col(array, 0, 0, 9).must_equal false
    end

    it "returns true" do
      checker.check_col(array, 0, 0, 3).must_equal true
      checker.check_col(array, 0, 0, 1).must_equal true
    end
  end

  describe "#check_box" do
    it "returns false" do
      checker.check_box(array, 0, 1, 1).must_equal false
      checker.check_box(array, 1, 7, 5).must_equal true
    end

    it "returns true" do
      checker.check_box(array, 1, 7, 5).must_equal true
      checker.check_box(array, 0, 5, 4).must_equal true
    end
  end

  describe "#check" do
    let(:checker) { Problem_96::Checker.new }
    let(:array2) do
      [
        [1, 2, 3, 4, 5, 6, 7, 8, 9],
        [4, 5, 6, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0]
      ]
    end

    let(:array3) do
      [
        [1, 2, 3, 4, 5, 6, 7, 8, 9],
        [4, 5, 6, 1, 2, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 0]
      ]
    end

    it do
      checker.check(array2, 1, 3, 1).must_equal true
    end

    it do
      checker.check(array2, 1, 5, 3).must_equal true
    end
  end
end
