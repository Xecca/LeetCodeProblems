// Solved by Xecca

//1716. Calculate Money in Leetcode Bank
//Difficult: Easy
//https://leetcode.com/problems/calculate-money-in-leetcode-bank/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Calculate Money in Leetcode Bank.
//Memory Usage: 13.9 MB, less than 23.08% of Swift online submissions for Calculate Money in Leetcode Bank.

//

//Hercy wants to save money for his first car. He puts money in the Leetcode bank every day.
//
//He starts by putting in $1 on Monday, the first day. Every day from Tuesday to Sunday, he will put in $1 more than the day before. On every subsequent Monday, he will put in $1 more than the previous Monday.
//
//Given n, return the total amount of money he will have in the Leetcode bank at the end of the nth day.
//
//Constraints:
//
//1 <= n <= 1000

//

func totalMoney(_ n: Int) -> Int {
    var mondaysMoney = 1
    var currentDayMoney = 1
    var totalSum = 0
    var i = 1
    
    while i <= n {
        totalSum += currentDayMoney
        currentDayMoney += 1
        if i % 7 == 0 {
            mondaysMoney += 1
            currentDayMoney = mondaysMoney
        }
        i += 1
    }
    
    return totalSum
}

//Example 1:
//
//Input: n = 4
//Output: 10
//Explanation: After the 4th day, the total is 1 + 2 + 3 + 4 = 10.
//Example 2:
//
//Input: n = 10
//Output: 37
//Explanation: After the 10th day, the total is (1 + 2 + 3 + 4 + 5 + 6 + 7) + (2 + 3 + 4) = 37. Notice that on the 2nd Monday, Hercy only puts in $2.
//Example 3:
//
//Input: n = 20
//Output: 96
//Explanation: After the 20th day, the total is (1 + 2 + 3 + 4 + 5 + 6 + 7) + (2 + 3 + 4 + 5 + 6 + 7 + 8) + (3 + 4 + 5 + 6 + 7 + 8) = 96.

//Test cases:

if totalMoney(10) == 37 { print("Correct!") } else { print("Error! Expected: \(37)") }

