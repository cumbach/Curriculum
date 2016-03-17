require_relative 'board'

class HumanPlayer

  attr_reader :name

  attr_accessor :mark

  def initialize(name)
    @name = name
    @mark = :X
  end

  def get_move
    puts "where u want?"
    @move = gets.split(",").map{|x| x.to_i}
  end

  def display(board)
    array = []
    (0..2).each do |row1|
      array << "#{board[row1,0]} | #{board[row1,1]} | #{board[row1,2]}"
    end
    print "#{array[0]}\n"
    print "-------\n"
    print "#{array[1]}\n"
    print "-------\n"
    print "#{array[2]}\n"
  end


end
