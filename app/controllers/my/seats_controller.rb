class My::SeatsController < ApplicationController
  def index
  end

  def new
    @chart = SeatingChart.first
  end

  def create
  end
end
