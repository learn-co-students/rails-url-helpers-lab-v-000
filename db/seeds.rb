# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
students_list = [
  ["Mary Sue", "Allen"],
  ["Phillip", "Dunphy"],
  ["Reginald", "Cumberbatch"]
]

students_list.each do |first_name, last_name|
  Student.create(first_name: first_name, last_name: last_name)
end
