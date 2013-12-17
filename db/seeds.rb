# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Car.find_or_create_by(category: 'A', name: 'Mercedes', description: 'Jeszcze fajniejsze auto')
Car.find_or_create_by(category: 'B', name: 'Opel Astra', description: 'bardzo fajne auto')
Car.find_or_create_by(category: 'A', name: 'Bentley', description: 'Auto marzeń')
Car.find_or_create_by(category: 'C', name: 'Maluch', description: 'Fajne auto - całkowicie retro!')
