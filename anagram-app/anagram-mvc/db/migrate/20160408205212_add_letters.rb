class AddLetters < ActiveRecord::Migration
  def change
    add_column :words, :letters, :string
    
    Word.all.each do |word|
      chars = word.text.chars
      alpha_chars = chars.sort
      word.letters = alpha_chars.join
      word.save
    end
  end
end
