# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first))

puts "deleting all users"
Booking.destroy_all
Service.destroy_all
User.destroy_all

User.create!(email: "george@gmail.com", password: "123456", first_name: "George", last_name: "Woods", role: "teacher", bio: "I have so many sills, and I want to share them with the world")
User.create!(email: "marlon@gmail.com", password: "123456", first_name: "Marlon", last_name: "Wanderllich", role: "student")
User.create!(email: "ricardo@gmail.com", password: "123456", first_name: "Ricardo", last_name: "Mil", role: "student")
User.create!(email: "marjolijn@gmail.com", password: "123456", first_name: "Marjolijn", last_name: "Van der Ree", role: "teacher")
User.create!(email: "ivo@gmail.com", password: "123456", first_name: "Ivo", last_name: "Mcteacher", role: "teacher", bio: "I am one skillful guy, don't get to close, I'm dangerous!" )

puts "creating all users again"

puts "deleting all services"



Service.create!(skill_name: "Guitar lessons", price_per_hour: 75, availability: true, user: User.last)
Service.create!(skill_name: "Football skills", price_per_hour: 150, availability: true, user: User.last)
Service.create!(skill_name: "Esperanto classes", price_per_hour: 20, availability: true, user: User.last)
Service.create!(skill_name: "Pogo stick for advanced learners", price_per_hour: 400, availability: true, user: User.last)
Service.create!(skill_name: "Korean cooking lessons", price_per_hour: 10, availability: true, user: User.last)
Service.create!(skill_name: "Wine tasting", price_per_hour: 40, availability: true, user: User.last)
Service.create!(skill_name: "Horticulture in modern society", price_per_hour: 300, availability: true, user: User.last)
Service.create!(skill_name: "Clarinet lessons", price_per_hour: 10, availability: true, user: User.last)

puts "creating services again"

puts "deleting all bookings"



Booking.create!(status: "pending", user: User.last, service: Service.last)
Booking.create!(status: "confirmed", user: User.last, service: Service.last)
Booking.create!(status: "cancelled", user: User.last, service: Service.last)
Booking.create!(status: "confirmed", user: User.last, service: Service.last)
Booking.create!(status: "pending", user: User.last, service: Service.last)

puts "creating bookings again"
