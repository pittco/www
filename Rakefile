# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task :example_seating_chart => :environment do
  chart = SeatingChart.create!

  5.times do |n|
    chart.seating_rows.create name: "Example Row #{n}"
  end

  chart.seating_rows.each do |row|
    26.times do |n|
      row.seats.create position: n
    end
  end

  chart.seating_rows.create(name: "Baller Row", single_column: true).tap do |row|
    8.times do |n|
      row.seats.create position: n
    end
  end

  puts "All Done"
end
