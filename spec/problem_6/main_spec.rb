require_relative '../spec_helper'

describe Problem_6::Main do
  describe "solve" do
    it "returns 2640 for 10" do
      solver = Problem_6::Main.new(10)
      solver.solve.must_equal 2640
    end

    it "for 2" do
      solver = Problem_6::Main.new(2)
      solver.solve.must_equal 4
    end

    it "for 100" do
      solver = Problem_6::Main.new(100)
      solver.solve.must_equal 25164150
    end
  end
end
