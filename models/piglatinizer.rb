require 'pry'
class PigLatinizer
    
    def piglatinize(words)
        latinized = []
        words = words.split(" ")
        words.each do |word|
            if word =~ (/\A[aeiou]/i)
                word = word + 'way'
                latinized << word
            elsif word =~ (/\A[^aeiou]/i)
            match = /\A[^aeiou]+/i.match(word)
            word = match.post_match + match.to_s + 'ay'
            latinized << word
            end
        end
        latinized.join(" ")
    end


end 