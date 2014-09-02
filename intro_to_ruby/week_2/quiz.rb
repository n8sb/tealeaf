# 1. Name what each of the below is:

  a = 1 
  # => ex. a is a local variable, and is a Fixnum object with value 1.
  @a = 2
  # @a is a instance variable, and is a Fixnum object with value 2.
  user = User.new
  # This is the instantiation of a new object called 'user' from the User class.
  user.name
  # This is a call to the user object getter method called "name"
  user.name = "Joe"
  # This is a call to the user object setter method setting "name" to the string "Joe"

# 2. How does a class mixin a module?
# => A module is mixed into a class by using the "include" keyword.  The class can then use all
# methods and variables from the module.

module Module
  #########
end

class Class
  include Mod
  #########
end

# 3. What's the difference between class variables and instance variables?
# Class variables are shared among a class and its descendants, where instance variables are
# not shared by a class' descendants.

# 4. What does attr_accessor do?
# => attr_accessor allows the reading and writing of instance variable from external methods and classes.

# 5. How would you describe this expression: Dog.some_method
# => This expression is a call to a method within the class named "Dog"

# 6.In Ruby, what's the difference between subclassing and mixing in modules?
# => Subclassing allows you to take advatage of "is a" relationships and modules allow for "has a" relationships 

# 7. Given that I can instantiate a user like this: User.new('Bob'), what would the initialize method look 
# like for the User class?

class User
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

 end

# 8. Can you call instance methods of the same class from other instance methods in that class?
# => Yes

# 9. When you get stuck, what's the process you use to try to trap the error?
# => I include "binding.pry" inorder to determine where the error is occuring.


