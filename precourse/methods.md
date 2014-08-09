#Methods

###Exercises

\#1
```ruby
def greeting(name)
    puts "Greetings, #{name}"
end

puts greeting("Nate")   # => "Greetings, Nate"
```

\#2
```ruby
1. x = 2    # => 2 

2. puts x = 2   # => nil 

3. p name = "Joe"   # => "Joe"

4. four = "four"    # => "four"

5. print something = "nothing"  # => nil
```

\#3
```ruby
def multiply(x,y)
    x*y
end

puts multiply(6,7)  # => 42
```

\#4
```ruby
def scream(words) 
    words = words + "!!!!" 
    return 
    puts words 
end

scream("Yippeee")   # => This program will print anything because the 'return' call is made before the puts call which includes the argument.
```

\#5
```ruby
def scream(words) 
    words = words + "!!!!" 
    puts words 
end

scream("Yippeee")   # => This program will now return nil
```

\#6
  
    This error is stating that there is a method that requires 2 arguments but only one was given.

    