module Room
  class Seat
    def initialize
      @id = SecureRandom.uuid
    end
    attr_reader :id
  end
end
