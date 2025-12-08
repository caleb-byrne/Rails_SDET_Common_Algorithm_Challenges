# Challenge: Palindrome Check
# Determine if a string is a palindrome (reads the same forwards and backwards)
# Example: "racecar" => true, "hello" => false

def palindrome_check(s)
  forward = s.downcase
  reverse = s.reverse.downcase
 
  if forward == reverse
    puts "#{forward} == #{reverse} \nThis is a palindrome"
  else
    puts "#{forward} != #{reverse} \nThis is not a palindrome"
  end
end

palindrome_check("Racecar")