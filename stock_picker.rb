puts "Enter the stock price on day 0:"
stock_prices = []
stock_prices << gets.chomp.to_i
while stock_prices.last != "y".to_i
  puts "Enter y if you\'re done and the stock price on the next day if you're not!"
  stock_prices << gets.chomp.to_i
end
stock_prices.pop

puts "These are the stock prices you entered: " + stock_prices.to_s

def stock_picker(stock_prices)
  hash = {buy_day: 0, sell_day: 0, profit: 0}
  stock_prices.each do |price1|
    stock_prices.each do |price2|
      if stock_prices.index(price2) > stock_prices.index(price1)
      profit = -(price1) + price2 
      if profit > hash[:profit]
      hash[:buy_day] = stock_prices.index(price1)
      hash[:sell_day] = stock_prices.index(price2)
      hash[:profit] = profit
      end
      end
    end
  end
  puts "Buy on day #{hash[:buy_day]} and sell on day #{hash[:sell_day]} for the highest profit."
  hash
end