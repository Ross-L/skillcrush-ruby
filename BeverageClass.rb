class Beverage
    def set_beverage_name=(beverage_name)
        @beverage_name = beverage_name
    end
    
    def get_beverage_name
        return @beverage_name
    end

class Beer < Beverage
    
    def set_brewery=(brewery)
        @brewery = brewery
    end
    
    def get_brewery
        return @brewery
    end
    
    def set_style=(style)
        @style = style
    end
    
    def get_style
        return @style
    end
    
    def set_abv=(abv)
        @abv = abv
    end
    
    def get_abv
        return @abv
    end
    
    def set_ibu=(ibu)
        @ibu = ibu
    end
    
    def get_ibu
        return @ibu
    end
end    

class Cocktail < Beverage
    
    def set_cocktail_recipe(cocktail_recipe)
        @cocktail_recipe = cocktail_recipe
    end
    
    def get_cocktail_recipe
        return @cocktail_recipe
    end
    
end


#Add a new beer
my_beer = Beer.new
puts "What is the beer's name?"
my_beer.set_beer_name=(gets.chomp)
puts "What is the name of the brewery?"
my_beer.set_brewery=(gets.chomp)
puts "what is the style of the beer?"
my_beer.set_style=(gets.chomp)
puts "What is the % alcohol by volume?"
my_beer.set_abv=(gets.chomp)
puts "What is the number of IBUs?"
my_beer.set_ibu=(gets.chomp)


#get summary of new beer
puts "#{my_beer.get_beer_name} is a #{my_beer.get_style
} brewed by #{my_beer.get_brewery}. This beer contains 
#{my_beer.get_abv} % ABV and #{my_beer.get_ibu} IBUs."

puts my_beer.inspect