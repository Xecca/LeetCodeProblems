//1304. Find N Unique Integers Sum up to Zero
//https://leetcode.com/problems/find-n-unique-integers-sum-up-to-zero
//Runtime: 8 ms, faster than 96.67% of Swift online submissions for Find N Unique Integers Sum up to Zero.
//Memory Usage: 21.2 MB, less than 100.00% of Swift online submissions for Find N Unique Integers Sum up to Zero.
//----------------------------------------------------
//Given an integer n, return any array containing n unique integers such that they add up to 0.
//----------------------------------------------------

func sumZero(_ n: Int) -> [Int] {
    var newArr = [Int]()
    var i = 0
    let limit = n / 2
    
    if n % 2 != 0 {
        newArr.append(0)
        i += 1
    } else {
        i += 1
    }
    while i <= limit {
        newArr.append(i)
        newArr.append(-i)
        i += 1
    }
    
    return newArr
}

//Input:
let n = 2
//Output: [-7,-1,1,3,4]
//Explanation: These arrays also are accepted [-5,-1,1,2,3] , [-3,-1,2,-2,4].

sumZero(n)

