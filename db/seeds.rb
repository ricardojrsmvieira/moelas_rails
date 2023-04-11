# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Drink.destroy_all

Drink.create(
    name: "Absinto",
    quantity: 10
)

Drink.create(
    name: "Vodka",
    quantity: 30
)

Drink.create(
    name: "Rum",
    quantity: 5
)

Drink.create(
    name: "Gin",
    quantity: 12
)

Drink.create(
    name: "Groselha",
    quantity: 200
)

Drink.create(
    name: "Whisky",
    quantity: 32
)

puts "Created #{Drink.count} drinks."


Cocktail.destroy_all

Cocktail.create(
    name: "Pina Colada"
)

Cocktail.create(
    name: "Sex on the Beach"
)

Cocktail.create(
    name: "TAGV"
)

Cocktail.create(
    name: "Mata Ratos"
)

puts "Created #{Cocktail.count} cocktails."

DrinksCocktail.destroy_all

DrinksCocktail.create(
    drink_id: Drink.find_by(name: 'Absinto').id,
    cocktail_id: Cocktail.find_by(name: 'Pina Colada').id,
    quantity: 1
)

DrinksCocktail.create(
    drink_id: Drink.find_by(name: 'Vodka').id,
    cocktail_id: Cocktail.find_by(name: 'Pina Colada').id,
    quantity: 2
)

DrinksCocktail.create(
    drink_id: Drink.find_by(name: 'Rum').id,
    cocktail_id: Cocktail.find_by(name: 'Sex on the Beach').id,
    quantity: 4
)

DrinksCocktail.create(
    drink_id: Drink.find_by(name: 'Gin').id,
    cocktail_id: Cocktail.find_by(name: 'Sex on the Beach').id,
    quantity: 1
)

DrinksCocktail.create(
    drink_id: Drink.find_by(name: 'Vodka').id,
    cocktail_id: Cocktail.find_by(name: 'Sex on the Beach').id,
    quantity: 3
)

DrinksCocktail.create(
    drink_id: Drink.find_by(name: 'Absinto').id,
    cocktail_id: Cocktail.find_by(name: 'TAGV').id,
    quantity: 3
)

DrinksCocktail.create(
    drink_id: Drink.find_by(name: 'Gin').id,
    cocktail_id: Cocktail.find_by(name: 'TAGV').id,
    quantity: 2
)

DrinksCocktail.create(
    drink_id: Drink.find_by(name: 'Whisky').id,
    cocktail_id: Cocktail.find_by(name: 'Mata Ratos').id,
    quantity: 1
)

DrinksCocktail.create(
    drink_id: Drink.find_by(name: 'Rum').id,
    cocktail_id: Cocktail.find_by(name: 'Mata Ratos').id,
    quantity: 3
)

puts "Created #{DrinksCocktail.count} drinks_cocktail."
