//231. Power of Two
//https://leetcode.com/problems/power-of-two/
//Runtime: 8 ms, faster than 86.67% of Swift online submissions for Power of Two.
//Memory Usage: 20.8 MB, less than 100.00% of Swift online submissions for Power of Two.
//----------------------------------------------------

func isPowerOfTwo(_ n: Int) -> Bool {
    if n <= 0 {
        return false
    }

    return (n & (n - 1)) == 0
}

//Input:
let num = 16

//Output: true

isPowerOfTwo(num)
