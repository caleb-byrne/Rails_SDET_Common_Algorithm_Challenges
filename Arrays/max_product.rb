# Challenge: Max Product of Two Elements
# Return the maximum product of any two numbers in the array
# Example: [2, 3, -2, 4] => 12

def max_product(nums)
  sorted = nums.sort
  product1 = sorted[-1] * sorted[-2]
  product2 = sorted[0] * sorted[1]
  [product1, product2].max
end


puts max_product([2, 3, -2, 4])
puts max_product([-1, -3, -4, 2, 0, -5])