module Room
  class Room
    include Enumerable

    def initialize
      @rows = []
    end

    def add_row(row, position: @rows.count)
      @rows[position] = row
    end

    def each
      @rows.each do |r|
        yield r
      end
    end
  end
end
