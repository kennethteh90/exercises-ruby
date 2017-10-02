#find out if strings s and t are anagrams of each other.

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  s2 = s.chars # split string into chars in an array
  s2.sort! # sort in place
  t2 = t.chars
  t2.sort!
  s2 == t2
end
