#Variables

###Exercises

\#1
```ruby
# name.rb

puts "Please enter your name"
name = gets.chomp

puts " Welcome, #{name}."
```

\#2
```ruby
# age.rb

puts "How old are you?"
age = gets.chomp.to_i

puts "In 10 years you will be: #{age + 10}"
puts "In 20 years you will be: #{age + 20}"
puts "In 30 years you will be: #{age + 30}"
puts "In 40 years you will be: #{age + 40}"
```

\#3
```ruby
# name2.rb

puts "Please enter your name"
name = gets.chomp

10.times do
    puts name
end
```

\#4
```ruby
# name3.rb

puts "Please enter your first name"
first_name = gets.chomp
puts "Please enter your last name"
last_name = gets.chomp

puts first_name + " " + last_name
```

\#5
    
    In the first program, x prints 3 to the screen in the first program. In the second program, x prints 'undefined local variable or method' because the variable is only defined inside of the block.

\#6

    The error is referenceing a variable, 'shoes', that is defined outside of the called method or scope.