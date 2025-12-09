# Challenge: Valid Anagram
# Determine if two strings are anagrams (contain the same characters with the same frequencies)
# Example: "listen" and "silent" => true

def is_anagram?(s, t)
  if s.length != t.length
    return "false: #{s} and #{t} aren't anagrams"
  else
    return "true: #{s} and #{t} are anagrams" if s.chars.sort == t.chars.sort
    return "false: #{s} and #{t} aren't anagrams"
  end
end

puts is_anagram?("listen", "silint")