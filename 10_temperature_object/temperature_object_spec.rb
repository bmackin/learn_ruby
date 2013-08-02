# Note: This is the last problem, and it is quite hard!
# Take your time, don't be scared to ask for help–
# we're pushing your limits, if you can do it you'll be in an amazing position moving forward.

# Remember one degree fahrenheit is 5/9 of one degree celsius, 
# and the freezing point of water is 0 degrees celsius but 32 degrees fahrenheit.

require "temperature"

describe Temperature do

  describe "can be constructed with an options hash" do
    describe "in degrees fahrenheit" do
      it "at 50 degrees" do
        # A hash with the key "f" is being passed in.
        Temperature.new({:f => 50}).to_fahrenheit.should == 50
        # Remember, new is synonymous with initialize.
        # An example might help:
        # 
        # class Person
        #   def initialize(name)
        #     @name = name
        #   end
        # end
        # 
        # Person.new("Alex")
      end

      describe "and correctly convert to celsius" do
        it "at freezing" do
          Temperature.new({:f => 32}).to_celsius.should == 0
        end

        it "at boiling" do
          Temperature.new({:f => 212}).to_celsius.should == 100
        end

        it "at body temperature" do
          Temperature.new({:f => 98.6}).to_celsius.should == 37
        end

        it "at an arbitrary temperature" do
          Temperature.new({:f => 68}).to_celsius.should == 20
        end
      end
    end

    describe "in degrees celsius" do
      it "at 50 degrees" do
        # Now a hash with the key "c" is being passed in.
        Temperature.new({:c => 50}).to_celsius.should == 50
      end

      describe "and correctly convert to fahrenheit" do
        it "at freezing" do
          Temperature.new({:c => 0}).to_fahrenheit.should == 32
        end

        it "at boiling" do
          Temperature.new({:c => 100}).to_fahrenheit.should == 212
        end
      end
    end
  end

  describe "can be constructed via factory methods" do

    it "in degrees celsius" do
      Temperature.in_celsius(50).to_celsius.should == 50
      Temperature.in_celsius(50).to_fahrenheit.should == 122
      # Nothing different is being achieved with these two lines,
      # they're just a different way of doing the same thing,
      # that requires you to write your code another way. 
      #
      # Remember, methods called on a class are called class methods.
      # Here's an example:
      #
      # class Person
      #   def self.what_am_i
      #     return "I am a person."
      #   end
      # end
      #
      # Person.what_am_i # => "I am a person."
    end

    it "in degrees fahrenheit" do
      Temperature.in_fahrenheit(50).to_fahrenheit.should == 50
      Temperature.in_fahrenheit(50).to_celsius.should == 10
    end

  end

  # Here's another way to solve the problem!
  describe "Temperature subclasses" do
    describe "Celsius subclass" do
      it "is constructed in degrees celsius" do
        Celsius.new(50).to_celsius.should == 50
        Celsius.new(50).to_fahrenheit.should == 122
        # Again, this is a different way of doing the same thing.
        # Instead of initializing a new Temperature with a hash that has a key "c",
        # we're just initializing a new Celsius.
      end

      it "is a Temperature subclass" do
        # In other words, Celsius *inherits* from Temperature.
        Celsius.new(0).should be_a(Temperature)
        # Remember class inheritance?
        #
        # class Person < Mammal
        # end
      end
    end

    describe "Fahrenheit subclass" do
      it "is constructed in degrees fahrenheit" do
        Fahrenheit.new(50).to_fahrenheit.should == 50
        Fahrenheit.new(50).to_celsius.should == 10
      end

      it "is a Temperature subclass" do
        Fahrenheit.new(0).should be_a(Temperature)
      end
    end
  end

  # Extra credit:
  #
  # 1. Fill in the tests below, so that they test for two class methods – ftoc and ctof
  # 2. Refactor the rest of your code so it calls these two methods when appropriate

  describe "utility class methods" do

  end

end

# There are two extra credit problems if you feel you're up for them by the way!
# The folders for them are called bonus_dictionary and bonus_rpn_dictionary