# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: "Moe", last_name: "Szmanski")
Student.create(first_name: "Chef", last_name: "Levi")
Student.create(first_name: "Larry", last_name: "Borski")

Turtle.create(name: "Leonardo", age: 17)
Turtle.create(name: "Raphael", age: 14)
Turtle.create(name: "Michalangello", age: 15)
Turtle.create(name: "Donatello", age: 16)
