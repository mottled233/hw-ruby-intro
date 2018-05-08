# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.reduce(:+) unless arr.none?
  return 0
end


def max_2_sum arr
  return arr.max_by(2){|x| x}.reduce(:+) unless arr.none?
  return 0
end

def sum_to_n? arr, n
  arr.any? do |x|
    arr.any?{|y| x!=y && x+y==n}
  end
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  (/^[^aeiou,\d,\W]/i =~ s)==0
end

def binary_multiple_of_4? s
  /[^1,0]/ =~ s || s.length<1 ? false : s.to_i(2)%4==0
end


# Part 3

class BookInStock
  
  def initialize(isbn, price)
    if(isbn.length<1||price<=0)
      raise ArgumentError
    end
    @price = price
    @isbn = isbn
  end
  
  def price
    @price
  end
  
  def price=(val)
    @price = val
  end
    
  def isbn
    @isbn
  end
    
  def isbn=(val)
    @isbn = val
  end
  
  def price_as_string
    format("$%.2f",@price)
  end
end
