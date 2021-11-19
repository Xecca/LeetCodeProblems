// Solved by Xecca

import Foundation

//2073. Time Needed to Buy Tickets
//Difficult: Easy
//https://leetcode.com/problems/time-needed-to-buy-tickets/

//Runtime: 4 ms, faster than 93.33% of Swift online submissions for Time Needed to Buy Tickets.
//Memory Usage: 14 MB, less than 73.33% of Swift online submissions for Time Needed to Buy Tickets.
    
//

//A distinct string is a string that is present only once in an array.
//
//There are n people in a line queuing to buy tickets, where the 0th person is at the front of the line and the (n - 1)th person is at the back of the line.
//
//You are given a 0-indexed integer array tickets of length n where the number of tickets that the ith person would like to buy is tickets[i].
//
//Each person takes exactly 1 second to buy a ticket. A person can only buy 1 ticket at a time and has to go back to the end of the line (which happens instantaneously) in order to buy more tickets. If a person does not have any tickets left to buy, the person will leave the line.
//
//Return the time taken for the person at position k (0-indexed) to finish buying tickets.
//
//Constraints:
//
//n == tickets.length
//1 <= n <= 100
//1 <= tickets[i] <= 100
//0 <= k < n

//

func timeRequiredToBuy(_ tickets: [Int], _ k: Int) -> Int {
    var ticketsLine = tickets
    var i = 0
    var spendedTime = 0
    let length = tickets.count - 1
    
    while ticketsLine[k] != 0 {
        if ticketsLine[i] == 0 {
            i += 1
        } else {
            ticketsLine[i] -= 1
            spendedTime += 1
            i += 1
        }
        if i > length {
            i = 0
        }
    }
    
    return spendedTime
}

//Example 1:
//
//Input: tickets = [2,3,2], k = 2
//Output: 6
//Explanation:
//- In the first pass, everyone in the line buys a ticket and the line becomes [1, 2, 1].
//- In the second pass, everyone in the line buys a ticket and the line becomes [0, 1, 0].
//The person at position 2 has successfully bought 2 tickets and it took 3 + 3 = 6 seconds.
//Example 2:
//
//Input: tickets = [5,1,1,1], k = 0
//Output: 8
//Explanation:
//- In the first pass, everyone in the line buys a ticket and the line becomes [4, 0, 0, 0].
//- In the next 4 passes, only the person in position 0 is buying tickets.
//The person at position 0 has successfully bought 5 tickets and it took 4 + 1 + 1 + 1 + 1 = 8 seconds.

//Test cases:

let input = [5,1,1,1]
let input2 = 0
let answer = 8

if timeRequiredToBuy(input, input2) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

