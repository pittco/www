class SeatingSection < ActiveRecord::Base
  belongs_to :seating_chart
  has_one :left_row, class_name: SeatingRow
  has_one :right_row, class_name: SeatingRow

  def seating_rows
    [left_row, right_row]
  end
end
