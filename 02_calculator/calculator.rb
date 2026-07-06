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

def factorial(n)
  if n == 0
    1
  else
    (1..n).reduce(1) { |total, n| total * n }
  end
end