# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.destroy_all
Category.create(id: 1, name: "news")
Category.create(id: 2, name: "sos")
Category.create(id: 3, name: "help")
Category.create(id: 4, name: "resource")


