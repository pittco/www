class SeatingRow < ActiveRecord::Base
  belongs_to :seating_chart
  has_many :seats
end
