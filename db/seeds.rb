# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.delete_all
Restaurant.delete_all


LOCATIONS = %w(London Paris Amsterdam)
NAMES = %w(John's BestGrill Homezzz DunkinDoghnuts @Steve )
CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]



NAMES.each do |name|
  Restaurant.create(name: name, address: LOCATIONS.sample, phone_number: rand(111111111..999999999).to_s, category: CATEGORIES.sample)
end

restaurants = Restaurant.all

CONTENT = ["great place, love it always", "just like home", "must go to and enjoy", "I really hated overcooked cheap food", "average service, but realllll cozy"]

10.times do
  Review.create(content: CONTENT.sample, rating: rand(1..5), restaurant: restaurants.sample )
end
