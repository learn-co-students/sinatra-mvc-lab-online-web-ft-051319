require 'pry'
class PigLatinizer

    def piglatinize(phrase)
        words = phrase.split(" ")
        latinized = words.map do |word|
            latinize_word(word)
        end
        latinized.join(" ")
    end

    def latinize_word(word)
        vowels = %w(a e i o u A E O I U)

        letters = word.split("")

        latin_word = ""

        if vowels.include?(letters[0])
            latin_word = word + "way"
        else
            consonant_cluster = letters.shift
            for letter in letters
                if vowels.include?(letter)
                    latin_word = word.slice(consonant_cluster.length, word.length) + consonant_cluster + "ay"
                    break
                else
                    consonant_cluster += letter
                end
            end
        end
        latin_word
    end
end

