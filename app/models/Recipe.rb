class Recipe

    attr_accessor :name, :user
    @@all = []

    def initialize(name, user)

        @name = name
        @user = user
        @@all << self 
    end 

    def ingredients

       return RecipeIngredient.all.select {|meal| meal.recipe == self }

       #bug: when this selects and goes through, it goes to the recipes and returns any associated
       #with the same user, which might include other recipes as well
       #bug fix: forgot the = 
    #    RecipeIngredient.all.select{|meal|meal.recipe = self}

    #    RecipeIngredient.all.each do |meal|
    #     if meal.recipe == self 
    #         puts meal.ingredient.name 
    #     end 
    #    end 
    end 

    def self.all
        
        return @@all
    end 

    def self.count_recipes

        Recipe.all.each do |recipe|

            recipe_array = RecipeCard.all.map{|rc| rc.recipe == recipe }
            recipe_array.length 

        end 

    end 

    def self.most_popular 

        # finds highest number of RecipeCard instances with the .recipe attribute, then
        #returns the recipe object 

        #most_pop = RecipeCard.all.map {|recipe_card|recipe_card.recipe} later needs .mode

        compare_array = []

        Recipe.all.each do |recipe|

            recipe_array = RecipeCard.all.map{|rc| rc.recipe == recipe}
            puts recipe_array 
            # if recipe_array.length > compare_array.length 
            #     compare_array = recipe_array.length
            # end 
        end

        # return compare_array[0]
    end 


end 