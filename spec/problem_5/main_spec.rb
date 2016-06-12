require_relative '../spec_helper'

describe Problem_5::Main do
  describe "solve" do
    describe "max 10" do
      let(:solver) { Problem_5::Main.new(max: 10) }

      it "returns 2520" do
        solver.solve.must_equal 2520
      end
    end

    describe "max 3" do
      let(:solver) { Problem_5::Main.new(max: 3) }

      it "returns 6" do
        solver.solve.must_equal 6
      end
    end

    describe "max 20" do
      let(:solver) { Problem_5::Main.new(max: 20) }

      it "returns a ...number" do
        solver.solve.must_equal 232792560
      end
    end
  end
end
