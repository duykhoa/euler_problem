require_relative '../spec_helper'

describe Problem_10::Main do
  let(:solver) { Problem_10::Main.new }

  describe "prime?" do
    it do
      solver.prime?(3).must_equal true
    end

    it do
      solver.prime?(4).must_equal false
    end
  end

  describe "solve" do
    it do
      solver.solve(10).must_equal 17
    end

    it do
      solver.solve(2_000_000).must_equal 142913828922
    end
  end
end
