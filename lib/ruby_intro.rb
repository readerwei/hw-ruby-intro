# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  summation = 0
  for i in 0...arr.size
    summation = summation + arr.at(i)
  end
  return summation
end

def max_2_sum arr
  if arr.size == 0 
    return 0
  end
  max1 = arr.max
  arr.delete(max1)
  if arr.size > 0
    return max1 + arr.max
  else
    return max1
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for i in 0...arr.size
    for j in i+1...arr.size
      if (arr[i] + arr[j]) == n 
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  s2 = s.downcase
  if s.size == 0 
    return false
  end
  if s2 =~ /^[aeiou\W].*/
    return false
  end
  return true
end

def binary_multiple_of_4? s
  if s =~ /^[01]+/
    if s.to_i(2) % 4 == 0
      return true
    end
  end
  return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.size == 0 or price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    "$" + ("%.2f" % @price)
  end
end
