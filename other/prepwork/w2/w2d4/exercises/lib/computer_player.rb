require_relative "board"
require_relative "human_player"
require 'byebug'

class ComputerPlayer

	attr_reader :board, :name

	attr_accessor :mark

	def initialize(name)
		@name = name
		@mark = :O
	end

	def display(board)
		@board = board
	end

	def get_move
		(0..2).each do |row|
			(0..2).each do |col|
				# debugger
				if board[row,col].nil?
					# return "hello1"
					@board[row,col] = mark
					return [row,col] if board.winner == mark
					@board[row,col] = nil
				end
			end
		end

		i = 0
		while i == 0
			newrow = rand(0..2)
			newcol = rand(0..2)
			return [newrow,newcol] if board[newrow,newcol].nil?
		end

	end

	# 	board.grid.each do |row|
	# 		row.each do |col|
	# 			if board[row, col].empty?
	# 				return board[row, col]
	# 			end
	# 		end
	# 	end
	# end
end

# board = Board.new
# comp = ComputerPlayer.new("Chris")
# human = HumanPlayer.new("human")
# comp.mark = :X
# board.place_mark([0, 0], :X)
# # board.place_mark([0, 1], :X)
# comp.display(board)
# # board.place_mark([2, 0], :X)
# # p board.winner
# p comp.get_move
# (0..2).each do |row|
# 	(0..2).each do |col|
# 		board.place_mark([row,col],comp.mark)
# 		p col
# 	end
# end

# p comp.get_move
# human.display(board)
