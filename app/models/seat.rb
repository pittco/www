class Seat < ActiveRecord::Base
  belongs_to :user
  belongs_to :seating_row
end
