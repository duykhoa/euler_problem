require_relative '../spec_helper'

describe Problem_15::Main do
  describe "#solve" do
    let(:size) { Problem_15::Size.new(2, 2) }
    let(:start_point) { Problem_15::Point.new(0, 0) }
    let(:end_point) { Problem_15::Point.new(0, 0) }

    let(:caller) { Problem_15::Main.new(size, start_point, end_point) }

    it "returns 6" do
      caller.solve.must_equal 6
    end
  end
end
