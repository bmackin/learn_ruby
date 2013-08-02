# Timer formats a given # of seconds
# into something you see on a stopwatch, i.e. 00:00:00 or 00:10:22 

require 'timer'

describe "Timer" do

  # before each test create a new instance of the class Timer
  # and store it into the instance variable named @timer
  before(:each) do
    @timer = Timer.new
  end

  it "should initialize to 0 seconds" do
    @timer.seconds.should == 0
  end

  describe 'time_string' do
    it "should display 0 seconds as 00:00:00" do
      @timer.seconds = 0
      @timer.time_string.should == "00:00:00"
    end

    it "should display 12 seconds as 00:00:12" do
      @timer.seconds = 12
      @timer.time_string.should == "00:00:12"
    end

    it "should display 66 seconds as 00:01:06" do
      @timer.seconds = 66
      @timer.time_string.should == "00:01:06"
    end

    it "should display 4000 seconds as 01:06:40" do
      @timer.seconds = 4000
      @timer.time_string.should == "01:06:40"
    end
  end


  # One way to implement the Timer is with a helper method.
  # This helper method would be called by time_string.
  # Uncomment these specs if you want to be tested for this helper method.
  #
  # describe 'padded' do
  #   it 'pads zero' do
  #     @timer.padded(0).should == '00'
  #   end
  #   it 'pads one' do
  #     @timer.padded(1).should == '01'
  #   end
  #   it "doesn't pad a two-digit number" do
  #     @timer.padded(12).should == '12'
  #   end
  # end

end
