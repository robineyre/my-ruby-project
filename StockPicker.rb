def stock_picker(days)
highest 	= 0
array_buy 	= 0
array_sell 	= 0
daysdrop 	= 0
days.each_with_index do |day1,day1_pos|
	days.each_with_index do |day2,day2_pos|
		calc = day2 - day1
		if calc > highest
			highest = calc
			array_buy = day1_pos
			array_sell = day2_pos+daysdrop
		end
	end
	days = days.drop(1)
	daysdrop = daysdrop + 1
end

puts "The biggest profit was: 	£#{highest}"
puts "Buy at array position: 		#{array_buy}"
puts "Sell at position: 		#{array_sell}"

end


stock_picker([40,3,6,9,15,8,6,1,2])
