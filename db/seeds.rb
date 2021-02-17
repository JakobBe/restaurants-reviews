require 'faker'

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating Restaurants...'

20.times do
	restaurant = Restaurant.new(
		name: Faker::Restaurant.name,
		address: Faker::Address.street_address,
		stars: rand(1..5),
		chef_name: ['Paul Bocuse', 'Ratatatouilli', 'Jamie Oliver', 'Gordon Ramsy', 'Hesten Bloumdoll'].sample
	)

	restaurant.save
	puts "Created restaurant: #{restaurant.name}"
end

puts "Seeding done" 