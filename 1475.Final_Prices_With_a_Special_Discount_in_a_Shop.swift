//1475. Final Prices With a Special Discount in a Shop
//Сomplexity: Easy
//https://leetcode.com/problems/final-prices-with-a-special-discount-in-a-shop/
//----------------------------------------------------
//Runtime: 28 ms, faster than 91.76% of Swift online submissions for Final Prices With a Special Discount in a Shop.
//Memory Usage: 20.7 MB, less than 100.00% of Swift online submissions for Final Prices With a Special Discount in a Shop.
//----------------------------------------------------

//Given the array prices where prices[i] is the price of the ith item in a shop. There is a special discount for items in the shop, if you buy the ith item, then you will receive a discount equivalent to prices[j] where j is the minimum index such that j > i and prices[j] <= prices[i], otherwise, you will not receive any discount at all.
//
//Return an array where the ith element is the final price you will pay for the ith item of the shop considering the special discount.

func finalPrices(_ prices: [Int]) -> [Int] {
    var i = 0
    var j = 1
    var newPrices = prices
    let length = prices.count
    
    while i < length {
        j = i + 1
        while j < length {
            if newPrices[i] >= newPrices[j] {
                newPrices[i] -= newPrices[j]
                break
            }
            j += 1
        }
        i += 1
    }
    
    return newPrices
}

//Input:
var prices = [8,4,6,2,3]
//Output: [4,2,4,2,3]
//For item 0 with price[0]=8 you will receive a discount equivalent to prices[1]=4, therefore, the final price you will pay is 8 - 4 = 4.
//For item 1 with price[1]=4 you will receive a discount equivalent to prices[3]=2, therefore, the final price you will pay is 4 - 2 = 2.
//For item 2 with price[2]=6 you will receive a discount equivalent to prices[3]=2, therefore, the final price you will pay is 6 - 2 = 4.
//For items 3 and 4 you will not receive any discount at all.

finalPrices(prices)


























////-----------------------------------------------------------------------------------------------------
////821. Shortest Distance to a Character
////Сomplexity: Easy
////https://leetcode.com/problems/shortest-distance-to-a-character/
////----------------------------------------------------
////Runtime: 8 ms, faster than 100.00% of Swift online submissions for Available Captures for Rook.
////Memory Usage: 21.1 MB, less than 77.78% of Swift online submissions for Available Captures for Rook.
////----------------------------------------------------
////Given a string S and a character C, return an array of integers representing the shortest distance from the character C in the string.
////----------------------------------------------------
//
//func shortestToChar(_ S: String, _ C: Character) -> [Int] {
//    let length = S.count
//    var finalMatch = [Int](repeating: Int.max, count: length)
//    finalMatch = findChar(S, C, finalMatch)
//    var i = 0
//
//    while i < length {
//        var diff = [Int]()
//        for ind in finalMatch {
//            diff.append(<#T##newElement: Int##Int#>)
//        }
//    }
//
//
//    print(finalMatch)
//
//    return [0]
//}
//
//func findChar(_ str: String, _ char: Character, _ finalMatch: [Int]) -> [Int] {
//    var i = 0
//    var charPosition = finalMatch
//
//    for letter in str {
//        if letter == char {
//            charPosition[i] = 0
//        }
//        i += 1
//    }
//
//    return charPosition
//}
//
////Input:
//let S = "loveleetcode", C: Character = "e"
////Output: [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0]
//
//shortestToChar(S, C)

