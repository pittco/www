module Room
  class Room
    include Enumerable

    def initialize(rows:)
      @rows = rows
    end

    def add_row(row, position: @rows.count)
      @rows[position] = row
    end

    def each
      @rows.each do |r|
        yield r
      end
    end

    def self.example_room
      rows = 10.times.map do |n|
        if n % 3 == 0
          tiles = [Tile.new(length: 8 * 8, width: 2)]
        else
          tiles = 8.times.map do |n|
            if (n >= 1 && n <= 6) || (n >= 8 && n <= 14)
              seats = [Seat.new, Seat.new]
              Tile.new(length: 8, width: 2, seats: seats)
            else
              Tile.new(length: 8, width: 2)
            end
          end
        end
        Row.new(tiles: tiles)
      end

      Room.new(rows: rows)
    end

  end
end
