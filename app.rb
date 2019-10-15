require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

	player1 = Player.new("Josiane")
	player2 = Player.new("José")
		puts "Que le combat commence !!"
			while player1.life_points > 0 && player2.life_points > 0 
				puts "Voici l'état des joueurs :"
				puts "==========================================="
				puts player1.show_state
				puts player2.show_state
				puts "FIGHT !!"
				puts "==========================================="
				player2.attacks(player1)
				if player1.life_points <= 0 
					break
				end
				puts "   "
				puts "Jo ne va pas ce laisser faire !!"
				puts "  "
				player1.attacks(player2)
				
				puts "  "
			end




binding.pry