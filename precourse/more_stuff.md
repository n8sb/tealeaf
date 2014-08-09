#More Stuff

###Exercises

\#1
```ruby
def check_in(arr)
  for w in arr
    if /lab/.match(w)
        puts w
    else
        puts "Nope"
    end
  end
end


words = ["laboratory","experiment","Pans Labyrinth","elaborate","polar bear"]

check_in(words)

## Output
# laboratory
# Nope
# Nope
# elaborate
# Nope

```

\#2
```ruby
def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# This will print nothing because there is no .call method

```

\#3

    Exception hadling is a way of dealing with errors in a manageable and predictable way. It prevents the exiting of a program even after an error has been triggered.


\#4
```ruby
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# => Hello from inside the execute method!

```

\#5

    The parameter is missing the & symbol that allows a block to be passed as a parameter.