require_relative '../spec_helper'

describe Problem_15::Movement do
  describe "move a point" do
    let(:point) { Problem_15::Point.new(0, 0) }
    let(:max_point) { Problem_15::Point.new(1, 1) }
    let(:movement) { Problem_15::Movement.new(max_point) }

    it "returns an array" do
      movement.move(point).must_be_instance_of Array
    end

    it "includes (1, 0)" do
      movement.move(point).must_include Problem_15::Point.new(1, 0)
    end

    it "includes (0, 1)" do
      movement.move(point).must_include Problem_15::Point.new(0, 1)
    end
  end
end
