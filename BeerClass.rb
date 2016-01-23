class Beer
    
    attr_accessor :beer_name, :brewery,
                :style, :abv, :ibu
    
end    

#Add a new beer
my_beer = Beer.new
puts "What is the beer's name?"
my_beer.beer_name=(gets.chomp)
puts "What is the name of the brewery?"
my_beer.brewery=(gets.chomp)
puts "what is the style of the beer?"
my_beer.style=(gets.chomp)
puts "What is the % alcohol by volume?"
my_beer.abv=(gets.chomp)
puts "What is the number of IBUs?"
my_beer.ibu=(gets.chomp)


#get summary of new beer
puts "#{my_beer.beer_name} is a #{my_beer.style
} brewed by #{my_beer.brewery}. This beer contains 
#{my_beer.abv} % ABV and #{my_beer.ibu} IBUs."

puts my_beer.inspect