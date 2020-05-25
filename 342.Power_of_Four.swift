//342. Power of Four
//https://leetcode.com/problems/power-of-four/
//Runtime: 8 ms, faster than 68.85% of Swift online submissions for Power of Four.
//Memory Usage: 20.9 MB, less than 100.00% of Swift online submissions for Power of Four.
//----------------------------------------------------

func isPowerOfFour(_ num: Int) -> Bool {
    var newNum: Float = Float(num)
    
    while newNum > 1.0 {
        newNum /= 4
    }
    if (newNum == 1) {
        return true
    }
    return false
}

//Input:
let num = 16

//Output: true

isPowerOfFour(num)
