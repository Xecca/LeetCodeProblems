//1356. Sort Integers by The Number of 1 Bits
//https://leetcode.com/problems/sort-integers-by-the-number-of-1-bits/
//----------------------------------------------------
//Runtime: 124 ms, faster than 15.52% of Swift online submissions for Sort Integers by The Number of 1 Bits.
//Memory Usage: 20.9 MB, less than 96.15% of Swift online submissions for Sort Integers by The Number of 1 Bits.
//----------------------------------------------------
//Given an integer array arr. You have to sort the integers in the array in ascending order by the number of 1's in their binary representation and in case of two or more integers have the same number of 1's you have to sort them in ascending order.
//
//Return the sorted array.
//----------------------------------------------------

func sortByBits(_ arr: [Int]) -> [Int] {
    var binaryRow = [[Int]]()
    var i = 0
    let newArrSort = arr.sorted()
    let length = arr.count
    var finalArr = [Int]()
    
    while i < length {
        binaryRow.append([newArrSort[i], findCountOnes(newArrSort[i])])
        i += 1
    }
    let sortedArr = binaryRow.sorted { $0[1] < $1[1]}
    
    for pair in sortedArr {
        finalArr.append(pair[0])
    }
    
    return finalArr
}

func findCountOnes(_ num: Int) -> Int {
    var newNum = num
    var countOnes = 0
    
    while newNum > 0 {
        if newNum % 2 != 0 {
            countOnes += 1
        }
        newNum /= 2
    }
    
    return countOnes
}

//Input:
let arr = [0,1,2,3,4,5,6,7,8]
//Output: [0,1,2,4,8,3,5,6,7]
//Explantion: [0] is the only integer with 0 bits.
//[1,2,4,8] all have 1 bit.
//[3,5,6] have 2 bits.
//[7] has 3 bits.
//The sorted array by bits is [0,1,2,4,8,3,5,6,7]

sortByBits(arr)

