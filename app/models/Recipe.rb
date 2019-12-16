class Recipe

    attr_accessor :ingredients, :user
    @@all = []

    def initialize(ingredients, user)

        @ingredients = ingredients
        @user = user
        @@all << self 
    end 

    

end 