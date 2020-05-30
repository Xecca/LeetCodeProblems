//1299. Replace Elements with Greatest Element on Right Side
//https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side/
//Runtime: 140 ms, faster than 83.74% of Swift online submissions for Replace Elements with Greatest Element on Right Side.
//Memory Usage: 21.8 MB, less than 100.00% of Swift online submissions for Replace Elements with Greatest Element on Right Side.
//----------------------------------------------------
//Given an array arr, replace every element in that array with the greatest element among the elements to its right, and replace the last element with -1.
//
//After doing so, return the array.
//----------------------------------------------------

func replaceElements(_ arr: [Int]) -> [Int] {
    var i = 0
    var maxVal = 0
    var newArr = [Int]()
    let lenght = arr.count
    
    maxVal = maxValue(arr)
    while i < lenght {
        if arr[i] == maxVal {
            maxVal = maxValueRight(arr, i, lenght)
        }
        newArr.append(maxVal)
        i += 1
    }
    newArr[i - 1] = -1
    
    return newArr
}

func maxValueRight(_ array: [Int], _ start: Int, _ end: Int) -> Int {
    var maxVal = 0
    var i = start + 1
    
    while i < end {
        if array[i] > maxVal {
            maxVal = array[i]
        }
        i += 1
    }
    
    return maxVal
}

func maxValue(_ array: [Int]) -> Int {
    var maxVal = 0
    var i = 0
    let lenght = array.count
    
    while i < lenght {
        if array[i] > maxVal {
            maxVal = array[i]
        }
        i += 1
    }
    
    return maxVal
}

//Input:
let arr = [17,18,5,4,6,1]
//Output: [18,6,6,6,1,-1]

replaceElements(arr)

