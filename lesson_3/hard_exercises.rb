#Question 1
# nil is returned.

#Question 2
#{:a=>"hi there"}

#Question 3
# A)
# "one is: one"
# "two is: two"
# "three is: three"

# B)
# "one is: one"
# "two is: two"
# "three is: three"

#C)
# "one is: two"
# "two is: three"
# "three is: one"

#Question 4
def generate_UUID
  characters = [] 
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit }

  uuid = ""
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1
  end

  uuid
end

#Question 5
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false unless is_a_number?(word)
  end

  true
end
