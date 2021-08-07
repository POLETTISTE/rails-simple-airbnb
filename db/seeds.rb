require 'faker'


puts "Cleaning database..."
Flat.destroy_all

puts "Creating flats..."
flats = Flat.create

Formule1 = {name: " Formule1", address: "ZAC brignoles 83 Brignoles", description: "Hôtel pas cher où tu dors pas bien", price_per_night: 22, number_of_guests: 2 }
Terresrouges = { name: "Les Terres Rouges", address: "Les terres rouges quartier le Tuf 83170 Tourves", description: "Best place ever to sleep, lovely family here", price_per_night: 0, number_of_guests: 10 }

[ Formule1, Terresrouges ].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end


puts 'Creating 100 fake flats...'
100.times do
  flat = Flat.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    description: Faker::String.random,
    price_per_night:  rand(0..100),
    number_of_guests: rand(1..5)
  )
  flat.save!
end
puts 'Finished!'
