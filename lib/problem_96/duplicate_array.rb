module Problem_96
  class DuplicateArray
    def call(array)
      new_array = []

      array.each do |inner_array|
        new_array << inner_array.dup
      end

      new_array
    end
  end
end
