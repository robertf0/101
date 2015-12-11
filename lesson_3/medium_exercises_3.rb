# Question 1
=begin

a_outer is 42 with an id of: 85 before the block.
b_outer is forty two with an id of: 10132540 before the block.
c_outer is [42] with an id of: 10108880 before the block.
d_outer is 42 with an id of: 85 before the block.

a_outer id was 85 before the block and is: 85 inside the block.
b_outer id was 10132540 before the block and is: 10132540 inside the block.
c_outer id was 10108880 before the block and is: 10108880 inside the block.
d_outer id was 85 before the block and is: 85 inside the block.

a_outer inside after reassignment is 22 with an id of: 85 before and: 45 after.
b_outer inside after reassignment is thirty three with an id of: 10132540 before and: 10104020 after.
c_outer inside after reassignment is [44] with an id of: 10108880 before and: 10104000 after.
d_outer inside after reassignment is 44 with an id of: 85 before and: 89 after.

a_inner is 22 with an id of: 45 inside the block (compared to 45 for outer).
b_inner is thirty three with an id of: 10104020 inside the block (compared to 10104020 for outer).
c_inner is [44] with an id of: 10104000 inside the block (compared to 10104000 for outer).
d_inner is 44 with an id of: 89 inside the block (compared to 89 for outer).

a_outer is 22 with an id of: 85 BEFORE and: 45 AFTER the block.
b_outer is thirty three with an id of: 10132540 BEFORE and: 10104020 AFTER the block.
c_outer is [44] with an id of: 10108880 BEFORE and: 10104000 AFTER the block.
d_outer is 44 with an id of: 85 BEFORE and: 89 AFTER the block.

=> "ugh ohhhhh"

=end

# Question 2
=begin

a_outer is 42 with an id of: 85 before the block.
b_outer is forty two with an id of: 16630520 before the block.
c_outer is [42] with an id of: 16630500 before the block.
d_outer is 42 with an id of: 85 before the block.

a_outer id was 85 before the method and is: 85 inside the method.
b_outer id was 16630520 before the method and is: 16630520 inside the method.
c_outer id was 16630500 before the method and is: 16630500 inside the method.
d_outer id was 85 before the method and is: 85 inside the method.

a_outer inside after reassignment is 22 with an id of: 85 before and: 45 after.
b_outer inside after reassignment is thirty three with an id of: 16630520 before and: 16592360 after.
c_outer inside after reassignment is [44] with an id of: 16630500 before and: 16592340 after.
d_outer inside after reassignment is 44 with an id of: 85 before and: 89 after.

a_inner is 22 with an id of: 45 inside the method (compared to 45 for outer).
b_inner is thirty three with an id of: 16592360 inside the method (compared to 16592360 for outer).
c_inner is [44] with an id of: 16592340 inside the method (compared to 16592340 for outer).
d_inner is 44 with an id of: 89 inside the method (compared to 89 for outer).

a_outer is 42 with an id of: 85 BEFORE and: 85 AFTER the method call.
b_outer is forty two with an id of: 16630520 BEFORE and: 16630520 AFTER the method call.
c_outer is [42] with an id of: 16630500 BEFORE and: 16630500 AFTER the method call.
d_outer is 42 with an id of: 85 BEFORE and: 85 AFTER the method call.

=> "ugh ohhhhh"
	

=end

# Question 3

#My string looks like this now: pumpkins
#My array looks like this now: ["pumpkins", "rutabaga"]

#The += is creating a new string and with the << Ruby is just added to the original array.

# Question 4

#My string looks like this now: rutabaga
#My array looks like this now: ["pumpkins"]

# Question 5

# def color_valid(color)
#   color == "blue" || color == "green"
# end
