RANGE = 0..9
DISPLAY = [" ", "*"]

def create_tab
	#Create the rand Tab
	life_tab = Array.new(10){Array.new(10){[0,1].sample}}
end

def aff_tab(life_tab)
	#write the tab
	RANGE.each do |j|
		RANGE.each do |i|
			if (life_tab[j][i] == 0)
				print " "
			else
				print "*"
			end
		end
			print "\n"
	end
	#life_tab.map { |ary| puts ary.map{|i| DISPLAY[i] }.join('') }
end

def clone_tab(life_tab)
	#do a copy of the tab
	clone = Array.new(10){Array.new(10){[0,1].sample}}
	RANGE.each do |j|
		RANGE.each do |i|
			clone[j][i] = life_tab[j][i]
		end
	end
	return clone
end

def game(life_tab)
	#main function for check the tab
	clone = clone_tab(life_tab)
	RANGE.each do |j|
		RANGE.each do |i|
			around = check_around(life_tab, i, j)
			if life_tab[j][i] == 1
				if around < 2 || around > 3
					clone[j][i] = 0
				elsif around == 3
					clone[j][i] = clone[j][i]
				end
			elsif life_tab[j][i] == 0
				if around == 3
					clone[j][i] == 1
				else
					clone[j][i] == 0
				end
			end
		end
	end
	print "\n-------------\n"
	aff_tab clone
	print "-------------\n"
	sleep 1
	return clone
end

def check_around(life_tab, i , j)
	#check alive cell
	a = j - 1
	count = 0
	while (a < j + 1)
		b = i - 1
		while (b <= i + 1)
			if life_tab[a][b] == 1
				count = count + 1
			end
			b = b + 1
		end
		a = a + 1
	end
	count = count - life_tab[j][i]
	return count

end

var = create_tab
while (1)
	var = game(var)
	system("cls")
end




