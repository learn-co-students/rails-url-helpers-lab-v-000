# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

person1 = Student.create(first_name: "eric", last_name: "loos")
person2 = Student.create(first_name: "molly", last_name: "ellis", active: true)
person3 = Student.create(first_name: "harper", last_name: "lee", active: true)
