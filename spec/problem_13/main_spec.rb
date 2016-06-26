require_relative '../spec_helper'

describe Problem_13::Main do
  let(:solver) { Problem_13::Main.new }

  it do
    solver.solve("1").must_equal "1"
  end

  it do
    solver.solve("1", "2").must_equal "3"
  end

  it do
    solver.solve(
      "1001",
      "1001"
    ).must_equal "2002"
  end

  it do
    solver.solve(
      "1001",
      "1001",
      "1001",
      "1001",
      "1001"
    ).must_equal "5005"
  end
end
