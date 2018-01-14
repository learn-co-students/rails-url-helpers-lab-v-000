# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
students = Student.create([
  {first_name: "Chris", last_name: "Rudolph"},
  {first_name: "Alex", last_name: "Cannon"},
  {first_name: "Craig", last_name: "Robinson"},
  {first_name: "Adam", last_name: "Scott"}
  ]) 