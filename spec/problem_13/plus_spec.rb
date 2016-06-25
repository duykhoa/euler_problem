require_relative '../spec_helper'

describe Problem_13::Plus do
  let(:solver) { Problem_13::Plus.new }

  let(:big_num1) { "10000" }
  let(:big_num2) { "20000" }
  let(:sum) { "30000" }

  it do
    result = solver.call(big_num1, big_num2)
    result.must_equal sum
  end

  it do
    result = solver.call("39", "21")
    result.must_equal "60"
  end

  it do
    result = solver.call("9", "1")
    result.must_equal "10"
  end

  it do
    result = solver.call("91", "1")
    result.must_equal "92"
  end

  it do
    result = solver.call("99", "1")
    result.must_equal "100"
  end

  it do
    result = solver.call("90000005", "2")
    result.must_equal "90000007"
  end

  it do
    result = solver.call("2", "10098")
    result.must_equal "10100"
  end
end
