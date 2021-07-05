// Solved by Xecca

//1742. Maximum Number of Balls in a Box
//Difficult: Easy
//https://leetcode.com/problems/maximum-number-of-balls-in-a-box/

//Runtime: 68 ms, faster than 97.06% of Swift online submissions for Maximum Number of Balls in a Box.
//Memory Usage: 13.9 MB, less than 82.35% of Swift online submissions for Maximum Number of Balls in a Box.

//

//You are working in a ball factory where you have n balls numbered from lowLimit up to highLimit inclusive (i.e., n == highLimit - lowLimit + 1), and an infinite number of boxes numbered from 1 to infinity.
//
//Your job at this factory is to put each ball in the box with a number equal to the sum of digits of the ball's number. For example, the ball number 321 will be put in the box number 3 + 2 + 1 = 6 and the ball number 10 will be put in the box number 1 + 0 = 1.
//
//Given two integers lowLimit and highLimit, return the number of balls in the box with the most balls.
//
//Constraints:
//
//1 <= lowLimit <= highLimit <= 10^5

//

func countBalls(_ lowLimit: Int, _ highLimit: Int) -> Int {
    var boxes = Array(repeating: 0, count: 46) // maxSum with highLimit <= 10^5 is 46 = 9+9+9+9+9
    
    for ballNum in lowLimit...highLimit {
        boxes[sumOfDigits(ballNum)] += 1
    }
    
    return boxes.max()!
}

// Version 2: if the highLimit more than 10^5:
//     func countBalls(_ lowLimit: Int, _ highLimit: Int) -> Int {
//         var dict: [Int: Int] = [:]
//         var num = 0
//         var boxNum = 0
    
//         for ballNum in lowLimit...highLimit {
//             boxNum = sumOfDigits(ballNum)
//             let ballCountInBox = Int(dict[boxNum] ?? 0)
//             dict.updateValue(ballCountInBox + 1, forKey: boxNum)
//         }
    
//         let max = dict.max { $0.value < $1.value}!.value
    
//         return max
//     }

func sumOfDigits(_ ballNum: Int) -> Int {
    var num = ballNum
    var sum = 0
    
    while num >= 1 {
        sum += (num % 10)
        num /= 10
    }
    
    // for n in String(ballNum) {
    //     sum += (Int(n.asciiValue!) - 48)
    // }
    
    return sum
}

//Example 1:
//
//Input: lowLimit = 1, highLimit = 10
//Output: 2
//Explanation:
//Box Number:  1 2 3 4 5 6 7 8 9 10 11 ...
//Ball Count:  2 1 1 1 1 1 1 1 1 0  0  ...
//Box 1 has the most number of balls with 2 balls.
//Example 2:
//
//Input: lowLimit = 5, highLimit = 15
//Output: 2
//Explanation:
//Box Number:  1 2 3 4 5 6 7 8 9 10 11 ...
//Ball Count:  1 1 1 1 2 2 1 1 1 0  0  ...
//Boxes 5 and 6 have the most number of balls with 2 balls in each.
//Example 3:
//
//Input: lowLimit = 19, highLimit = 28
//Output: 2
//Explanation:
//Box Number:  1 2 3 4 5 6 7 8 9 10 11 12 ...
//Ball Count:  0 1 1 1 1 1 1 1 1 2  0  0  ...
//Box 10 has the most number of balls with 2 balls.

//Test cases:

if countBalls(19, 28) == 2 { print("Correct!") } else { print("Error! Expected: \(2)") }

