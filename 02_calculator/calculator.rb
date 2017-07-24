#write your code here
def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  total = 0
  array.each do |n|
    total += n
  end
  return total
end

def multiply(*num)
  product = 1
  num.each do |n|
    product *= n
  end
  return product
end

def power(base,exp)
  base**exp
end

def factorial(num)
  product = 1
  if num == 0
    return product
  else
    (1..num).each do |n|
      product *= n
    end
  end
  return product
end