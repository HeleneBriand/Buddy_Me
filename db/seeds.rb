# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "Nony", age: 23, sex: "male", email: "Nony_bb@gmail.com", password: "Nono13")
User.create(name: "Intissar", age: 21, sex: "female", email: "inti@gmail.com", password: "bgdu13")
User.create(name: "Lucas", age: 26, sex: "male", email: "anonymous@gmail.com", password: "nonyloveu")
User.create(name: "Antoine", age: 18, sex: "male", email: "tonio@gmail.com", password: "petanqueloveur" )

Buddy.create(user_id: 1, description: "i'am alone and i suffer i want friends please!", category: "all", city: "marseille")
Buddy.create(user_id: 2, description: "i like to participate to weddings", category: "celebration", city: "nice")
Buddy.create(user_id: 4, description: "i'm a good listener", category: "workout", city: "paris")
Buddy.create(user_id: 3, description: "i like to play and drink a lot", category: "all", city: "grenoble")
