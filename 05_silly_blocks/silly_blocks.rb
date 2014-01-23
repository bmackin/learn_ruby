def reverser
	a = yield.split.reverse{ |word| }
end


def reverser
yield.reverse.split.reverse.join(' ')
end


def adder(num = 1)
  yield + num
end


def repeater(num = 2)
	yield + num
end

def repeater(num = 1)
  num.times do 
  yield
  end
end


