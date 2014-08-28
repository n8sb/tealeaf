# OOP Blackjack

# 1. HUMAN and DEALER are delt HANDs of 2 CARDS each from a DECK of 52 cards.
#    (One of DEALERs cards is not visible)
#  * If HUMAN has 21 and DEALER does not, HUMAN wins
#  * If DEALER has 21 and HUMAN does not, DEALER wins
#  * If HUMAN & DEALER has 21, it's a draw
# 2. HUMAN is given a chance to Hit or Stand
#  * If while hitting hand exceeds 21, HUMAN loses
#  - If HUMAN has an Ace and HAND is under 21, Ace = 11 (+11 to hand)
#  - If HUMAN has an Ace and HAND is over 21, Ace = 1 (-10 from hand)
#  * If while hitting HAND exceeds 21, HUMAN looses 
# 3. If DEALER has 16 or less, DEALER must Hit
#  - If DEALER get 17, DEALER stays
#  * If DEALER goes over 21, DEALER looses
# 4. HANDS are Compared
#  * If HUMAN > DEALER, HUMAN wins 
#  * If HUMAN < DEALER, DEALER wins 
#  * If HUMAN == DEALER, it's a DRAW

class Card
  attr_accessor :suit, :face_value

  def initialize(s, fv)
    @suit = s
    @face_value = fv
  end

  def pretty_output
    "The #{find_face} of #{find_suit}"
  end

  def to_s
    pretty_output
  end

  def find_suit
    ret_val = case suit
                when 'H' then 'Hearts'
                when 'D' then 'Diamonds'
                when 'S' then 'Spades'
                when 'C' then 'Clubs'
              end
    ret_val
  end

 def find_face
    ret_val = case face_value
                when 'A' then 'Ace'
                when 'J' then 'Jack'
                when 'K' then 'King'
                when 'Q' then 'Queen'
                else ret_val = face_value
              end
    ret_val
  end
end

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    ['H', 'D', 'S', 'C'].each do |suit|
      ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].each do |face_value|
        @cards << Card.new(suit, face_value)
      end
    end
    scramble!
  end

  def scramble!
    cards.shuffle!
  end

  def deal_one
    cards.pop
  end

  def size
    cards.size
  end
end

module Hand

  def show_hand
    puts "--- #{name}'s Hand ---"
    cards.each do |card|
      puts "=> #{card}"
    end
    puts "=> Total: #{total}"
  end

 def total
  face_values = cards.map{|card| card.face_value }

  total = 0
  face_values.each do |val|
    if val == "A"
      total += 11
    else
      total += (val.to_i == 0 ? 10 : val.to_i)
    end
  end

  #correct for Aces
  face_values.select{|val| val == "A"}.count.times do
    break if total <= 21
    total -= 10
  end

  total
  end

  def add_card(new_card)
    cards << new_card
  end
end 

class Player
  include Hand

  attr_accessor :name, :cards

  def initialize(n)
    @name = n
    @cards = []
  end

end

class Dealer
  include Hand

  attr_accessor :name, :cards

  def initialize
    @name = "Dealer"
    @cards = []
  end

  def show_card
    puts "Dealer is showing:"
      puts "=> #{cards[0]}"
  end

end

class Game
  attr_accessor :deck, :player, :dealer

  def initialize
    @deck = Deck.new
    @player = Player.new("Player1")
    @dealer = Dealer.new
  end

  def set_player_name
    puts "What is your name?"
    player.name = gets.chomp
  end

  def deal_cards
    @player.add_card(@deck.deal_one)
    @dealer.add_card(@deck.deal_one)
    @player.add_card(@deck.deal_one)
    @dealer.add_card(@deck.deal_one)
  end

  def first_hand_check
    if @dealer.total == 21
      @dealer.show_hand
      puts "Dealer has Blackjack. You lose."
      play_again?
    elsif @player.total == 21 && @dealer.total != 21
      @dealer.show_hand
      puts "Congrats, you got blackjack! You win!"
      play_again?
    elsif @player.total == 21 && @dealer.total == 21
      @dealer.show_hand
      puts "Dealer got blackjack too. It's a draw."
      play_again?
    end
  end

  def hit_or_stand
    loop do
      puts "Would you like to hit or stay (enter 'h' or 's')?"
      hit_or_stay = gets.chomp.downcase
      if !['h', 's'].include?(hit_or_stay)
        puts ["Error: you must enter 'h' or 's'"]
        next
      end
      if hit_or_stay == "s"
        puts "You chose to stay."
        break
      end

      @player.add_card(@deck.deal_one)
      @player.show_hand


      if @player.total == 21 && @dealer.total == 21
        @dealer.show_hand
        puts "Dealer got 21 too. It's a draw."
        play_again?
      elsif @player.total > 21
        puts "You busted!"
        play_again?
      elsif @player.total == 21
        puts ""
        puts "You have 21. Dealer's turn"
        puts ""
        break
      end
    end
  end

  def dealer_draw
    loop do
      puts " "
      puts "---------------------------"
      puts "The dealer will now draw"
      @dealer.add_card(@deck.deal_one)

      @dealer.show_hand

      if @dealer.total == 21 && @player.total == 21
        puts " "
        puts "---------------------------"
        puts "Sorry, dealer has 21 too. It's a draw"
        play_again?
      elsif @dealer.total == 21 && @player.total != 21
        puts " "
        puts "---------------------------"
        puts "Sorry, dealer has 21. You lose"
        play_again?
      elsif @dealer.total > 21
        puts " "
        puts "---------------------------"
        puts "Congrats! dealer busted! you win!"
        play_again?
      end
    end
  end

  def play_again?
    begin
    puts "Would you like to play again (y/n)?"
    confirm = gets.chomp.downcase
    end until confirm.include?("y") || confirm.include?("n") 
    if confirm == "y"
      @deck = Deck.new
      @player = Player.new(player.name)
      @dealer = Dealer.new
      play2
    else
      puts "Thanks for playing!"
    end
  end

  def play
    set_player_name
    deal_cards
    @player.show_hand

    # Hand check after initial deal
    first_hand_check

    # SHow dealer's full hand
    @dealer.show_card

    # Player hit / stand
    hit_or_stand

    # Dealer draw
    dealer_draw
      
    # Ask to play again
    play_again?
  end

  def play2
    deal_cards
    @player.show_hand

    # Hand check after initial deal
    first_hand_check

    # SHow dealer's full hand
    @dealer.show_card

    # Player hit / stand
    hit_or_stand

    # Dealer draw
    dealer_draw
      
    # Ask to play again
    play_again?
  end
end

Game.new.play