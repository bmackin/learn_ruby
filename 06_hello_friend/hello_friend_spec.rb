require "friend"

describe Friend do

  it "says hello to someone" do
    friend = Friend.new
    friend.greet("Bob").should == "Hello Bob!"
  end

  it "says hello to no one" do
    # Hint: remember default values?
    #
    # def greet(name = ?)
    #   # your code here
    # end
    #
    # What should ? be equal to?
    friend = Friend.new
    friend.greet.should == "Hello !"
  end
end
