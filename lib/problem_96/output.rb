module Problem_96
  class Output
    FILE = "output.txt".freeze
    WRITEMODE = "a+".freeze

    def write(result)
      path = File.join(__dir__, FILE)

      File.open(path, WRITEMODE) do |file|
        file.puts matrix_context(result.solution)
        file.puts counter_content(result.counter)
      end
    end

    def matrix_context(matrix)
      matrix.map { |arr| arr.join(' ') }.join("\n")
    end

    def counter_content(counter)
      "\nMovements %s\n----\n" % counter
    end
  end
end
