get "/" do 
   erb :index 
end

post "/" do
    @word = params[:word]
    if valid_input?(@word)
        redirect "/anagrams/#{@word}"
    else
       @error = "Invalid input. Please enter a word with 3 distinct letters."
       erb :index
    end
end

get "/anagrams/:word" do
    @word = params[:word]
    @anagrams = Word.find_anagram(@word)
    erb :show
end

def three_letters?(input)
   if input.length == 3 
       true
   else
       false
   end
end

def distinct_letters?(input)
   letter_array = input.chars
   unique_letters = letter_array.uniq
   if unique_letters.length < letter_array.length
       false
   else
       true
   end
end

def valid_input?(input)
    if three_letters?(input) && distinct_letters?(input)
        true
    else
        false
    end
end

