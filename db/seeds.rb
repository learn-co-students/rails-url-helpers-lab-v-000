# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
student_1 = Student.create(first_name: "Jon", last_name: "Snow")
student_2 = Student.create(first_name: "Tyrion", last_name: "Lannister")
student_3 = Student.create(first_name: "Arya", last_name: "Stark")