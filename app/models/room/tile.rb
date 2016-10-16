module Room
  class Tile
    def initialize(length:, width:, seats: [])
      @length = length
      @width = width
      @seats = seats
    end
    attr_reader :length, :width, :seats

    def seatable?
      !@seats.empty?
    end
  end
end
