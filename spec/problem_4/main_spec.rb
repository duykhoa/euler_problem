require_relative '../spec_helper'

describe Problem_4::Main do
  describe "#solve" do
    let(:solver) { Problem_4::Main.new(num) }
    describe "max 1" do
      let(:num) { 1 }

      it do
        solver.solve.must_equal Problem_4::Result.new(1, 1)
      end
    end

    describe "max 100" do
      let(:num) { 100 }

      it do
        solver.solve.must_equal Problem_4::Result.new(99, 91)
      end
    end

    describe "max 1000" do
      let(:num) { 1000 }

      it do
        solver.solve.must_equal Problem_4::Result.new(999, 91)
      end
    end
  end
end
