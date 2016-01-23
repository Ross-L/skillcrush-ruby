puts "What is the weather like outside?"
weather = gets.chomp.downcase

case weather
when "sunny"
    puts "Don't forget the sunscreen."
when "rainy"
    puts "Be sure to grab an umbrella."
when "hot"
    puts "It's cooler by the lake."
when "cold"
    puts "Brrrr. BUndle up."
when "tornado"
    puts "We're not in Kansas anymore. Or are we?"
    puts "Are we in Kansas?"
    input = gets.chomp.downcase
    if input == "yes"
        puts "There's no plaace like home"
    else
        puts "We're off to see the Wizard."
    end
else
    puts "Weird weather we're having today. Good luck!"
end