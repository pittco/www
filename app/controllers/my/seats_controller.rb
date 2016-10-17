class My::SeatsController < ApplicationController
  def index
  end

  def new
    @room = Room::Room.example_room
  end

  def create


    render json: {ok: true}
  end
end
