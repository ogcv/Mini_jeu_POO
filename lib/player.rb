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
			puts "il inflige #{damage} points de damage"
			
		end

		def compute_damage
			return rand(1..6)
		end

end

class HumanPlayer < Player
	attr_accessor :weapon_level, :life_points

		def initialize(name)
			@life_points = 100
			@weapon_level = 1
			
			

			
		end	
			
			def show_state
			puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{weapon_level}"
			end

			def compute_damage
			rand(1..6) * @weapon_level
			end
		
		def search_weapon
			result = 0 + rand(6)
			puts "tu as trouvé une nouvelle arme de niveau #{result} !!"
			if result <= @weapon_level
				puts " SHIT ! ..."
			elsif result > @weapon_level
				puts "Youhou ! elle est meilleur que ton arme actuelle  tu la prends"
				@weapon_level = result
			end
		end

		def search_health_pack
			result = rand(1..6)
				puts "#{result}"
				if result == 1 
					puts "tu n'as rien trouvé.."
				
				elsif result > 1 && result < 6
					puts "Bravo, tu as gagné un pack de +50 points de vie !"
					@life_points = @life_points + 50
					if @life_points > 100; @life_points = 100
					
					end
				
				elsif result == 6 
					puts "Waow, tu as trouvé un pack de +80 points de vie!"
					@life_points = life_points + 80
					if @life_points > 100; @life_points = 100
				end
			end
		end
		
	end			
