module Problem_96
  class ReadFromFile
    FILE = "sudoku.txt".freeze
    READMODE = "r".freeze

    def read(&block)
      load do |file|
        run_algorithm(file, &block)
      end
    end

    def run_algorithm(file, &block)
      while !file.eof?
        block.call read_matrix(file)
      end
    end

    def load(&block)
      path = File.join(__dir__, "./sudoku.txt")

      File.open(path, READMODE) do |file|
        self.instance_exec(file, &block)
      end
    end

    def read_matrix(file)
      # SKIP HEADER file
      file.gets

      matrix = []

      9.times do
        matrix << parse(file.gets)
      end

      matrix
    end

    def parse(str)
      str.scan(/\d/).map(&:to_i)
    end
  end
end
