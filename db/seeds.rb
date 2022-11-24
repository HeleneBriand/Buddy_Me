# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
puts "Destroying database"
Buddy.destroy_all
User.destroy_all

puts "Creating users"
nony = URI.open("https://avatars.githubusercontent.com/u/111756663?v=4")
user0 = User.create!(name: "Nony", age: 23, sex: "male", email: "Nony_bb@gmail.com", password: "Nono13")
user0.photo.attach(io: nony, filename: "nony.jpeg", content_type: "image/jpeg")
mathilde = URI.open("https://avatars.githubusercontent.com/u/114300122?v=4")
user1 = User.create!(name: "Mathilde", age: 25, sex: "female", email: "math@gmail.com", password: "mathilde")
user1.photo.attach(io: mathilde, filename: "mathilde.jpeg", content_type: "image/jpeg")
intissar = URI.open("https://avatars.githubusercontent.com/u/115433789?v=4")
user2 = User.create!(name: "Intissar", age: 21, sex: "female", email: "inti@gmail.com", password: "bgdu13")
user2.photo.attach(io: intissar, filename: "intissar.jpeg", content_type: "image/jpeg")
lucas = URI.open("https://avatars.githubusercontent.com/u/111721957?v=4")
user3 = User.create!(name: "Lucas", age: 26, sex: "male", email: "anonymous@gmail.com", password: "nonyloveu")
user3.photo.attach(io: lucas, filename: "lucas.jpeg", content_type: "image/jpeg")
antoine = URI.open("https://avatars.githubusercontent.com/u/114173699?v=4")
user4 = User.create!(name: "Antoine", age: 18, sex: "male", email: "tonio@gmail.com", password: "petanqueloveur")
user4.photo.attach(io: antoine, filename: "antoine.jpeg", content_type: "image/jpeg")
julien = URI.open("https://avatars.githubusercontent.com/u/112513305?v=4")
user5 = User.create!(name: "Julien", age: 27, sex: "male", email: "juju@gmail.com", password: "juju13")
user5.photo.attach(io: julien, filename: "julien.jpeg", content_type: "image/jpeg")
lucie = URI.open("https://avatars.githubusercontent.com/u/112090726?v=4")
user6 = User.create!(name: "Lucie", age: 30, sex: "female", email: "lulu@gmail.com", password: "lulu13")
user6.photo.attach(io: lucie, filename: "lucie.jpeg", content_type: "image/jpeg")
joy = URI.open("https://avatars.githubusercontent.com/u/110812012?v=4")
user7 = User.create!(name: "Joy", age: 23, sex: "female", email: "joie@gmail.com", password: "joy13003")
user7.photo.attach(io: joy, filename: "joy.jpeg", content_type: "image/jpeg")
mia = URI.open("https://avatars.githubusercontent.com/u/115114104?v=4")
user8 = User.create!(name: "Mia", age: 30, sex: "male", email: "mimi@gmail.com", password: "mimimi")
user8.photo.attach(io: mia, filename: "mia.jpeg", content_type: "image/jpeg")
nico = URI.open("https://avatars.githubusercontent.com/u/114221646?v=4")
user9 = User.create!(name: "Nicolas", age: 22, sex: "male", email: "nico@gmail.com", password: "nico11")
user9.photo.attach(io: nico, filename: "nico.jpeg", content_type: "image/jpeg")
helene = URI.open("https://avatars.githubusercontent.com/u/23334343?v=4")
user10 = User.create!(name: "Helene", age: 30, sex: "female", email: "heleneb@gmail.com", password: "heleneb")
user10.photo.attach(io: helene, filename: "helene.jpeg", content_type: "image/jpeg")
hermann = URI.open("https://avatars.githubusercontent.com/u/63840698?v=4")
user11 = User.create!(name: "Hermann", age: 17, sex: "male", email: "herman@gmail.com", password: "hermann")
user11.photo.attach(io: hermann, filename: "hermann.jpeg", content_type: "image/jpeg")
adrien = URI.open("https://avatars.githubusercontent.com/u/107648853?v=4")
user12 = User.create!(name: "Adrien", age: 25, sex: "male", email: "adrien@gmail.com", password: "adrien")
user12.photo.attach(io: adrien, filename: "adrien.png", content_type: "image/png")
puts "Users finished"

puts "Creating buddies"
nony1 = Buddy.create!(user_id: user0.id, description: "I want to do some sport: badminton or tennis", category: "workout", city: "marseille")
mathilde1 = Buddy.create!(user_id: user1.id, description: "I want people to code in Ruby and rails with me", category: "work", city: "marseille")
inti = Buddy.create!(user_id: user2.id, description: "I like to participate to weddings", category: "celebrations", city: "nice")
lulu = Buddy.create!(user_id: user3.id, description: "I'm a good table tennis player", category: "workout", city: "paris")
tonio = Buddy.create!(user_id: user4.id, description: "I like to play and drink a lot", category: "love", city: "marseille")
juju = Buddy.create!(user_id: user5.id, description: "I want to go to India, do you want to come with me?", category: "holidays", city: "grenoble")
lulucie = Buddy.create!(user_id: user6.id, description: "I love playing squash, do you want to come with me every monday?", category: "workout", city: "amiens")
joie = Buddy.create!(user_id: user7.id, description: "I am looking for my future husband", category: "love", city: "grenoble")
mimi = Buddy.create!(user_id: user8.id, description: "I would like to travel across Europe by train", category: "holidays", city: "nice")
nicolas = Buddy.create!(user_id: user9.id, description: "I like to party and meet new friends", category: "celebrations", city: "toulon")
helene1 = Buddy.create!(user_id: user10.id, description: "I like to play football", category: "workout", city: "paris")
hermann1 = Buddy.create!(user_id: user11.id, description: "I am looking for my next intern", category: "work", city: "nimes")
adri = Buddy.create!(user_id: user12.id, description: "I am looking for my future wife", category: "love", city: "lyon")
puts "Buddies finished"
