# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.destroy_all

Restaurant.create(name: "Asian Bistro", description: "Szechuan Chinese Food", address: "Arlington Heights", phone_number: "8475551234")

Restaurant.create(name: "Lao Szechuan", description: "Szechuan Chinese Food in heart of Chinatown", address: "Chicago", phone_number: "3125551234")