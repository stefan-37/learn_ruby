def translate(sentence)
  sentence.split.map do |token|
    if "aeiou".include?(token[0])
      token + "ay"
    else
      first_vowel_index = token.chars.index { |c| "aeiou".include?(c) }
      first_vowel_index += 1 if token[first_vowel_index] == "u" && token[first_vowel_index - 1] == "q"
      first_consonants = token[0, first_vowel_index]
      token[first_vowel_index..-1] + first_consonants + "ay"
    end
  end.join(" ")
end