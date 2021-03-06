# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  arr.each { |a| sum+=a }
  return sum
end

def max_2_sum arr
  if arr==[]
    return 0
  else
    return sum(arr.sort.last(2))
  end
end

def sum_to_n? arr, n
  if (arr.empty?)
    return false
  else
    arr.combination(2).to_a.each do |pair|
      return true if sum(pair)==n
    end
  end
  return false
end

# Part 2

def hello(name)
  returns = "Hello, "+name
end

def starts_with_consonant? s
  if s.empty?
    return false
  elsif /^[^aeiou\W]/i.match(s)==nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if s=~ /^[0-1]+$/
    return s.to_i(2) % 4==0
  end
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn,:price

  def initialize isbn, price
    raise ArgumentError if isbn.empty?||price<=0
    @isbn=isbn
    @price = price
    end
  def price_as_string
    format("$%.2f",@price)
  end
end
