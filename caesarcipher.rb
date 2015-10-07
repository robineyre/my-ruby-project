def caesar_cipher(word,num)

#Split word String into array of characters and convert to ASCII
splitword = word.chars.map(&:ord)

#Cycle through array to shift numbers
splitword.each_with_index do |h, i|

#Exclude non alphabetic numbers e.g. In this example spaces and exclamation mark
	if h < 65 || h > 122
		splitword[i] = h.chr

#Check if capital letter needs to wrap around back to start of alphabet
	elsif h.between?(86,90)
		splitword[i] = (64 + ((h+num) - 90)).chr

#Check if lowercase letter needs to wrap around back to start of alphabet
	elsif h.between?(118,122)
		splitword[i] = (96 + ((h+num) - 122)).chr

#Shift for uppercase letter where wrapping not required
	elsif h.between?(65,85)
		splitword[i] = (h+num).chr

#Shift for lowercase letter where wrapping not required
	elsif h.between?(97,117)
		splitword[i] = (h+num).chr
	end
end

puts splitword.join.inspect

end

caesar_cipher("HELLO, Hello, One !Three!", 5)
