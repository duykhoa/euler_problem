require_relative '../spec_helper'

describe Problem1::DivisibleByThreeOrFive do
  describe "divisible?" do
    it "returns false for 2" do
      Problem1::DivisibleByThreeOrFive.divisible?(2).must_equal false
    end

    it "returns false for 1000001" do
      Problem1::DivisibleByThreeOrFive.divisible?(2).must_equal false
    end

    it "returns true for 3" do
      Problem1::DivisibleByThreeOrFive.divisible?(3).must_equal true
    end

    it "returns true for 5" do
      Problem1::DivisibleByThreeOrFive.divisible?(5).must_equal true
    end

    it "returns true for 999" do
      Problem1::DivisibleByThreeOrFive.divisible?(999).must_equal true
    end

    it "returns true for 1_000_000_000" do
      Problem1::DivisibleByThreeOrFive.divisible?(1_000_000_000).must_equal true
    end
  end
end
