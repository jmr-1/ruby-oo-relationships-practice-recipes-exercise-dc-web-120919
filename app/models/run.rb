require_relative './User.rb'
require_relative './RecipeIngredient.rb'
require_relative './RecipeCard.rb'
require_relative './Recipe.rb'
require_relative './Ingredient.rb'
require_relative './Allergy.rb'
require 'pry'

#users
j_l = User.new("John-Louis")
mansour = User.new("Mansour")

#ingredients
chocolate = Ingredient.new("chocolate")
red_pepper = Ingredient.new("red pepper")
lemon = Ingredient.new("lemon")
tea_bag = Ingredient.new("tea bag")

#recipes
chocolate_cake = Recipe.new("J-L's cake ", j_l)
choc_cake2 = Recipe.new("Mansour's cake ", mansour)
lemonade = Recipe.new("M's lemonade", mansour)
hot_pizza = Recipe.new("Hot pizza", j_l)
tea = Recipe.new("Tea", j_l)

#recipe_ingredients_lists/joins
a = RecipeIngredient.new(chocolate, chocolate_cake)
b = RecipeIngredient.new(lemon, lemonade)
c = RecipeIngredient.new(red_pepper, hot_pizza)

d1 = RecipeIngredient.new(tea_bag, tea)
d2 = RecipeIngredient.new(red_pepper, tea)
d3 = RecipeIngredient.new(lemon, tea)



# mansour.declare_allergy(red_pepper)
# mansour.declare_allergy(lemon)
# mansour.declare_allergy(chocolate)
# j_l.declare_allergy(chocolate)



new_recipe = RecipeCard.new(j_l, chocolate_cake, 7.5)
newest_recipe = RecipeCard.new(mansour, choc_cake2, 9)
even_newer_recipe = RecipeCard.new(mansour, lemonade, 8)
new_recipe2 = RecipeCard.new(mansour, chocolate_cake, 10)

#hoc_card = 
#make this ref objects later 

puts "tests follow"
puts chocolate_cake.user.name == "John-Louis" 
puts new_recipe.recipe.user.name == "John-Louis"

puts "***tests ingredients"
puts a.ingredient.name == "chocolate"
puts tea.ingredients == [tea_bag, red_pepper, lemon]

puts mansour.most_recent_recipe == even_newer_recipe 
puts "allergens tests"
puts mansour.allergens.select {|allergens| allergens.ingredient == red_pepper }

puts Recipe.most_popular == chocolate_cake 

binding.pry 