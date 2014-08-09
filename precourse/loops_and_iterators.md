#Loops & Iterators

###Exercises

\#1

    The program outputs '[1,2,3,4,5]' because the iteration is not being printed out.

\#2
```ruby
x = ""
while x != "STOP" do
  puts "What is your favorite food?"
  food = gets.chomp
  puts "Do you have another? Type 'y' or 'STOP'"
  x = gets.chomp
end
```

\#3
```ruby
animals = ["cat","dog","fish","bird"]

animals.each_with_index {|v,i| puts "#{v} is at the #{i} index"}
```

\#4
```ruby
def count_to_zero(n)
    puts n
    n = n - 1
    if n >= 0
      count_to_zero(n)
    end
end 

count_to_zero(10)

## Output
# 10
# 9
# 8
# 7
# 6
# 5
# 4
# 3
# 2
# 1
# 0

```
