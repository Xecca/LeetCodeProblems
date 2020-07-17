//762. Prime Number of Set Bits in Binary Representation
//Сomplexity: Easy
//https://leetcode.com/problems/prime-number-of-set-bits-in-binary-representation/
//----------------------------------------------------
//Runtime: 12 ms, faster than 100.00% of Swift online submissions for Prime Number of Set Bits in Binary Representation.
//Memory Usage: 20.1 MB, less than 100.00% of Swift online submissions for Prime Number of Set Bits in Binary Representation.
//----------------------------------------------------

//Given two integers L and R, find the count of numbers in the range [L, R] (inclusive) having a prime number of set bits in their binary representation.
//
//(Recall that the number of set bits an integer has is the number of 1s present when written in binary. For example, 21 written in binary is 10101 which has 3 set bits. Also, 1 is not a prime.)

//----------------------------------------------------

func countPrimeSetBits(_ L: Int, _ R: Int) -> Int {
    let simpleNumbers = [2, 3, 5, 7, 11, 13, 17, 19]
    var countSimpleNum = 0

    for num in L...R {
        let countBits = num.nonzeroBitCount
        if simpleNumbers.contains(countBits) {
            countSimpleNum += 1
        }
    }

    return countSimpleNum
}

//Input:
let L = 10, R = 15
//Output: 5
//Explanation:
//10 -> 1010 (2 set bits, 2 is prime)
//11 -> 1011 (3 set bits, 3 is prime)
//12 -> 1100 (2 set bits, 2 is prime)
//13 -> 1101 (3 set bits, 3 is prime)
//14 -> 1110 (3 set bits, 3 is prime)
//15 -> 1111 (4 set bits, 4 is not prime)

countPrimeSetBits(L, R)

