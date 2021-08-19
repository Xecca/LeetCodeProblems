// Solved by Xecca

//1952. Three Divisors
//Difficult: Easy
//https://leetcode.com/problems/three-divisors/

//Runtime: 28 ms, faster than 16.13% of Swift online submissions for Three Divisors.
//Memory Usage: 13.8 MB, less than 77.42% of Swift online submissions for Three Divisors.

//

//Given an integer n, return true if n has exactly three positive divisors. Otherwise, return false.
//
//An integer m is a divisor of n if there exists an integer k such that n = k * m.

//Constraints:
//
//1 <= n <= 10^4

//

func isThree(_ n: Int) -> Bool {
    var divisors = 0
    
    for num in 1...n {
        if n % num == 0 {
            divisors += 1
        }
    }
    
    if divisors == 3 {
        return true
    }
    
    return false
}

//    Example 1:
//
//    Input: n = 2
//    Output: false
//    Explantion: 2 has only two divisors: 1 and 2.
//    Example 2:
//
//    Input: n = 4
//    Output: true
//    Explantion: 4 has three divisors: 1, 2, and 4.

//Test cases:

if isThree(4) == true { print("Correct!") } else { print("Error! Expected: \(true)") }

