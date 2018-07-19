# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create( :first_name => "Joe", :last_name => "Wannabe", :active => true)
Student.create( :first_name => "Doroty", :last_name => "Oz", :active => false)
