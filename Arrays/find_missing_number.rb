# Challenge: Find Missing Number
# Given array containing n distinct numbers from 0 to n, find the missing number
# Example: [3, 0, 1] => 2

def find_missing_number(nums)
  n = nums.length
  expected_sum = n * (n + 1) / 2
  actual_sum = nums.sum
  
  expected_sum - actual_sum
end

puts find_missing_number([3, 0, 1])
puts find_missing_number([0, 1, 2, 3, 4, 5])