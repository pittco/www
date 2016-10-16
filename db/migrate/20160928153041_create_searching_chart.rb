class CreateSearchingChart < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_dt
      t.datetime :end_dt
      t.timestamps null: false
    end

    create_table :seating_charts do |t|
      t.integer :event_id
      t.timestamps null: false
    end

    create_table :seating_sections do |t|
      t.integer :seating_chart_id
      t.integer :left_seating_row_id
      t.integer :right_seating_row_id
      t.timestamps null: false
    end
    add_index :seating_sections, :seating_chart_id
    add_index :seating_sections, :left_seating_row_id
    add_index :seating_sections, :right_seating_section_id

    create_table :seating_rows do |t|
      t.string :name
      t.integer :seating_section_id
      t.timestamps null: false
    end
    add_index :seating_rows, :seating_section_id

    create_table :seats do |t|
      t.integer :position
      t.integer :seating_row_id
      t.integer :user_id
      t.timestamps null: false
    end
    add_index :seats, :user_id
    add_index :seats, :seating_row_id
  end
end
