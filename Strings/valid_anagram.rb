# Challenge: Valid Anagram
# Determine if two strings are anagrams (contain the same characters with the same frequencies)
# Example: "listen" and "silent" => true

def is_anagram?(s, t)
    return "false: #{s} and #{t} aren't anagrams"  if s.length != t.length
  
    freq = {}
    s.each_char { |char| freq[char] = (freq[char] || 0) + 1 }
    t.each_char { |char| freq[char] = (freq[char] || 0) - 1 }
end

puts is_anagram?("listen", "silint")