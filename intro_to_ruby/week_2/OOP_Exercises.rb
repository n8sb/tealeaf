# Exercises

# The Object Model

# 1.
#  How do we create an object in Ruby? Give an example of the creation of an object.

class Human
end

mom = Human.new


# 2.
# What is a module? What is its purpose? How do we use them with our classes? 
# Create a module for the class you created in exercise 1 and include it properly.

# => A module is a collection of behaviors that is useable in other classes.

module Movement
  def movement(part_of_body)
    puts "Moved their #{part_of_body}"
  end
end

class Human
  include Movement
end

mom = Human.new

# Classes and Objects I

# 1
# Create a class called MyCar. When you initialize a new instance or object of the class, 
# allow the user to define some instance variables that tell us the year, color, and model 
# of the car. Create an instance variable that is set to 0 during instantiation of the object 
# to track the current speed of the car as well. Create instance methods that allow the car 
# to speed up, brake, and shut the car off.

class MyCar

  def initialize(year,color,model)
    @year = year
    @color = color
    @model = model
    @speed_current = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You accelerate to #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You break and decelerate to #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's pull into the garage"
  end
end

# 2.
# Add an accessor method to your MyCar class to change and view the color of your car. 
# Then add an accessor method that allows you to view, but not modify, the year of your car.

  attr_accessor :color
  attr_reader :year

# 3.
# You want to create a nice interface that allows you to accurately describe the action you 
# want your program to perform. Create a method called spray_paint that can be called on an 
# object and will modify the color of the car.

  def spray_paint(c)
    self.color = c
    puts "#{c} is a great color!" 
  end


# Classes and Objects II

# 1.
# Add a class method to your MyCar class that calculates the gas mileage of any car.

  def self.gas_mileage(gallons, miles)
    puts "The car gets #{miles / gallons} miles to the gallon"
  end

# 2.
# Override the to_s method to create a user friendly print out of your object.

  def to_s
    "I drive a #{self.color} #{self.year} #{self.model} "
  end

# 3.
# When running the following code...

class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"

# We get the following error...

# test.rb:9:in `<main>': undefined method `name=' for
# <Person:0x007fef41838a28 @name="Steve"> (NoMethodError)

# Why do we get this error and how to we fix it?

# This code only creates a getter method with "attr_reader" and not a setter method, so trying
# to reassign the "name" value of the "bob" object is not possible unless "attr_writer" or 
# "attr_accessor" is included

# Inheritance

# 1.
# Create a superclass called Vehicle for your MyCar class to inherit from and move the behavior that 
# isn't specific to the MyCar class to the superclass. Create a constant in your MyCar class that stores 
# information about the vehicle that makes it different from other types of Vehicles.

# Then create a new class called MyTruck that inherits from your superclass that also has a constant defined 
# that separates it from the MyCar class in some way.

class Vehicle

  def self.gas_mileage(gallons, miles)
    puts "The vehicle gets #{miles / gallons} miles to the gallon"
  end
end

class MyCar < Vehicle
  TRUNK = true
end

class MyTruck < Vehicle
  TRUCK_BED = true
end

# 2.
# Add a class variable to your superclass that can keep track of the number of objects created that inherit from 
# the superclass. Create a method to print out the value of this class variable as well.
  
  @@num_of_vehicles = 0

  def initialize
    @@num_of_vehicles += 1
  end
  
  def self.num_of_vehicles
    puts "#{@@num_of_vehicles} have been created"
  end

# 3.
# Create a module that you can mix in to ONE of your subclasses that describes a behavior unique to that subclass.

module Offroadable
  def offroad
    "I can go off-road"
  end
end

def MyTruck
  include Offroadable
end

# 4.
# Print to the screen your method lookup for the classes that you have created.

puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors

# 5.
# Move all of the methods from the MyCar class that also pertain to the MyTruck class into the Vehicle class. 
# Make sure that all of your previous method calls are working when you are finished.

# 6.
# Write a method called age that calls a private method to calculate the age of the vehicle. Make sure the 
# private method is not available from outside of the class. You'll need to use Ruby's built-in Time class to help.

def age
  puts "The vehichle is #{calculated_age} years old"
end

private

def calculated_age
  Time.now.year - self.year
end

# 7.
# Create a class 'Student' with attributes name and grade. Do NOT make the grade getter public, so joe.grade will 
# raise an error. Create a better_grade_than? method, that you can call like so...

# puts "Well done!" if joe.better_grade_than?(bob)

class Student
  def initialize(name,grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 84)
puts "Well done!" if joe.better_grade_than?(bob)

# 8.
# Given the following code...

bob = Person.new
bob.hi

# And the corresponding error message...

# NoMethodError: private method `hi' called for #<Person:0x007ff61dbb79f0>
# from (irb):8
# from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

# What is the problem and how would you go about fixing it?

# Answer
# "hi" is a private method.  In order for this method to be acessed, I would move it above the private 
# method statement
