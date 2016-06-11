require_relative './spec_helper'

describe Al::Adjacent do

  describe "#for" do
    describe "point is 0, 0" do
      let(:point) { Al::Point.new(0, 0) }
      let(:adjacent) { Al::Adjacent.for(point) }

      it "must include 1, 0" do
        adjacent.must_include Al::Point.new(1, 0)
      end

      it "must include 0, 1" do
        adjacent.must_include Al::Point.new(0, 1)
      end

      it "wont include 0, -1" do
        adjacent.wont_include Al::Point.new(0, -1)
      end

      it "wont include -1, 0" do
        adjacent.wont_include Al::Point.new(-1, 0)
      end

      it "only contains 2 adjacent" do
        adjacent.size.must_equal 2
      end
    end

   describe "point is 1, 1" do
      let(:point) { Al::Point.new(1, 1) }
      let(:adjacent) { Al::Adjacent.for(point) }

      it "must include 1, 0" do
        adjacent.must_include Al::Point.new(1, 0)
      end

      it "must include 0, 1" do
        adjacent.must_include Al::Point.new(0, 1)
      end

      it "must include -1, 0" do
        adjacent.must_include Al::Point.new(2, 1)
      end
      it "must include 0, -1" do
        adjacent.must_include Al::Point.new(1, 2)
      end

      it "returns 4 adj. points" do
        adjacent.size.must_equal 4
      end
    end
  end
end
