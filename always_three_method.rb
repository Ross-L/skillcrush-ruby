def always_three(number)
    puts "The final number is #{(((number + 5) * 2 - 4) / 2) - number}."
end

puts "Give me a number."
number = gets.to_i

always_three(number)