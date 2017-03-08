# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  Relation.create(movie_type: "mystery")
	Relation.create(movie_type: "suspense")
	Relation.create(movie_type: "action")
10.times do |i|
	Film.create(title: Faker::Book.title, description: Faker::Lorem.sentence, url_slug: Faker::Internet.url, year: rand(1920..2014))
	RelatedFilm.create(relation_id: rand(1..3), film_id: i)
end

	

