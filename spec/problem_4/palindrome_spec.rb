require_relative '../spec_helper'

describe Problem_4::Palindrome do
  describe "#for" do
    let(:checker) { Problem_4::Palindrome.new}
    let(:result) { checker.for(num) }

    describe "num is 1" do
      let(:num) { 1 }

      it "returns true" do
        result.must_equal true
      end
    end

    describe "num is 1231" do
      let(:num) { 1231 }

      it "returns true" do
        result.must_equal false
      end
    end

    describe "num is 1001" do
      let(:num) { 1001 }

      it "returns true" do
        result.must_equal true
      end
    end

    describe "num is 199070991" do
      let(:num) { 199070991 }

      it "returns true" do
        result.must_equal true
      end
    end
  end
end
