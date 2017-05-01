


def stock_picker(prices)
	puts "#{prices}"
	cycle_stocks = prices
	buy_price, sell_price = 0, 0
	profit, max_profit = 0, 0
	count = 0
	range = []

	if cycle_stocks.index(cycle_stocks.min) < cycle_stocks.index(cycle_stocks.max)
		buy_price  = cycle_stocks.min
		sell_price = cycle_stocks.max
		max_profit = sell_price - buy_price
		range[0], range[1] = cycle_stocks.index(cycle_stocks.min), cycle_stocks.index(cycle_stocks.max)
	else
		for buy in (cycle_stocks[0..-1]) do
  		buys = buy
  		count += 1
			#puts "***#{cycle_stocks[count]}"  
  		for sell in (cycle_stocks[(count)..-1]) do
    		#puts "---#{cycle_stocks[count]}"
    		sells = sell
    		profit = sells - buys
    
    		if profit > max_profit
      		max_profit = profit
      		buy_price = buys 
      		sell_price = sells
      		range[0] = count
      		range[1] = cycle_stocks.index(sell)
    		end
  		end
		end
		
	end	

	puts "Here is the best spread to buy and sell stock:"
	puts "---Best day to buy would have been day #{range[0]+1} at $#{buy_price}."
	puts "---Best day to sell would have been day #{range[1]+1} at $#{sell_price}."
	puts "---For a profit of $#{max_profit}."

end

stock_picker(Array.new(30) {rand(1..100)})