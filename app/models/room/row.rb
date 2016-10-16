module Room
  class Row
    include Enumerable

    def initialize(tiles: {},
                   max_length: Float::INFINITY,
                   max_width: Float::INFINITY)
      @tiles = tiles
      @max_length, @max_width = max_length, max_width
    end

    def each
      @tiles.each do |tile|
        yield tile
      end
    end

    def add_tile(tile, position: @tiles.count)
      if enough_room?(tile, position: position)
        @tiles[position] = tile
      else
        # TODO make this a proper exception
        raise 'Row is full.'
      end
    end

    def full?
      length >= @max_length
    end

    def length
      @tiles.map(&:length).inject(0, :+)
    end

    def width
      @tiles.values.map(&:width).max
    end

    def enough_room?(tile, position: @tiles.count)
      if @tiles[position]
        (length - @tiles[position].length) + tile.length
      else
        (length + tile.length)
      end <= @max_length
    end
  end
end
