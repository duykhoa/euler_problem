require_relative '../spec_helper'

describe Problem_3::Main do
  describe "#solve" do
    let(:solver) { Problem_3::Main.new(num) }
    let(:num) { 2 }

    describe "for 2" do
      let(:num) { 2 }
      it { solver.solve.must_equal 2 }
    end

    describe "for 3" do
      let(:num) { 3 }
      it { solver.solve.must_equal 3 }
    end

    describe "for 10" do
      let(:num) { 10 }
      it { solver.solve.must_equal 5 }
    end

    describe "for 28" do
      let(:num) { 28 }
      it { solver.solve.must_equal 7 }
    end

    describe "for 35" do
      let(:num) { 35 }
      it { solver.solve.must_equal 7 }
    end

    describe "for 46" do
      let(:num) { 46 }
      it { solver.solve.must_equal 23 }
    end

    describe "for 23" do
      let(:num) { 23 }
      it { solver.solve.must_equal 23 }
    end
  end
end
