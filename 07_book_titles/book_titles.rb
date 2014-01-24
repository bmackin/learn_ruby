
class Book
  attr_accessor :title

  def title
    no_caps = ["a", "an", "and", "in", "the", "of"]
    new_title =[]

    @title.capitalize!
    @title.split.each do | word |
      if no_caps.include?(word)
        new_title.push(word)
      else
        new_title.push(word.capitalize)
      end
    end
    @book = new_title.join(" ")
  end

end
