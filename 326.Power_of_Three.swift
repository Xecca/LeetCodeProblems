//326. Power of Three
//https://leetcode.com/problems/power-of-two/
//Runtime: 60 ms, faster than 80.77% of Swift online submissions for Power of Three.
//Memory Usage: 21.7 MB, less than 100.00% of Swift online submissions for Power of Three.
//----------------------------------------------------

func isPowerOfThree(_ n: Int) -> Bool {
    var newNum: Double = Double(n)

    while newNum > 1.0 {
        newNum /= 3.0
    }
    if (newNum == 1.0) {
        return true
    }
    return false
}

//Input:
let num = 27

//Output: true

isPowerOfThree(num)

