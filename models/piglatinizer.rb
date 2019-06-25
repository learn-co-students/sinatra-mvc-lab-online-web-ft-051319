require "pry"

class PigLatinizer

  attr_reader :phrase

  def initialize

  end

  Consonants = "bcdfghjklmnpqrstvwxyz".split(//)
  Vowels = "aeoui".split(//)

  def piglatinize(words)
    new_phrase = []
    words.split(" ").each do |word|
      letters = word.split(//)
      if Vowels.include?(letters[0].downcase)
        new_phrase << "#{letters.join('')}way"
      else
        starting_consonants = []
        letters.each do |letter|
          if Consonants.include?(letter.downcase)
            starting_consonants << letter #if the letter is a consonant then add it to the starting_consonants array
          else
            break #if the letter is a vowel then break the loop
          end
        end
        new_word = "#{(letters[starting_consonants.size..-1]+starting_consonants).join('')}ay"
        #takes the last n letters of the array and puts them in front, then adds the starting consonants and then joins them, ending with "ay"
        #the last n letters are taken from the first few consonants to the end of the letter array denoted by -1 
        new_phrase << new_word
      end
    end
    new_phrase.join(" ")
  end



end
