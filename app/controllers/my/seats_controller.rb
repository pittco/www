class My::SeatsController < ApplicationController
  def index
  end

  def new
    @chart = SeatingChart.first


    @room = Room::Room.new
    3.times do
      row = Room::Row.new
      3.times do
        tile = Room::Tile.new(length: 8, width: 2)
        row.add_tile(tile)
      end
      @room.add_row(row)
    end


  end

  def create
  end
end
