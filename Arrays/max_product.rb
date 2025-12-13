# Challenge: Max Product of Two Elements
# Return the maximum product of any two numbers in the array
# Example: [2, 3, -2, 4] => 12

def max_product(nums)
  max_so_far = -Float::INFINITY
  max_num = nums.max
  min_num = nums.min

  nums.length.each do |i|
    max_so_far = [max_so_far, max_num * nums[i], min_num * nums[i]].max
    max_num = [max_num, nums[i]].max
    min_num = [min_num, nums[i]].min
  end
  max_so_far
end


puts max_product([2, 3, -2, 4])
puts max_product([-1, -3, -4, 2, 0, -5])