require "simon_says"

# By now we should be getting better at reading tests. We should able to see 
# what methods will need to be defined and what they need to return.

describe "Simon says" do
  describe "echo" do
    it "should echo hello" do
      # calling the method echo and passing in "hello"
      # should return "hello"
      echo("hello").should == "hello"
    end

    it "should echo bye" do
      echo("bye").should == "bye"
    end
  end

  describe "shout" do
    it "should shout hello" do
      # calling the method shout and passing in "hello"
      # should return "HELLO"
      shout("hello").should == "HELLO"
    end

    it "should shout multiple words" do
      shout("hello world").should == "HELLO WORLD"
    end
  end

  describe "repeat" do
    it "should repeat" do
      repeat("hello").should == "hello hello"
    end

    # Wait a second! How can you make the "repeat" method
    # take one *or* two arguments?
    #
    # def repeat(string, num = 1)
    #   # your code here
    # end
    #
    # The important part is num = 1. What happens is if a num isn't given,
    # then num will fallback on 1, i.e. it has a default value of 1.
    it "should repeat a number of times" do
      repeat("hello", 3).should == "hello hello hello"
    end
  end

  describe "start_of_word" do
    it "returns the first letter" do
      start_of_word("hello", 1).should == "h"
    end

    it "returns the first two letters" do
      start_of_word("Bob", 2).should == "Bo"
    end

    it "returns the first several letters" do
      s = "abcdefg"
      start_of_word(s, 1).should == "a"
      start_of_word(s, 2).should == "ab"
      start_of_word(s, 3).should == "abc"
    end
  end

  describe "first_word" do
    it "tells us the first word of 'Hello World' is 'Hello'" do
      first_word("Hello World").should == "Hello"
    end

    it "tells us the first word of 'oh dear' is 'oh'" do
      first_word("oh dear").should == "oh"
    end
  end

  describe "titleize" do
    it "capitalizes a word" do
      titleize("jaws").should == "Jaws"
    end

    it "capitalizes every word (aka title case)" do
      titleize("david copperfield").should == "David Copperfield"
    end

    it "doesn't capitalize 'little words' in a title" do
      titleize("war and peace").should == "War and Peace"
    end

    it "does capitalize 'little words' at the start of a title" do
      titleize("the bridge over the river kwai").should == "The Bridge over the River Kwai"
    end
  end

end
