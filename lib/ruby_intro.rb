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
      if arr[x]+arr[y] == n
        puts x
        puts y
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

end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

puts sum_to_n?([-1, -2, 3, 4, 5, -8], -3)
puts sum_to_n?([-1, -2, 3, 4, 5, -8], 12)
puts sum_to_n?([-1, -2, 3, 4, 6, -8], 12)