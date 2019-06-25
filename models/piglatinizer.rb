class PigLatinizer

  attr_accessor :phrase

  def piglatinize(phrase)
    words = phrase.split(" ")
    new_words = words.map do |word|
      word_handler(word)
    end
    return new_words.join(" ")
  end

  def word_handler(word)
    if word.length > 1
      if word[0].scan(/[aeiouAEIOU]/).length != 0
        return word + "way"
      else
        word_parts = word.split(/([aeiouAEIOU].*)/)
        return word_parts[1] + word_parts[0] + "ay"
      end
    else
      return word + "way"
    end
  end

end
