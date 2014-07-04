# * 99 Bottles of Beer

# Write a program which prints out the lyrics to that beloved classic, that field-trip favorite: 99 Bottles
# of Beer on the Wall.

# Requirements:
# * Should print out the lyrics to the command line.
# * Each verse should be separate by a single blank line.
# * Make sure pluralization is correct once you get down to 1 bottle of beer, and no more bottles of beer.

def grammarize(count)
	#pluralize for all numbers 0 to 99 except 1
	if count == 1
		str = count.to_s + " bottle of beer"
	else
		str = count.to_s + " bottles of beer"
	end
	return str
end


def song(answer)
	beer_num = 99
	pause_time = 0.1
	if answer.downcase == 'yes'
		#play song
		while beer_num > 0
			puts "#{grammarize(beer_num)} on the wall, #{grammarize(beer_num)}"
			beer_num -= 1
			puts "Take one down, pass it around, #{grammarize(beer_num)} on the wall."
			puts
			sleep(pause_time)
			pause_time *= Math.exp(0.02) #more you drink exponentially slower you are at drinking
		end
	else
		puts 'Yer must not \'av drank enoof. \'ere, \'ave another guiness!'
	end
end


puts 'Shud we sin\' a song me auld mucker?'
answer = gets.chomp

song(answer)