def echo(greet)
	return greet
end

greet = ("Hello")

def shout(greet)
	return greet.upcase
end

greet = ("Hello")

def multiple(x, y)
	return (x + y).upcase
end

multiple = ('Hello world')

def repeat(greet, num = 2)
	( [greet] * num ).join(' ') 
end

def start_of_word(start, length)
	start.slice(0,length)
end

def first_word(string)
	  string.split[0]
end

def titleize (string)
	little_words = ["and", "the", "over"]
	words = string.split
	words[0].capitalize!
	words.each { |x| x.capitalize! unless little_words.include? x }
	words.join " "
end
	  