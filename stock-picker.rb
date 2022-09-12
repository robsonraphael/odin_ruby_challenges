def stock_picker(prices)
  min_price = prices[0]
  min_i = 0

  profit = 0
  days = [0, 0]

  prices.each_with_index do |p, i|
    if p < min_price
      min_price = p
      min_i = i
    end
    if p - min_price > profit
      profit = p - min_price
      days = [min_i, i]
    end
  end
  p days
end

stock_picker([12, 22, 2, 4, 44, 5, 6, 23])
