class User

    attr_accessor :name 

    @@all = []

    def initialize(name)

        @name = name 
        @@all << self 
    end 

    def self.all
        
        return @@all
    end 

    def recipes

        #returns all of the user's recipes 
        return Recipe.all.select {|recipe| recipe.user == self }
    end 

    def add_recipe_card(recipe, date, rating)

        return RecipeCard.new(self, recipe, date, rating)
    end 

    def declare_allergy

    end 

    def allergens

    end 

    def top_three_recipes

    end 

    def most_recent_recipe

        #max_by or max?
        RecipeCard.all.max_by {|recipe| recipe.date }

    end 
end 