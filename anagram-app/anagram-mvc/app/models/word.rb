class Word < ActiveRecord::Base
    def self.find_anagram(word)
        word = word.split(//)
        pot_anagrams = word.permutation.to_a
        pot_anagrams = pot_anagrams.drop(1)
        for i in 0..pot_anagrams.length - 1
        pot_anagrams[i] = pot_anagrams[i].join
        end
        anagrams = Array.new
        pot_anagrams.each do |pot_anagram|
            if Word.find_by_text(pot_anagram).present?
                anagrams.push(pot_anagram)
            end
        end
        anagrams
    end
end