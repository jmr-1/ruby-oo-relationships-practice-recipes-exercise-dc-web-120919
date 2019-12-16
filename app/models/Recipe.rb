class Recipe

    attr_accessor :ingredients, :users
    @@all = []
    def initialize(ingredients, users)


        @@all << self 
    end 

end 