# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


10.times do
	user = User.create(name: Faker::Name.name, email: Faker::Internet.email)
	rand(3..7).times do
		user.task_masters.create(name: Faker::Name.name, description: Faker::Lorem::paragraph(sentence_count: 5), due_date: Faker::Date.forward(days: 30))
		user.note_genius.create(name: Faker::Name.name, content: Faker::Lorem.paragraph)
	end	
end