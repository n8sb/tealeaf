# Ruby OOP Tic-Tac-Toe

# BOARD is drawn
# HUMAN is X, COMPUTER is O 
# HUMAN PICKS a square (1 - 9)
# COMPUTER PICKS a remaining square
# Picks are made until COMUTER or HUMAN gets 3 in a row or all squares are filled

# OUTCOMES
# Tie - all squares filled
# HUMAN get 3 in a row
# COMPUTER gets 3 in a row

# (HUMAN & COMPUTER) => PLAYER

class Board
  WINNING_LINES = [[1,2,3], [4,5,6], [7,8,9], [1,4,7], [2,5,8], [3,6,9], [1,5,9], [3,5,7]]
 
  def initialize
    @data = {}
    (1..9).each {|position| @data[position] = Square.new(' ')}
  end

  def all_squares_marked?
    empty_squares.size == 0
  end

  def empty_squares
    @data.select {|_, square| square.empty?}.values
  end

  def empty_positions
    @data.select {|_, square| square.empty?}.keys
  end

  def mark_square(position, marker)
    @data[position].mark(marker)
  end

  def three_squares_in_a_row?(marker)
  WINNING_LINES.each do |line|
    return true if @data[line[0]].value == marker && @data[line[1]].value  == marker && @data[line[2]].value == marker
  end
  false
  end

  def draw
    system 'clear'
    puts "  #{@data[1]}  |  #{@data[2]}  |  #{@data[3]}  "
    puts "-----------------"
    puts "  #{@data[4]}  |  #{@data[5]}  |  #{@data[6]}  "
    puts "-----------------"
    puts "  #{@data[7]}  |  #{@data[8]}  |  #{@data[9]}  "
  end
end

class Square

  attr_reader :value

  def initialize(value)
    @value = value
  end

  def mark(marker)
    @value = marker
  end

  def empty?
    @value == ' '
  end

  def to_s
    @value
  end
end

class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class Game

  MARKERS = ["X","O"]

  def initialize
    @board = Board.new
    @human = Player.new("Nate")
    @computer = Player.new("Johnny5")
    @current_player = @human
  end

  def choose_marker
    begin
      puts "Choose 'X' or 'O'"
      @human_marker = gets.chomp.upcase!
    end until MARKERS.include?(@human_marker)
    @computer_marker = MARKERS.reject{|m| m == @human_marker}.join
  end

  def current_player_marks_square
    if @current_player == @human
      @marker = @human_marker
      begin
        puts "Choose a position #{@board.empty_positions} to place a piece:"
        position = gets.chomp.to_i
      end until @board.empty_positions.include?(position)
    else
      position = @board.empty_positions.sample
      @marker = @computer_marker
    end
    @board.mark_square(position, @marker)
  end
 
  def alternate_player
    if @current_player == @human
      @current_player = @computer
    else
      @current_player = @human
    end
  end
 
  def current_player_wins?
    @board.three_squares_in_a_row?(@marker)
  end

  def play_again?
    begin
    puts "Would you like to play again (y/n)?"
    confirm = gets.chomp.downcase
    end until confirm.include?("y") || confirm.include?("n") 
    if confirm == "y"
      @board = Board.new
      play
    else
      puts "Thanks for playing!"
    end
  end

  def play
    @board.draw
    choose_marker
    loop do
      current_player_marks_square
      @board.draw
      if current_player_wins?
        puts "The winner is #{@current_player.name}!"
        break
      elsif @board.all_squares_marked?
        puts "It's a tie."
        break
      else
        alternate_player
      end
    end
    play_again?
  end
end

Game.new.play