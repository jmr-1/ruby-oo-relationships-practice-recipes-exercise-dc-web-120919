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
    #    RecipeIngredient.all.select{|meal|meal.recipe = self}

    #    RecipeIngredient.all.each do |meal|
    #     if meal.recipe == self 
    #         puts meal.ingredient.name 
    #     end 
    #    end 
    end 

end 