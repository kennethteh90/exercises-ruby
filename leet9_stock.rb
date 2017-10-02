=begin
Description:

Say you have an array for which the ith element is the price of a given stock on day i.
Design an algorithm to find the maximum profit. You may complete as many transactions as you like (ie, buy one and sell one share of the stock multiple times). However, you may not engage in multiple transactions at the same time (ie, you must sell the stock before you buy again).

Examples:

max_profit( [1,4,3,6,2] ) should return 6.
max_profit( [ 1 ] ) should return 0.
=end

# # @param {Integer[]} prices
# # @return {Integer}
# def max_profit(prices)
#   previous_price = 0
#   profit = 0
#   can_buy = true
#   prices.each do |current_price|
#     if can_buy == false
#       previous_price = current_price
#       next
#     elsif previous_price == 0
#       previous_price = current_price
#       next
#     elsif current_price > previous_price # time to sell high!
#       profit += (current_price - previous_price) # sell stock, get profit
#       can_buy = true
#     elsif current_price < previous_price && can_buy == true # time to buy low!
#       profit -= current_price # buy stock
#       can_buy = false
#     end
#     previous_price = current_price
#   end
#   return profit
# end

# Say you have an array for which the ith element is the price of a given stock on day i.
#
# If you were only permitted to complete at most one transaction (ie, buy one and sell one share of the stock), design an algorithm to find the maximum profit.

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  # prices[1..-1].max - prices[0..-2].min # this fails when sell before buying
  count = 0
  m = 0
  while count < prices.length do
    n = prices[count..prices.length - 1].max - prices[count]
    count += 1
    n > m ? m = n : next
  end
  m
end

p max_profit([7,1,5,3,6,4]) # should be 5
