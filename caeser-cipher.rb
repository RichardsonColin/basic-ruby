puts "What would you like to incript?\nPlease type here: "
user_input = gets.chomp
puts "And by how much would you like to shift the letters?\nAnything from 1-25: "
shift = gets.chomp.to_i

def caeser_cipher(user_input, shift)

	string = user_input
	num = shift

	string.each_char do |c|
		x = c.ord

	  # Between 65-90 are lowercase alphabet in .ord. 
	  if x >= 65 && x <= 90
	  	x += num % 26

	  	# Wraps back to "a".
	  	unless x < 91
	  		x -= 26
	  	end

	  # Between 97-122 are uppercase alphabet in .ord.
	  elsif x >= 97 && x <= 122
	  	x += num % 26

	  	# Wraps back to "A".
	  	unless x < 123
	  		x -= 26	  		
	  	end

	  else
	  	x = x
		end

		print x.chr
			
	end
	
end

caeser_cipher(user_input, shift)