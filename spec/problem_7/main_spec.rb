require_relative '../spec_helper'

describe Problem_7::Main do
  describe "returns 3" do
    let(:caller) { Problem_7::Main.new(2) }

    it do
      caller.solve.must_equal 3
    end
  end

  describe "returns 2" do
    let(:caller) { Problem_7::Main.new(1) }

    it do
      caller.solve.must_equal 2
    end
  end

  describe "returns 5" do
    let(:caller) { Problem_7::Main.new(3) }

    it do
      caller.solve.must_equal 5
    end
  end

  describe "returns 7" do
    let(:caller) { Problem_7::Main.new(4) }

    it do
      caller.solve.must_equal 7
    end
  end

  describe "returns 23" do
    let(:caller) { Problem_7::Main.new(10) }

    it do
      caller.solve.must_equal 29
    end
  end

  describe "returns 13" do
    let(:caller) { Problem_7::Main.new(6) }

    it do
      caller.solve.must_equal 13
    end
  end

  describe "positition 10.000" do
    let(:caller) { Problem_7::Main.new(10_000) }

    it do
      caller.solve.must_equal 104_729
    end
  end

  describe "positition 10.0001" do
    let(:caller) { Problem_7::Main.new(10_001) }

    it do
      caller.solve.must_equal 104_743
    end
  end
end
