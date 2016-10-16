module Room

  class Table
    def initialize(length:, width:)
      @length = length
      @width = width
    end
    attr_reader :length, :width
  end

  class Row
    def initialize(tables: {},
                   max_length: Float::INFINITY,
                   max_width: Float::INFINITY)
      @tables = tables
      @max_length, @max_width = max_length, max_width
    end

    def add_table(table, position: @tables.count)
      if enough_room?(table, position: position)
        @tables[position] = table
      else
        # Todo make this a proper exception
        raise 'Row is full.'
      end
    end

    def full?
      length >= @max_length
    end

    def length
      @tables.values.map(&:length).inject(0, :+)
    end

    def width
      @tables.values.map(&:width).max
    end

    def enough_room?(table, position: @tables.count)
      if @tables[position]
      else
        (length + table.length) <= @max_length
      end
    end

  end

  class Room
    def initializer
      @rows = []
    end

    def add_row(row, position: @rows.count)
      @rows[position] = row
    end
  end

end
