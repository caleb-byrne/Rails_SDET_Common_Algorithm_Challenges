# Challenge: Reverse String
# Reverse a string
# Example: "hello" => "olleh"

def reverse_string(s)
  str = s
  left = 0
  right = str.length - 1

  while left < right
    str[left], str[right] = str[right], str[left]
    left += 1
    right -= 1    
  end
  str
end

puts reverse_string("hello")