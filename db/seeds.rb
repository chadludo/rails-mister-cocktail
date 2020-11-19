# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning Database..."
Dose.destroy_all
puts "Doses cleaned"
Ingredient.destroy_all
puts "Ingredients cleaned"
Cocktail.destroy_all
puts "Cocktails cleaned"
# pizza_pino = Restaurant.new(name: "Pizza Pino", address: "10B Rue Marcel Sembat, 33100 Bordeaux", phone_number: "05 56 32 92 92", category: "italian")
# db/seeds.rb
# Ingredients
lemon = Ingredient.create!(name: "lemon")
Ingredient.create!(name: "ice")
mint = Ingredient.create!(name: "mint leaves")
Ingredient.create!(name: "Light rum")
Ingredient.create!(name: "Strawberry schnapps")
# Cocktails
mojito = Cocktail.create!(name: "Mojito")
Cocktail.create!(name: "Bloody Mary")
Cocktail.create!(name: "Sex on the Beach")
Cocktail.create!(name: "Margarita")
Cocktail.create!(name: "Pina Colada")
# Doses
first_dose = Dose.new(description: "6 leaves")
first_dose.cocktail = mojito  # Set foreign key restaurant_id
first_dose.ingredient = mint
first_dose.save!
first_dose.ingredient            # Should contain the ingredient Mint
first_dose.cocktail            # Should contain the dose cocktail : Mojito
# A cocktail has a name (e.g. "Mint Julep", "Whiskey Sour", "Mojito")
# An ingredient has a name (e.g. "lemon", "ice", "mint leaves")
# A dose is the amount needed for each ingredient in a cocktail (e.g. the Mojito cocktail needs 6cl of lemon). So each dose references a cocktail, an ingredient and has a description.
puts "Seeds Done 👍"


