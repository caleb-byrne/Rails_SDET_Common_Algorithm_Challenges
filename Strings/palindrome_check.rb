# Challenge: Palindrome Check
# Determine if a string is a palindrome (reads the same forwards and backwards)
# Example: "racecar" => true, "hello" => false

def palindrome_check(s)
  s = s.downcase.gsub(/[^a-z0-9]/, '') # Normalize the string
  left = 0
  right = s.length - 1
  helper(s, left, right)
end

def helper(s, left, right)
  if left >= right
    puts "true #{s} is a palindrome"
    return true
  elsif s[left] != s[right]
    puts "false #{s} is not a palindrome"
    return false
  else
    helper(s, left + 1, right - 1)
  end
end

palindrome_check("Raceedar")