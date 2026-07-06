def translate(sentence)
  sentence.split.map do |word|
    if "aeiou".include?(word[0])
      word + "ay"
    else
      consonants = word.chars.index { |c| "aeiou".include?(c) }
      consonants += 1 if word[consonants] == "u" && word[consonants - 1] == "q"
      first_consonants = word[0, consonants]
      word[consonants..-1] + first_consonants + "ay"
    end
  end.join(" ")
end