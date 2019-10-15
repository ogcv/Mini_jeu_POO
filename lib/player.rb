require "pry"

class Player
	attr_accessor :name, :life_points
		def initialize(name)
			@name = name
			@life_points = 10
		end

		def show_state
			puts "#{@name} a #{@life_points} points de vie."
		end

		def gets_damage(damage)
			@life_points = @life_points - damage
			if @life_points <= 0
				puts "le joueur #{@name} a été tué !"
			end
		end

		def attacks(cible)
			puts " #{@name} attaque #{cible.name} "
			damage = compute_damage

			cible.gets_damage(damage)
			puts "il lui inflige #{damage} points de damage"
			
		end

		def compute_damage
			return rand(1..6)
		end

end


