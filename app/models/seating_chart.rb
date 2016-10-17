class SeatingChart < ActiveRecord::Base
  has_many :seating_rows
  has_many :seats, through: :seating_rows
  has_many :users, through: :seats
end
