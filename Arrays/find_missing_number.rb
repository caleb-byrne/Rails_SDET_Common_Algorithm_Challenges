# Challenge: Find Missing Number
# Given array containing n distinct numbers from 0 to n, find the missing number
# Example: [3, 0, 1] => 2

def find_missing_number(nums)
  a = nums.sort
  
  a.each_with_index do |num, index|
    return index if num != index
  end

  a.length
  "no missing number"
end

puts find_missing_number([3, 0, 1])
puts find_missing_number([ 0, 1, 2, 3, 4, 5])