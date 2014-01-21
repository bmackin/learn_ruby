def add(x, y)
	x + y
end

def subtract(a, b)
	a - b
end

def sum(a=[])
result = 0
a.each { |number| result += number}
result
end
