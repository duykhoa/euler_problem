require_relative '../spec_helper'

describe Problem_15::Main do
  describe "#solve" do

    let(:caller) { Problem_15::Main.new(size, start_point, end_point) }

    describe "size: 2x2" do
      let(:size) { Problem_15::Size.new(2, 2) }
      let(:start_point) { Problem_15::Point.new(0, 0) }
      let(:end_point) { Problem_15::Point.new(2, 2) }

      it "returns 6" do
        caller.solve.must_equal 6
      end
    end

    describe "size: 1x1" do
      let(:size) { Problem_15::Size.new(1, 1) }
      let(:start_point) { Problem_15::Point.new(0, 0) }
      let(:end_point) { Problem_15::Point.new(1, 1) }

      it "returns 2" do
        caller.solve.must_equal 2
      end
    end

    describe "size: 1x1" do
      let(:size) { Problem_15::Size.new(1, 1) }
      let(:start_point) { Problem_15::Point.new(0, 0) }
      let(:end_point) { Problem_15::Point.new(1, 1) }

      it "returns 2" do
        caller.solve.must_equal 2
      end
    end

    describe "size: 10x10" do
      let(:size) { Problem_15::Size.new(10, 10) }
      let(:start_point) { Problem_15::Point.new(0, 0) }
      let(:end_point) { Problem_15::Point.new(10, 10) }

      it "returns 2" do
        caller.solve.must_equal 184756
      end
    end
  end
end
