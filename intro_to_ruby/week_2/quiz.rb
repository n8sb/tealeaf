# 1. Name what each of the below is:

  a = 1 
  # => ex. a is a local variable, and is a Fixnum object with value 1.
  @a = 2
  # @a is a instance variable, and is a Fixnum object with value 2.
  user = User.new
  # This is the instantiation of a new object called 'user' from the user class.
  user.name
  # This is a call to the user object getter method called "name"
  user.name = "Joe"
  # This is a call to the user object setter method setting "name" to "Joe"

# 2. How does a class mixin a module?
# => A module is mixed into a class by using the "include" keyword.  The class can then use all
# methods and variable from the method.

# 3. What's the difference between class variables and instance variables?
# Class variables are exclusive to a praticular class, where instance variables are
# exclusive to the instance of that class.

# 4. What does attr_accessor do?
# Att_accessor allows the reading and writing of instance variable from external methods and classes.

# 5. How would you describe this expression: Dog.some_method
# This expression is referring to a 

# 6.In Ruby, what's the difference between subclassing and mixing in modules?

# 7. Given that I can instantiate a user like this: User.new('Bob'), what would the initialize method look like for the User class?

# 8. Can you call instance methods of the same class from other instance methods in that class?

# 9. When you get stuck, what's the process you use to try to trap the error?
# I include "binding.pry"


