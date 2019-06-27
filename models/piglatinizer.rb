class PigLatinizer

    def piglatinize_word(word)
     first_letter = word[0].downcase
 
      if ["a", "e", "i", "o", "u"].include?(first_letter)
       word + "way"
     else
       consonants = []
       letter_array = word.split("")
       letter_array.each do |letter|
         if ["a", "e", "i", "o", "u"].include?(letter)
           break
         else
           consonants << letter
         end
       end
       word.slice(consonants.length..-1)+ consonants.join + "ay" #slice word starting at consonants.length though the end of the word, add consonants back + ay
     end
   end
 
    def piglatinize(user_phrase)
     piglatinized = []
     user_phrase.split(" ").each do |word|
       piglatinized << piglatinize_word(word)
     end
     piglatinized.join(" ")
   end
 end 