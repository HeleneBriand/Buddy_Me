# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Buddy.create(description: "i'am alone and i suffer i want friends please!", category: "all", city: "marseille")

Buddy.create(description: "i like to participate to weddings", category: "celebration", city: "nice")
Buddy.create(description: "i'm a good listener", category: "workout", city: "paris")
Buddy.create(description: "i like to play and drink a lot", category: "all", city: "grenoble")
