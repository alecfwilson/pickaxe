palindrome_matcher = /
\A
  (?<palindrome>
                # nothing, or
   | \w         # a single character, or
   | (?:        # x <palindrome> x
       (?<some_letter>\w)
       \g<palindrome>
       \k<some_letter+0>
       )
   )
\z
/x

puts palindrome_matcher.match "madam"
puts palindrome_matcher.match "m"
puts palindrome_matcher.match "adam"
