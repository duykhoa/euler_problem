require_relative '../spec_helper'

describe Problem_8::Main do
  describe "solve" do
    describe "4 digits series" do
      let(:caller) { Problem_8::Main.new(4) }
      it "return 5832" do
        caller.solve.must_include 5832
      end

      it "returns 4 digits" do
        pos = caller.solve[1]
        Problem_8::Main::DIGITS[pos-3, 4].must_equal "9989"
      end
    end

    describe "13 digits series" do
      let(:caller) { Problem_8::Main.new(13) }
      it "returns biggest value" do
        caller.solve.must_include 23514624000
      end

      it "returns 13 digits" do
        pos = caller.solve[1]
        Problem_8::Main::DIGITS[pos-12, 13].must_equal "5576689664895"
      end
    end
  end
end
