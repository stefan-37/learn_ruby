class Book
  def initialize
    @title = ""
  end

  def title
    @title
  end

  def title=(new_title)
    special_words = ["a", "an", "and", "in", "of", "the"]
    @title = new_title.split.each_with_index.map do |word, index|
      if special_words.include?(word.downcase) && index != 0
        word
      else
        word.capitalize
      end
    end.join(" ")
  end
end