require_relative '../spec_helper'

describe Problem1::Main do
  describe "#solve" do
    it "returns 2 for limit 2" do
      Problem1::Main.new(2).solve.must_equal 0
    end

    it "returns 3 for limit 5" do
      Problem1::Main.new(5).solve.must_equal 3
    end

    it "returns 23 for limit 10" do
      Problem1::Main.new(10).solve.must_equal 23
    end

    it "limits 1000" do
      result = Problem1::Main.new(1000).solve
      result.must_be_instance_of Fixnum
    end
  end
end
