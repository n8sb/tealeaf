# Ruby OOP Rock. Paper, Scissors

# HUMAN picks either rock, paper or scissors (HAND)
# COMPUTER picks either rock, paper or scissors (HAND)
# Two HANDs are then compared

# (HUMAN & COMPUTER) => PLAYER

require "pry"

class Hand
  include Comparable

  attr_reader :value

  def initialize(v)
    @value = v
  end

  def <=>(another_hand)
    if @value == another_hand.value
      0
    elsif (@value == 'p' && another_hand.value == 'r') || (@value == 'r' && another_hand.value == 's') ||
(@value == 's' && another_hand.value == 'p')
      1
    else
      -1
    end  
  end

  def display_winning_message
    case @value
    when 'p' 
      puts "Paper wraps Rock!"
    when 'r'
      puts "Rock smashes Scissors!"
    when 's'
      puts "Scissors custs Paper!"
    end
  end
end

class Player

  attr_accessor :hand
  attr_reader :name

 def initialize(n)
   @name = n
 end

 def to_s
  "#{name} currently has a choice of #{choice}"
 end

end

class Human < Player
  def pick_hand
    begin
    puts "Pick One: (r, p, s)"
    c = gets.chomp.downcase
    end until Game::CHOICES.keys.include?(c)

    self.hand = Hand.new(c)
  end
end

class Computer < Player
  def pick_hand
    self.hand = Hand.new(Game::CHOICES.keys.sample)
  end
end

class Game
  
  CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

  attr_reader :player, :computer

  def initialize
    @@computer_score = 0
    @@player_score = 0
    @player = Human.new('Nate')
    @computer = Computer.new('Johnny-5')
    
  end

  def compare_hands
    
    if player.hand == computer.hand
      puts "It's a tie!"
    elsif player.hand > computer.hand
      player.hand.display_winning_message
      @@player_score += 1
    else
      computer.hand.display_winning_message
      @@computer_score += 1
    end
    puts "#{player.name}: #{@@player_score} - #{computer.name}: #{@@computer_score}"
  end

  def play
    player.pick_hand
    puts "#{player.name} picks #{CHOICES[player.hand.value]}"
    computer.pick_hand
    puts "#{computer.name} picks #{CHOICES[computer.hand.value]}"
    compare_hands

    if @@computer_score == 3
      puts "You lose!"
    elsif @player_score
      puts "You win!"
    else  
      play
    end 
  end
end

game = Game.new.play

