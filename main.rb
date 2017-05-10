# Game starts
# Player 1 and 2 are created, they both have 3 lives.
# Player one goes first.
# Create new question for user in turn
# Get answer from player
# if wrong take a life from player, is player still alive?
# yes, switch turn to next player, no, end game. Call winner.
# Create new question... repeat.

require 'pry'
require './game'
require './player'
require './question'



new_game = MathGame::Game.new
new_game.start
binding.pry
