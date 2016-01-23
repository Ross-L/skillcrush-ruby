puts "What is 1 + 1?"
answer = gets.chomp.to_i

if answer == 2
  puts "1 and 1 does indeed equal 2"
else
  puts "1 + 1 does not equal #{answer}."
end

puts "What is your name?"
my_name = gets.chomp

if my_name == "Skillcrush"
  puts "Helooooo, Skillcrush!"
else
  puts "Oops, I thought your name was Skillcrush. Sorry about that, #{my_name}."
end

puts "What is your favorite color?"
fav_color = gets.chomp.downcase
puts fav_color
if fav_color == "red"
  puts "Roses are red."
elsif fav_color == "orange"
  puts "Oranges are orange."
elsif fav_color == "yellow"
  puts "Yellow is a good looking fellow."
elsif fav_color == "green"
  puts "Green is mean."
elsif fav_color == "blue"
  puts "Whoopdeedoo, I'm blue!"
elsif fav_color == "purple"
  puts "Purple is purple."
else
  puts "I don't know that color. Thanks for introducing me. I love meeting new colorful friends. :)"
end