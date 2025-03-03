puts "Deleting all dreams..."
Dream.destroy_all

puts "Adding new dreams...."

dreams

dreams.each do |dream|
  Dream.create!(dream)
  puts "'#{dream[:title]}' has been added!"
end

puts "All dreams are now in the database!✅"
