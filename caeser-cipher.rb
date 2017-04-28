
user_input = gets.chomp
shift = gets.chomp.to_i

/def strToArray
	user_input = user_input.split(" ")
	user_input.each {|c| c.replace c.ord.to_s}
	user_input.map! {|n| n.to_i}
end/

def caeser_cipher(string, num)
	caps_num = 65.upto(90).to_a
  lowcase_num = 97.upto(122).to_a

	string = string.split("")
	string.each {|c| c.replace c.ord.to_s}
	string.map! {|n| n.to_i}

	string.map! do |n|
		if lowcase_num.index{|d| n == d}
			n += num		
		elsif caps_num.index{|d| n == d}
			n += num
		else
			n = n
		end
	end

	string.map!{|n| n.chr}
	string = string.join
	puts string
end

caeser_cipher(user_input, shift)