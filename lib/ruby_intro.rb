# When done, submit this entire file to the autograder.

# Part 1
def numeric?(lookAhead)
  lookAhead =~ /[0-9]/
end

def letter?(lookAhead)
  lookAhead =~ /[A-Za-z]/
end

def sum arr
  # YOUR CODE HERE
  summ = 0
  if arr.length != 0
    arr.each do |x|
      summ += x
    end
    return summ
  end
  return 0
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr.first
  else
    arr.sort!
    return arr[arr.length - 1] + arr[arr.length - 2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for i in (0...arr.length)
    for j in (0...arr.length)
      return true if (arr[i] + arr[j]) == n && arr[i] != arr[j]
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s.split("").each do |x|
    if !letter?(x)
      return false
    end
  end
  arr = ['A', 'a', 'U', 'u', 'E', 'e', 'O', 'o', 'I', 'i']
  arr.each do |letter|
    return false if(s.split("").first.eql? letter)
  end
  return false if s.empty?
  return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s.split("").each do |x|
    return false if !numeric?(x)
  end
  return false if s.empty?
  bol = s.to_i(2).is_a? Integer
  if bol
    s.to_i(2) % 4 == 0? true : false
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    raise ArgumentError.new("Not valid number") if price <= 0
    raise ArgumentError.new("Not valid String") if isbn.empty?
    @isbn = isbn
    @price = price
  end
  
  
  def price_as_string
    return "$" + format('%.2f',price)
  end
end
