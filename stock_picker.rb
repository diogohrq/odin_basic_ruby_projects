# Implement a method #stock_picker that takes in an array of stock prices, one
# for each hypothetical day. It should return a pair of days representing the 
# best day to buy and the best day to sell. Days start at 0.
# 
# Quick Tips:
# - You need to buy before you can sell
# - Pay attention to edge cases like when the lowest day is the last day or the
# highest day is the first day.

stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(stock_prices)
  profit = 0
  buy_day = nil
  sell_day = nil

  stock_prices.each_with_index do |buy_price, outer_index|
    (outer_index + 1...stock_prices.size).each do |inner_index|
      pair_profit = stock_prices[inner_index] - buy_price

      if pair_profit > profit
        profit = pair_profit
        buy_day = outer_index
        sell_day = inner_index
      end
    end
  end

  [buy_day, sell_day]
end

p stock_picker(stocks)