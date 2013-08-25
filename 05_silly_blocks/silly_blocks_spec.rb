require "silly_blocks"

describe "some silly block functions" do

  describe "reverser" do
    it "reverses the string returned by the default block" do
      result = reverser do
        "hello"
      end
      result.should == "olleh"
      # You might be tempted to ask yourself what the hell is happening here.
      # Well no worries! Superman is here to the rescue!
      # (Heh, you probably don't even know whose written these comments.)
      # 
      # Let's look at this snippet of code in particular:
      # 
      # reverser do 
      #   "hello"
      # end
      #
      # reverser is still a method, and it should return the reverse of the given string, i.e. "olleh",
      # except the string is not being passed in as a parameter. It's being passed in as a do-end block.
      # The way this method can get that do-end block is through yield.
      #
      # def example 
      #   string = yield # yield is equal to... 
      #   string.upcase
      # end
      # 
      # example do 
      #   "My name is Will Richman." # ...this line
      # end
      # 
      # So to get this test to pass the reverser method would look like:
      # 
      # def reverser
      #   yield.reverse
      # end
    end

    it "reverses each word in the string returned by the default block" do
      # Now edit the reverser method above to get this test to pass 
      result = reverser do
        "hello dolly"
      end
      result.should == "olleh yllod"
    end
  end

  describe "adder" do
    it "adds one to the value returned by the default block" do
      adder do
        5
      end.should == 6
      # def adder
      #   num = yield
      #   # what do you want do you with num?
      # end
    end

    it "adds 3 to the value returned by the default block" do
      adder(3) do
        5
      end.should == 8
    end
  end

  describe "repeater" do
    it "executes the default block" do
      n = 2
      repeater do
        n += 3
      end
      n.should == 5
    end

    it "executes the default block 3 times" do
      n = 0
      repeater(3) do
        n += 1
      end
      n.should == 3
    end

    it "executes the default block 10 times" do
      n = 0
      repeater(10) do
        n += 1
      end
      n.should == 10
    end

  end

end
