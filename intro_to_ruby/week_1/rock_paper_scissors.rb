# Rock, Paper, Scissors
human_score = 0
computer_score = 0

CHOICES = {"r" => "Rock", "p" => "Paper", "s" =>"Scissors" }

def display_winning_message(winning_choice)
  case winning_choice
  when "r"
    "ROCK beats SCISSORS"
  when "p"
    "PAPER beats ROCK"
  when "s"
    "SCISSORS beats PAPER"
  end
end

puts "Welcome to Ruby Rock, Paper, Scissors"

loop do

  begin
  puts "Please enter r, p or s"
  human_input = gets.chomp.downcase
  end until CHOICES.keys.include?(human_input)

  computer_input = CHOICES.keys.sample
  puts "The Computer has played #{CHOICES[computer_input]}"
  
  if human_input == computer_input     
    puts "Its a DRAW"
  elsif (human_input == "r" && computer_input == "s") || (human_input == "p" && computer_input == "r") || 
    (human_input == "s" && computer_input == "p")
    display_winning_message(human_input)
    human_score += 1
  else
    display_winning_message(computer_input)
    computer_score += 1
  end
  
  if human_score == 3
    puts "Score is You: #{human_score}, Computer: #{computer_score}. You win!"
    human_score = 0
    computer_score = 0
    puts "Play again? (y/n)"
    break if gets.chomp.downcase != "y"
  elsif computer_score == 3
    puts "Score is You: #{human_score}, Computer: #{computer_score}. You lose!"
    human_score = 0
    computer_score = 0
    puts "Play again? (y/n)"
    break if gets.chomp.downcase != "y"
  else
    puts "Score is You: #{human_score}, Computer: #{computer_score}"
  end
end

puts "Thanks for playing!"