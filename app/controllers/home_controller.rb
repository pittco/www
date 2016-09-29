class HomeController < ApplicationController
  def index
    @seating_chart = SeatingChart.first
  end
end
