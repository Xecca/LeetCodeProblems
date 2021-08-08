// Solved by Xecca

//1925. Count Square Sum Triples
//Difficult: Easy
//https://leetcode.com/problems/count-square-sum-triples/

//Runtime: 404 ms, faster than 24.39% of Swift online submissions for Count Square Sum Triples.
//Memory Usage: 13.6 MB, less than 95.12% of Swift online submissions for Count Square Sum Triples.

//

//A square triple (a,b,c) is a triple where a, b, and c are integers and a2 + b2 = c2.
//
//Given an integer n, return the number of square triples such that 1 <= a, b, c <= n.

//Constraints:
//
//1 <= n <= 250

//

func countTriples(_ n: Int) -> Int {
    if n < 5 {
        return 0
    }
    var indC = 5
    var currA = 3
    var currB = 3
    var countSquareTriples = 0
    
    while indC <= n {
        let cSquare = indC * indC
        while currA < indC {
            while currB < indC {
                if cSquare == (currA * currA) + (currB * currB) {
                    countSquareTriples += 1
                }
                currB += 1
            }
            currA += 1
            currB = 3
        }
        indC += 1
        currA = 3
        currB = 3
    }
    
    return countSquareTriples
}

//Example 1:
//
//Input: n = 5
//Output: 2
//Explanation: The square triples are (3,4,5) and (4,3,5).
//Example 2:
//
//Input: n = 10
//Output: 4
//Explanation: The square triples are (3,4,5), (4,3,5), (6,8,10), and (8,6,10).

//Test cases:

if countTriples(10) == 4 { print("Correct!") } else { print("Error! Expected: \(4)") }

