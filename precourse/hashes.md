#Hashes

###Exercises

\#1
```ruby
# Given

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select {|k,v| k == :brothers || k == :sisters}

arr = immediate_family.values.flatten

p arr # => ["frank", "rob", "david", "jane", "jill", "beth"]
```

\#2
```ruby
arr1 = { 1: "cat", 2: "dog", 3: "bird"}
arr2 = { 3: "bird", 4: "turtle", 5: "snake"}

arr1.merge(arr2)

# arr1 = { 1: "cat", 2: "dog", 3: "bird"}
# arr2 = { 3: "bird", 4: "turtle", 5: "snake"}

arr1.merge(arr2)

# arr1 = { 1: "cat", 2: "dog", 3: "bird", "turtle", 5: "snake"}
# arr2 = { 3: "bird", 4: "turtle", 5: "snake"}

# "merge!" changes the value of a hash in place, where "merge" does not.
```

\#3
```ruby
arr = { 1: "cat", 2: "dog", 3: "bird"}

puts arr.keys
# 1
# 2
# 3

puts arr.values
# cat
# dog
# bird

arr.select {|k,v| puts k,v}
# 1
# cat
# 2
# dog
# 3
# bird
```

\#4
```ruby
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

puts person[:name] # => Bob

```

\#5
```ruby
arr = { 1: "cat", 2: "dog", 3: "bird"}

if arr.has_value?("bird")
  puts "Tweet! Tweet!"
else
  puts "Bird is out of the cage"
end

  # = > Tweet! Tweet!
```

\#6
```ruby
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.has_key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.each do |k, v|
  puts "------"
  p v
end

## Output
# ------
# ["none", "neon"]
# ------
# ["tied", "diet", "edit", "tide"]
# ------
# ["fowl", "wolf", "flow"]
# ------
# ["evil", "live", "veil", "vile"]
# ------
# ["demo", "dome", "mode"]
```

\#7

    The first hash uses a symbol x as the key. The second hash uses x as a string for the key.

    
\#8

    B. There is no method called keys for Array objects.
    