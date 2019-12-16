class RecipeCard

    attr_accessor :user, :recipe, :date, :rating 

    @@all = []

    def initialize(user, recipe, rating, date=Time.now)

        @user, @recipe, @date, @rating = user, recipe, date, rating 
        @@all << self 
    end 

    def self.all
        
        return @@all
    end


end 