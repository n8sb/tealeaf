# Ruby Calculator

def say(n)
  puts "=> #{n}"
end

say "Enter the first number of your calculation"
first_number = gets.chomp

say "Enter the operator for your calculation (+,-,/,*)"
operator = gets.chomp

say "Enter the second number of your calculation"
second_number = gets.chomp

def calculate(num1,num2,op)
  if op == "/" or num1.include? "." or num2.include? "."
    f1 = num1.to_f
    f2 = num2.to_f
    ans = f1.send(op,f2)
  else
    n1 = num1.to_i
    n2 = num2.to_i
    ans = n1.send(op,n2)
  end
  "Your result is #{ans}"
end

puts calculate(first_number,second_number,operator)
