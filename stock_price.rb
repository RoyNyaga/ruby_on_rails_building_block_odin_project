
def stock_picker(array_prices)
	highest_profit = 0
  final_array = []
  extract_from_results = []
	for i in 0..array_prices.length - 1
		lose = 0
		lose -= array_prices[i]
		for index in i+1..array_prices.length - 1
			lose += array_prices[index]
      if lose > highest_profit
        final_array << i
        final_array << index
      end
			highest_profit = lose if lose > highest_profit
			lose -= array_prices[index]
		end
	end
  extract_from_results << final_array[-2]
  extract_from_results << final_array[-1]
  return extract_from_results
end

puts stock_picker([17,3,6,9,15,8,6,1,10])
