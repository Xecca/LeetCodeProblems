// Solved by Xecca

//1518. Water Bottles
//Сomplexity: Easy
//https://leetcode.com/problems/water-bottles/

//----------------------------------------------------
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Water Bottles.
//Memory Usage: 13.9 MB, less than 67.74% of Swift online submissions for Water Bottles.
//----------------------------------------------------

//Given numBottles full water bottles, you can exchange numExchange empty water bottles for one full water bottle.
//
//The operation of drinking a full water bottle turns it into an empty bottle.
//
//Return the maximum number of water bottles you can drink.
//
//Constraints:
//
//1 <= numBottles <= 100
//2 <= numExchange <= 100

//----------------------------------------------------

func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {
    var drinkedBottles = 0
    var bottlesWithWater = numBottles
    var emptyBottles = 0
    var leavedBottles = 0

    while bottlesWithWater > 0 {
        drinkedBottles += bottlesWithWater
        emptyBottles = bottlesWithWater + leavedBottles
        bottlesWithWater = emptyBottles / numExchange
        leavedBottles = (emptyBottles % numExchange)
    }

    return drinkedBottles
}

//Example 1:
//Input: numBottles = 9, numExchange = 3
//Output: 13
//Explanation: You can exchange 3 empty bottles to get 1 full water bottle.
//Number of water bottles you can drink: 9 + 3 + 1 = 13.
//Example 2:
//Input: numBottles = 15, numExchange = 4
//Output: 19
//Explanation: You can exchange 4 empty bottles to get 1 full water bottle.
//Number of water bottles you can drink: 15 + 3 + 1 = 19.
//Example 3:
//Input: numBottles = 5, numExchange = 5
//Output: 6
//Example 4:
//Input: numBottles = 2, numExchange = 3
//Output: 2

//Test cases:
//
if numWaterBottles(9, 3) == 13 { print("Correct!") } else { print("Error! Expected: \(13)") }
if numWaterBottles(15, 4) == 19 { print("Correct!") } else { print("Error! Expected: \(19)") }
if numWaterBottles(5, 5) == 6 { print("Correct!") } else { print("Error! Expected: \(6)") }
if numWaterBottles(2, 3) == 2 { print("Correct!") } else { print("Error! Expected: \(2)") }

