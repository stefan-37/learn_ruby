def add(first, second)
  first + second
end

def subtract(first, second)
  first - second
end

def sum(array)
  array.reduce(0) { |total, n| total + n }
end

def multiply(*numbers)
  numbers.reduce(1) { |total, n| total * n }
end

def power(base, exponent)
  base ** exponent
end