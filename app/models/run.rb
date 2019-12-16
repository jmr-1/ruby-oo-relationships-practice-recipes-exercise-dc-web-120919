require_relative './User.rb'
require_relative './RecipeIngredient.rb'
require_relative './RecipeCard.rb'
require_relative './Recipe.rb'
require_relative './Ingredient.rb'
require_relative './Allergy.rb'
require 'pry'


j_l = User.new("John-Louis")
chocolate = Ingredient.new("chocolate")
chocolate_cake = Recipe.new(chocolate, j_l)
new_recipe = RecipeCard.new(j_l, chocolate_cake, "7.5")

#hoc_card = 
#make this ref objects later 

puts "tests follow"
puts chocolate_cake.user.name == "John-Louis" 
puts new_recipe.recipe.user.name == "John-Louis"
puts new_recipe.recipe.ingredients.name == "chocolate"

binding.pry 