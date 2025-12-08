# Challenge: Palindrome Check
# Determine if a string is a palindrome (reads the same forwards and backwards)
# Example: "racecar" => true, "hello" => false

def palindrome_check(s)
  str = s.downcase.gsub(/[^a-z0-9]/, '')
  left_index = 0
  right_index = str.length - 1

  while left_index < right_index
    if str[left_index] != str[right_index]
      puts "#{str} is not a palindrome"
      return false
    end
    left_index += 1
    right_index -= 1
  end
  puts "#{str} is a palindrome"
  return true
end

palindrome_check("Raceedar")