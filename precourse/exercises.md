#Hashes

###Exercises

\#1
```ruby
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each {|n| puts n}

## Output
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10

```

\#2
```ruby
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |num|
    if num > 5
      puts num
    end
  end

## Output
# 6
# 7
# 8
# 9
# 10
```

\#3
```ruby
  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |num|
    if num.odd?
      puts num
    end
  end

  ## Output
# 1
# 3
# 5
# 7
# 9
```

\#4
```ruby
  [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].push(11).unshift(0) 
  # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
```

\#5
```ruby
 arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]

  arr.pop

  arr.push(3)
  # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]
```

\#6
```ruby
 arr = [0, 1, 1, 2, 3, 3, 4, 5, 6, 7, 7, 8, 9, 10]

 arr.uniq!
  
  # => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

\#7

    The difference between an Array and a Hash is that a Hash is made up of key / value pairs and an array is made up of single, indexed, elements.

\#8
```ruby
 hash1 = {:1 => "cat", :2 => "dog"}
  
 hash2 = {1: "cat", 2: "dog"}
```

\#9
```ruby
  h = {a:1, b:2, c:3, d:4}

  1. h[:b] # => 2

  2. h[:e] = 5 # => h = {a:1, b:2, c:3, d:4, e:5}

  3. h.delete_if { |k, v| v < 3.5 } # => h = {d:4, e:5}
```

\#10
```ruby
# Yes, you can have hash values as arrays and an array of hashes

# hash values as arrays

h = {animal: ['cat', 'dog', 'bird']}

# array of hashes

a = [{animal: 'cat'}, {animal: 'bird'}, {animal: 'dog'}]

```

\#11

    I like ruby-doc the best because it is integrated with Dash for OSX and it is easily searchable with my Alfred desktop integration.

\#12
```ruby
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

# contacts = {"Sally Johnson"=>{:phone=>"123-234-3454", :email=>"sally@email.com", :address=>"404 Not Found Dr."}, "Joe Smith"=>{:phone=>"555-123-4567", :email=>"joe@email.com", :address=>"123 Main st."}}
```

\#13
```ruby
contacts = {"Sally Johnson"=>{:phone=>"123-234-3454", :email=>"sally@email.com", :address=>"404 Not Found Dr."}, "Joe Smith"=>{:phone=>"555-123-4567", :email=>"joe@email.com", :address=>"123 Main st."}}

p contacts["Joe Smith"][:email] # => joe@email.com
p contacts["Sally Johnson"][:phone] # => 123-234-3454
```

\#14
```ruby
contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end
```

\#15
```ruby
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if { |word| word.start_with?("s") } # => ['winter', 'ice', 'white trees']

arr.delete_if { |word| word.start_with?("s", "w") } # => ['ice']
```

\#16
```ruby
  a = ['white snow', 'winter wonderland', 'melting ice',
  'slippery sidewalk', 'salted roads', 'white trees']
     
 a.join(" ").split(" ")

 # => ["white", "snow", "winter", "wonderland", "melting", "ice", "slippery", "sidewalk", "salted", "roads", "white", "trees"]
```

\#17
```ruby
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

# Output => These hashes are the same!
```