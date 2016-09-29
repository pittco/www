class HomeController < ApplicationController
  layout 'home'

  def index
    @seating_chart = SeatingChart.first
  end
end
