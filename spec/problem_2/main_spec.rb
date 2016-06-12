require_relative '../spec_helper'

describe Problem_2::Main do
  describe "#solve" do
    it "returns 4 for max 3" do
      caller = Problem_2::Main.new(3)
      caller.solve.must_equal 4
    end

    it "returns 43 for max 22" do
      caller = Problem_2::Main.new(22)
      caller.solve.must_equal 43
    end

    it "max 4_000_000" do
      caller = Problem_2::Main.new(4_000_000)
      caller.solve.must_equal 4613731
    end
  end
end
