#Arrays

###Exercises

\#1
```ruby
arr = [1, 3, 5, 7, 9, 11]
number = 3

def find_number(a, n)
    a.include?(n) ? true : false
end

find_number(arr, number) # => true
```

\#2
```ruby
1. arr = ["b", "a"]
   arr = arr.product(Array(1..3)) 
   # => [["b",1],["b",2],["b",3],["a",1],["a",2],["a",3]]
   arr.first.delete(arr.first.last) # => ["b",1].delete(1) => ["b"] 
   
    # returns ["b"] 
    # arr = [["b"],["b",2],["b",3],["a",1],["a",2],["a",3]]

2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)]
   # => [["b",[1,2,3]],["a",[1,2,3]]]
   arr.first.delete(arr.first.last) # => ["b",[1,2,3]].delete([1,2,3]) => ["b"] 

   #returns [1,2,3]
    # arr = [["b"],["a",[1,2,3]]]
```

\#3
```ruby
arr = [["test", "hello", "world"],["example", "mem"]]

arr.last.first # => "example"
```

\#4
```ruby
arr = [15, 7, 18, 5, 12, 8, 5, 1]

1. arr.index(5) # => 3

2. arr.index[5] # => (eval):96: undefined method `[]' for #<Enumerable::Enumerator:0x14535c> (NoMethodError)

3. arr[5] # => 8
```

\#5
```ruby
string = "Welcome to Tealeaf Academy!"
a = string[6] # => "e"
b = string[11] # => "T"
c = string[19] # => "A"
```

\#6
```ruby
names = ['bob', 'joe', 'susan', 'margaret']
names['margaret'] = 'jody' 

# The value of an item in an array can be accessed by the index not tha value as the key. The value 'margaret' is at the index of 3, so to replace that value you would instead write names[3] = 'jody'

# names = ['bob', 'joe', 'susan', 'jody']
```

\#7

```ruby
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9]

arr.map {|num| arr2 = num + 2}

p arr   # => [1, 2, 3, 4, 5, 6, 7, 8, 9]
p arr2  # => [3, 4, 5, 6, 7, 8, 9, 10, 11] 
```
    
    