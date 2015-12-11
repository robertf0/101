# Question 1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones %w(Fred Barney Wilma Betty BamBam Pebbles)

# Question 2
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

# Question 3
flintstones.push("Dino").push("Hoppy")

# Question 4
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index('house'))

# Question 5
statement = "The Flintstones Rock!"
statement.scan('t').count

# Question 6
title = "Flintstone Family Members"
title.center(40)
