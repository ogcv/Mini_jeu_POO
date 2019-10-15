require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "------------------------------------------------"
puts "|Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |"
puts "|Le but du jeu est d'être le dernier survivant !|"
puts "-------------------------------------------------"

puts "Quel est ton Prénom?"
puts ">" 
x = gets.chomp
user = HumanPlayer.new(x)
player1 = Player.new("josé")
player2 = Player.new("Josiane")
enemies = []
enemies << player1 ;enemies << player2

while user.life_points > 0 && (player1.life_points > 0 || player2.life_points > 0) 
		puts user.show_state
		puts "================================"
		puts "    "
		puts "Quelle action veux-tu effectuer ?"
		puts "   "
		puts "a - chercher une meilleure arme"
		puts "s - chercher à se soigner"
		puts "   "
		puts "attaquer un joueur en vue :"
		puts "   "
		print "0 - " 
		puts "#{player1.show_state}"
		print "1 - "
		puts " #{player2.show_state}"
		touch = gets.chomp
		if touch == "a"; user.search_weapon
		elsif touch =="s"; user.search_health_pack
		elsif touch == "0"; user.attacks(player1)
		elsif touch == "1"; user.attacks(player2)
		end
		puts "================================"
		puts "Les autres joueurs t'attaquent !"
		enemies.each do |i|
			if i.life_points > 0
			puts i.attacks(user)
		end
	end
end
			
			



		puts "la partie est fini "
			if user.life_points > 0 && (player1.life_points < 1 || player2.life_points < 1) 
		puts "BRAVO ! TU AS GAGNE !!"
			elsif user.life_points <= 0
		puts "Loser ! Tu as perdu !"
	end
		
