# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task :example_seating_chart => :environment do
  chart = SeatingChart.create!


  5.times do |n|
    section = chart.seating_sections.build
    section.left_row = SeatingRow.create name: "Example Left Row #{n}"
    section.right_row = SeatingRow.create name: "Example Right Row #{n}"
    section.save
  end

  chart.seating_sections.each do |section|
    section.seating_rows.each do |row|
      15.times do |n|
        row.seats.create position: n
      end
    end
  end


  # chart.seating_rows.create(name: "Baller Row", single_column: true).tap do |row|
  #   8.times do |n|
  #     row.seats.create position: n
  #   end
  # end

  puts "All Done"
end
