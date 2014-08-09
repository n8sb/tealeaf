# Lesson 1
# Quiz

# 1.
# What is the value of a after the below code is executed?

a = 1
b = a
b = 3

puts a # => 1

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# 2. 
# What's the difference between an Array and a Hash?

# => An Array contains single indexed values where as a Hash contains Key / Value pairs

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# 3.
# Every Ruby expression returns a value. Say what value is returned in the below expressions:

arr = [1, 2, 3, 3]
[1, 2, 3, 3].uniq # => [1, 2, 3]
[1, 2, 3, 3].uniq! # => [1, 2, 3]

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# 4.
# What's the difference between the map and select methods for the Array class? 
# Give an example of when you'd use one versus the other.

# Map return a new Array based on the code specified in the block. Method is called.
# Select creates a new Array of the "true" items according to the block. Condition is called.

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# 5.
# Say you wanted to create a Hash. How would you do so if you wanted the hash keys to be String objects instead of symbols?

# You would create the Hash using "hash rockets". Ex. h = {"A"=> 1. "B"=> 2, "C"=> 3}

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# 6.
# What is returned?

x = 1

x.odd? ? "no way!" : "yes, sir!" # => "no way!"

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# 7.
# What is x?

x = 1

3.times do
  x += 1
end

puts x # => 4

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# 8.
# What is x?

3.times do
  x += 1
end

puts x # => This produces an error because x has not been defined




