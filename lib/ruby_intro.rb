# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr == []
    return 0
  else
    sum = 0
    arr.each{|x| sum+=x}
    return sum
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr == []
  return arr[0] if arr.length == 1
  return sum( arr.max(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  checker = false
  len = arr.length
  return false if len <= 1
  for x in 1..len -1
    for y in 1..len -1
      next if x==y## ไม่เอาตัวซ้ำ
      if arr[x]+arr[y] == n
        checker = true
        break
      end
    end
  end
  return checker
end

# Part 2
def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  resault = false
  return false if s.length == 0
  s=s.downcase
  cons = "bcdfghjklmnpqrstvwxz"
  cons.split("").each{|x| 
  if x == s[0]
    resault = true
    break
  end
  }
  return resault
end

def binary_multiple_of_4? s
  # YOUR CODE HERE ##หารด้วย 4 ลงตัว เเสดงว่า จะต้องลงท้ายด้วย 00 
  return false if s.length == 0
  s.split("").each{|x| return false if x!="1" and x!="0"}
  return true if s.to_i(2) %4 == 0
  return false
end

# Part 3

class BookInStock
  # YOUR CODE HERES
    attr_accessor :isbn
    attr_accessor :price
    def initialize(isbn,price)
      @isbn=isbn
      @price=price
      if @price <= 0 or @isbn.empty? 
        raise ArgumentError
      end
    end
    def price_as_string()
      return "$#{'%.2f' % @price}"
    end
  end
