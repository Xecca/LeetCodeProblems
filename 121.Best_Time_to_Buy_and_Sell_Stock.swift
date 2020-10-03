// Solved by Xecca

//121. Best Time to Buy and Sell Stock
//Сomplexity: Easy
//https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

//----------------------------------------------------
//Runtime: 32 ms, faster than 96.65% of Swift online submissions for Best Time to Buy and Sell Stock.
//Memory Usage: 14.9 MB, less than 92.84% of Swift online submissions for Best Time to Buy and Sell Stock.
//----------------------------------------------------

//Say you have an array for which the ith element is the price of a given stock on day i.
//
//If you were only permitted to complete at most one transaction (i.e., buy one and sell one share of the stock), design an algorithm to find the maximum profit.
//
//Note that you cannot sell a stock before you buy one.

//----------------------------------------------------

func maxProfit(_ prices: [Int]) -> Int {
    if prices.count < 2 {
        return 0
    }
    var maxProfit = 0
    var purchasePrice = prices[0]
    var j = 1
    let length = prices.count

    while j < length {
        if purchasePrice > prices[j] {
            purchasePrice = prices[j]
        } else if prices[j] - purchasePrice > maxProfit {
            maxProfit = prices[j] - purchasePrice
        }
        j += 1
    }

    return maxProfit
}

//Input:
let prices = [7,1,5,3,6,4]
//Output: 5
//Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5.
//             Not 7-1 = 6, as selling price needs to be larger than buying price.

maxProfit(prices)

