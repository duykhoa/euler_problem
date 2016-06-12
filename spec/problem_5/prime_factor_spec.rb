require_relative '../spec_helper'

describe Problem_5::PrimeFactor do
  describe "analyze" do
    describe "for 10" do
      let(:result) { Problem_5::PrimeFactor.for(10) }

      it "returns a hash" do
        result.must_be_instance_of Hash
      end

      it "contains 2" do
        result.keys.must_include 2
        result[2].must_equal 1
      end

      it "contains 5" do
        result.keys.must_include 5
        result[5].must_equal 1
      end
    end

    describe "for 88" do
      let(:result) { Problem_5::PrimeFactor.for(88) }

      it "returns a hash" do
        result.must_be_instance_of Hash
        result.keys.size.must_equal 2
      end

      it "contains 2" do
        result.keys.must_include 2
        result[2].must_equal 3
      end

      it "contains 11" do
        result.keys.must_include 11
        result[11].must_equal 1
      end
    end
  end
end
