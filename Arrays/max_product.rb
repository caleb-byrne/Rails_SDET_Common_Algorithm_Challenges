# Challenge: Max Product of Two Elements
# Return the maximum product of any two numbers in the array
# Example: [2, 3, -2, 4] => 12

def max_product(nums)
  ordered = nums.sort
  [ordered[-1] * ordered[-2], ordered[0] * ordered[1]].max
end


puts max_product([2, 3, -2, 4])
puts max_product([-1, -3, -4, 2, 0, -5])