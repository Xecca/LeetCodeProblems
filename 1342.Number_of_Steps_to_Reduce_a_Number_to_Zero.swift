//1342. Number of Steps to Reduce a Number to Zero
//https://leetcode.com/problems/number-of-steps-to-reduce-a-number-to-zero/
//Runtime: 4 ms, faster than 91.94% of Swift online submissions for Number of Steps to Reduce a Number to Zero.
//Memory Usage: 20.8 MB, less than 100.00% of Swift online submissions for Number of Steps to Reduce a Number to Zero.
//----------------------------------------------------

func numberOfSteps (_ num: Int) -> Int {
    var i = 0
    var numDev = num
    
    while numDev != 0 {
        if numDev % 2 == 0 {
            numDev = numDev / 2
        } else {
            numDev -= 1
        }
        i += 1
    }
    return i
}

let input = 14
let output = 6

if numberOfSteps(input) == output {
    print("Succes!")
} else {
    print("Error!")
}

//Input: num = 14
//Output: 6
//Explanation:
//Step 1) 14 is even; divide by 2 and obtain 7.
//Step 2) 7 is odd; subtract 1 and obtain 6.
//Step 3) 6 is even; divide by 2 and obtain 3.
//Step 4) 3 is odd; subtract 1 and obtain 2.
//Step 5) 2 is even; divide by 2 and obtain 1.
//Step 6) 1 is odd; subtract 1 and obtain 0.

