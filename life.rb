def create_tab
		life_tab = Array.new(50){Array.new(50){[0,1].sample}}
		return life_tab
end

def aff_tab(life_tab)
	j = 0
	while (j <= 49)
			i = 0
			while (i <= 49)
					if life_tab[j][i] == 0
						print " "
					end
					if life_tab[j][i] == 1
						print "*"
					end
					i = i + 1 
				end
				puts "\n"
				j = j + 1
				
		end
end

def clone_tab(life_tab)
	clone = Array.new(50){Array.new(50){[0,1].sample}}
	j = 0
	while (j <= 49)
		i = 0
			while (i <= 49)
				clone[j][i] = life_tab[j][i]
				i = i + 1
			end
			j = j + 1
		end
		return clone
end

def game(life_tab, clone)
	j = 0
	while (j <= 49)
		i = 0
		while (i <= 49)
			if life_tab[j][i] == 1
				if check_around(life_tab, i , j) < 2 || check_around(life_tab, i ,j) > 3 
					clone[j][i] = 0
				end
				elsif check_around(life_tab, i , j) == 3
					clone[j][i] = 1
				end
			end
			elsif life_tab[j][i] == 0
				if check_around(life_tab, i, j) == 3
					clone[j][i] == 1
				end
				else
					clone[j][i] == 0
				end
			end
		end
	end	
	return clone				
end

var = create_tab
var2 = clone_tab(var)
while (1)
	aff_tab(var)

end




