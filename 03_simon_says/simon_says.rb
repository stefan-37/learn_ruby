def echo(message)
  message
end

def shout(message)
  message.upcase
end

def repeat(message, times = 2)
  if times == 1
    message
  else
    ([message] * times).join(" ")
  end
end

def start_of_word(word, n)
  word[0, n]
end 

def first_word(words)
  words.split.first
end

def titleize(sentence)
  little_words = ["and", "the", "over"]
  words = sentence.split(" ")
  words.each_with_index.map do |word, index|
    if little_words.include?(word) && index != 0
      word
    else
      word.capitalize
    end
  end.join(" ")
end
