# Question 1
#  1 2 2 3. Because uniq does not have the ! bang operator to mutate the caller.

# Question 2
# 1. No equal, used to compare and check if the item is not equal to.
# 2. ! Before an object make it evaluate the opposite boolean value.
# 3. Bang operator, when used after a method usually means it will mutate the caller.
# 4. ? is used for the ternary operator.
# 5. A ? after a method is used to remind you the method will check for a condition.
# 6. !! will turn an object into its boolean equivalent.

# Question 3
advice = "Few things in life are as important as house training your pet dinosaur."
puts advice.gsub!('important', 'urgent')

# Question 4
# 1. .delete_at will delete at index 1
# 2. .delete will delete the the item passed into to delete.

# Question 5
puts (10..100).cover?(42)

# Question 6
famous_words = "seven years ago..."

famous_words = "Four score and " + famous_words

famous_words.prepend("Four score and ")

# Question 7
# 42

# Question 8
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flintstones.flatten!

# Question 9
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.assoc("Barney")

# Question 10
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end
