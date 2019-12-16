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
        return RecipeCard.all.select {|recipe| recipe.user == self }
    end 

    def add_recipe_card(recipe, date, rating)

        return RecipeCard.new(self, recipe, date, rating)
    end 

    def declare_allergy(ingredient)

        Allergy.new(self, ingredient)
    end 

    def allergens #returns allergens this user is allergic to 

        return Allergy.all.select {|allergy| allergy.user == self}
    end 

    def top_three_recipes

        sorted_array = self.recipes.sort_by {|recipe|recipe.rating}.reverse 
        return sorted_array[0..2]
    end 

    def most_recent_recipe

        #max_by or max? 
        #uses self.recipes for a specific user and sorts by date, returns highest 

        self.recipes.max_by {|recipe| recipe.date }

    end 



    def safe_recipes


    end 

end 