#The Basics

###Exercises

\#1
```ruby
"Nate" + " " + "Bennett" # => Nate Bennett
```

\#2
```ruby
2468 / 1000 # => 2
2468 % 1000 / 100 # => 468 => 4
2468 % 1000 % 100 / 10 # => 468 => 68 => 6 
2468 % 1000 % 100 % 10 # => 468 => 68 => 6 => 8
```

\#3
```ruby
movies = {
    :"Snowpiercer" => 2014,
    :"Shawshank Redemption" => 1994,
    :"21 Jump Street" => 2012,
    :"Moneyball" => 2011,
    :"The Terminator" => 1984
}

movies.each {|key,value| puts movies[key]}

# Output
# 1984
# 2011
# 1994
# 2012
# 2014
```

\#4
```ruby
dates = [1984, 2011, 1994, 2012, 2014]

dates.each {|date| puts date}

# Output
# 1984
# 2011
# 1994
# 2012
# 2014
```

\#5
```ruby
def factorial(n)
    (1..n).inject { |p, n| p * n }
end

puts factorial(5) # => 120
puts factorial(6) # => 720
puts factorial(7) # => 5040
puts factorial(8) # => 40320
```

\#6
```ruby
def square(n)
    n*n
end

puts square(1.5) # => 2.5
puts square(3.579) # => 12.809241
puts square(0.6345) # => 0.40259025
```

\#7
    
    This error states that a closing '}' was expected but a closing ')' was found instead.
