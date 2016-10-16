module Room
  class Tile
    def initialize(length:, width:)
      @length = length
      @width = width
    end
    attr_reader :length, :width
  end
end
