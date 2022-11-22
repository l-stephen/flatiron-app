# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Student.destroy_all
Staff.destroy_all

Student.create(name: "Stephen", email:"slambert@gmail.com", age: 27, course:"Software Engineering")

Student.create(name: "Sam", email:"sam@gmail.com", age: 27, course:"Software Engineering")
Staff.create(name: "Yesenia", email:"yesenia@gmail.com", age: 27, title:"Product Design")
Staff.create(name: "Jaycess", email:"jaycee@gmail.com", age: 27, title:"Community")

puts "Done Seeding!"