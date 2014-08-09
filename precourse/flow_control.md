#Flow Control

###Exercises

\#1
```ruby
1. (32 * 4) >= 129  # => false

2. false != !true  # => false

3. true == 4  # => false

4. false == (847 == '874')  # => true

5. (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false  # => true
```

\#2
```ruby
def capitalize(string)
    string.size > 9 ? string.upcase : string 
end

puts capitalize("nate")  # => "nate"
puts capitalize("christopher") # => "christopher"
```

\#3
```ruby
puts "Enter a number between 0 and 100"
user_number = gets.chomp.to_i
puts between(user_number)

def between(number)
    if number > 0 && number <= 50
        puts "Number is between 0 and 50"
    elsif number > 50 && number <= 100
        puts "Number is between 50 and 100"        
    else
        puts "Number is not between 0 and 100"
    end
end
```

\#4
```ruby
# name3.rb

1.  '4' == 4 ? puts("TRUE") : puts("FALSE")

2.  x = 2 
    if ((x * 3) / 2) == (4 + 4 - x - 3) 
        puts "Did you get it right?" 
    else 
        puts "Did you?" 
    end # => "Did you?"

3.  y = 9 x = 10 
    if (x + 1) <= (y) 
        puts "Alright." 
    elsif (x + 1) >= (y) 
        puts "Alright now!" 
    elsif (y + 1) == x 
        puts "ALRIGHT NOW!"
    else 
        puts "Alrighty!" 
    end
# 1. "FALSE"    
# 2. "Did you get it right?"
# 3. "Alright now!"
```

\#5
```ruby    
def between(number) 
    case 
    when number > 0 && number <= 50 
        puts "Number is between 0 and 50"
    when number > 50 && number <= 100 
        puts "#Number is between 51 and 100" 
    else 
        puts "Your number must be between 0 and 100" 
    end 
end

puts "Enter a number between 0 and 100"
number = gets.chomp.to_i
between(number)
```

\#6

    The error is referenceing the lack of the keyword 'end' at the end of a method or if..else statement.