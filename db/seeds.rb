# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
title = ["Facebook", "Twitter", "Yelp", "GitHub", "Microsoft", "Netflix", "Apple", "Google"]

20.times do
  Project.create(title: title.sample, summary: Faker::Lorem.paragraph(sentence_count: 2))
end


