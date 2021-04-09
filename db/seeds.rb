# This file should contain all the record creation needed to seed the database with its default values.
# This loads seed files from the seed/ directory one at a time

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
  puts "seeding - #{seed}. loading seeds, for real!"
  load seed
end
