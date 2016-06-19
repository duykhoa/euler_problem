require_relative '../spec_helper'

describe Problem_96::DuplicateArray do
  describe "#call" do
    let(:solver) { Problem_96::DuplicateArray.new }
    let(:array) { [[1,2,3], [4,5,6]] }
    let(:duplicate_array) { solver.call(array) }

    it "is an array" do
      duplicate_array.must_be_instance_of Array
    end

    it "duplicates array" do
      duplicate_array.object_id.wont_equal array.object_id
    end

    it "also duplicates inner array" do
      duplicate_array[0][0] = 999
      array[0][9].wont_equal 999
    end
  end
end
