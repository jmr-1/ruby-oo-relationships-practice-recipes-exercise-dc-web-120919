class Ingredient

    attr_reader :name

    @@all = []


    def initialize(name="none")

        @name = name 
        @@all << self 
    end 

    def self.all

        return @@all
    end 

    def self.most_common_allergen

        #do after allergy class 
    end 

end 
