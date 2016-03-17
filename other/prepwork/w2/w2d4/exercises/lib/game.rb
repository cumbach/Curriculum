require_relative 'board'
require_relative 'human_player'
require_relative 'computer_player'



class Game

  attr_reader :board

  attr_accessor :current_player, :player_one, :player_two

  def initialize(player_one, player_two)
    @player_one, @player_two = player_one, player_two
    @current_player = player_one
    @board = Board.new
  end

  def switch_players!
    if current_player == player_one
      self.current_player = player_two
    else
      self.current_player = player_one
    end
  end

  def play_turn
    if board.winner.nil?
      player_one.display(board)
      player_two.display(board)
      # @current_player = @player_one
      move = current_player.get_move
      mark = current_player.mark
      board.place_mark(move,mark)
      switch_players!
      play_turn
    else
      switch_players!
      puts "#{current_player.name} lost!"
    end

  end
end

if $PROGRAM_NAME == __FILE__
  player_one = HumanPlayer.new("Chris")
  player_two = ComputerPlayer.new("Computer")
  game = Game.new(player_one, player_two)
  game.play_turn




end
