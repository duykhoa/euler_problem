require_relative '../spec_helper'

describe Problem_9::Main do
  it do
    result = Problem_9::Main.new.solve
    result.must_be_instance_of Array
    result.must_equal [200, 375, 425]
  end
end
