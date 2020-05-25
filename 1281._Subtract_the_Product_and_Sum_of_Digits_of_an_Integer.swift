//1281. Subtract the Product and Sum of Digits of an Integer
//https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Subtract the Product and Sum of Digits of an Integer.
//Memory Usage: 20.8 MB, less than 100.00% of Swift online submissions for Subtract the Product and Sum of Digits of an Integer.
//----------------------------------------------------

func subtractProductAndSum(_ n: Int) -> Int {
    var productOfDigits = 1
    var sumOfDigits = 0
    let strNum = String(n)
    
    for num in strNum {
        let currentNum = Int(String(num)) ?? 0
        productOfDigits *= currentNum
        sumOfDigits += currentNum
    }
    
    return productOfDigits - sumOfDigits
}

let nums = 4421
//Output: 21
//Product of digits = 4 * 4 * 2 * 1 = 32
//Sum of digits = 4 + 4 + 2 + 1 = 11
//Result = 32 - 11 = 21

subtractProductAndSum(nums)
