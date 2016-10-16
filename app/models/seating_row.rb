class SeatingRow < ActiveRecord::Base
  belongs_to :seating_section
  has_many :seats
end
