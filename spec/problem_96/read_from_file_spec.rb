require_relative '../spec_helper'

describe Problem_96::ReadFromFile do
  let(:reader) { Problem_96::ReadFromFile.new }

  describe "read_matrix" do
    let(:file) { File.new(File.join(__dir__, "./sudoku.txt"), "r") }

    it do
      result = reader.read_matrix(file)
      result.must_be_instance_of Array
      result.size.must_equal 9
      result.first.size.must_equal 9
    end
  end

  describe "load" do
    it do
      matrix = reader.load do |file|
        read_matrix(file)
      end

      matrix.size.must_equal 9
      matrix.first.size.must_equal 9
    end
  end

  describe "read" do
    it do
      total = 0
      matrices = []

      reader.read do |matrix|
        total += 1
        matrices << matrix
      end

      total.must_equal 50
      matrices.size.must_equal 50
      matrices.first.size.must_equal 9
    end
  end
end
