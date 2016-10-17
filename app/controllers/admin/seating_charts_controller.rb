class Admin::SeatingChartsController < AdminController
  def index
    @seating_chart = SeatingChart.first
  end
end
