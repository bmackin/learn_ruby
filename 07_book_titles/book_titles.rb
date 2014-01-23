class Book
 attr_accessor :title

		def title=(string)
	  no_caps = ["the", "a", "an", "and"]
	  string.split.each do |word|
	  	word = word.capitalize unless no_caps.include?

	  end
		end

end


