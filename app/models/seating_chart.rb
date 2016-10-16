class SeatingChart < ActiveRecord::Base
  has_many :seating_sections
  has_many :seating_rows, through: :seating_sections
  has_many :seats, through: :seating_rows
  has_many :users, through: :seats

  def seats
    seating_sections.map do |s|
      s.seating_rows.map(&:seats)
    end.flatten
  end
end
