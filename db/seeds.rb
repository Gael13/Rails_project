#
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Transport.create(name: "Walk" , multiplier: 0, slug: "walk")
Transport.create(name: "Train" , multiplier: 0.002, slug: "train")
Transport.create(name: "Electrical Car" , multiplier: 0.02, slug: "electrical_car")
Transport.create(name: "Bus" , multiplier: 0.1, slug: "bus")
Transport.create(name: "Plane" , multiplier: 0.13, slug: "plane")
Transport.create(name: "Car" , multiplier: 0.19, slug: "car")

