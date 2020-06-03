//728. Self Dividing Numbers
//hhttps://leetcode.com/problems/self-dividing-numbers/
//Runtime: 4 ms, faster than 100.00% of Swift online submissions for Self Dividing Numbers.
//Memory Usage: 21.1 MB, less than 100.00% of Swift online submissions for Self Dividing Numbers.
//----------------------------------------------------
//A self-dividing number is a number that is divisible by every digit it contains.
//
//For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0, and 128 % 8 == 0.
//
//Also, a self-dividing number is not allowed to contain the digit zero.
//
//Given a lower and upper number bound, output a list of every possible self dividing number, including the bounds if possible.
//----------------------------------------------------

func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
    var newArr = [Int]()
    var i = left
    
    while i <= right {
        if devidedOnSelf(i) == true {
            newArr.append(i)
        }
        i += 1
    }
    
    return newArr
}

func devidedOnSelf(_ number: Int) -> Bool {
    var num = number
    
    while num > 0 {
        let devidedInt = num % 10
        if devidedInt != 0 && number % devidedInt == 0 {
            num /= 10
        } else {
            return false
        }
    }
    
    return true
}

//Input:
let left = 1, right = 22
//Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]

selfDividingNumbers(left, right)

