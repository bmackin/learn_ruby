def reverser
	a = yield.split.reverse{ |word| }
end


def reverser
yield.reverse.split.reverse.join(' ')
end


def adder(num = 1)
  yield + num
end


def repeater
	