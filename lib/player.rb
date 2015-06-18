require_relative 'board'
require_relative 'ship'

class Player

	attr_accessor :board
	attr_accessor :ship

	def initialize
	  @board = Board.new
	end

	def lose
	  "lose"
	end

	def place ship, position, direction
	  self.board.ships << ship.new(position, direction)
	end

	def receive_hit position
      board.strike position
	end

	def lost?
	  board.all_sunk?
	end

	def report_hit_positions
	  board.hits
	end

	def report_miss_positions
	  board.misses
	end
end

