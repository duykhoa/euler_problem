require_relative './spec_helper'

describe Al::Adjacent do
  let(:point) { Al::Point.new(0, 0) }

  describe "#for" do
    let(:adjacent) { Al::Adjacent.for(point) }

    it "must include 1, 0" do
      adjacent.must_include Al::Point.new(1, 0)
    end

    it "must include 0, 1" do
      adjacent.must_include Al::Point.new(0, 1)
    end

    it "wont include 0, -1" do
      adjacent.must_include Al::Point.new(0, 1)
    end

    it "wont include -1, 0" do
      adjacent.must_include Al::Point.new(0, 1)
    end
  end
end
