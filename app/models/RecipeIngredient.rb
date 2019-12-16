class RecipeIngredient

    attr_reader :ingredient, :recipe 
    @@all = []

    def initialize(ingredient, recipe)

        @ingredient = ingredient
        @recipe = recipe 
        @@all << self
    end 

    def self.all
        return @@all
    end 

    #RecipeIngredient accessors already include #ingredient and #recipe
    #However, can use #ingredient with additional logic to also show
    #users who have an allergic reaction to this specific ingredient
    #as a more robust use-case. Depends on where allergy will go 



end 