//1491. Average Salary Excluding the Minimum and Maximum Salary
//Сomplexity: Easy
//https://leetcode.com/problems/average-salary-excluding-the-minimum-and-maximum-salary/
//----------------------------------------------------
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Average Salary Excluding the Minimum and Maximum Salary.
//Memory Usage: 21.3 MB, less than 100.00% of Swift online submissions for Average Salary Excluding the Minimum and Maximum
//----------------------------------------------------

//Given an array of unique integers salary where salary[i] is the salary of the employee i.
//
//Return the average salary of employees excluding the minimum and maximum salary.

//----------------------------------------------------

//second version:
func average(_ salary: [Int]) -> Double {
    let minAndMax = salary.min()! + salary.max()!
    var sum = 0

    for num in salary {
        sum += num
    }
    
    return Double(sum - minAndMax) / Double(salary.count - 2)
}


//first version:
//func average(_ salary: [Int]) -> Double {
//    var newSalary = salary
//
//    removeMedian(&newSalary, newSalary.min()!)
//    removeMedian(&newSalary, newSalary.max()!)
//
//    let count = newSalary.count
//
//    return Double(findSum(newSalary)) / Double(count)
//}
//
//func removeMedian(_ newSalary: inout [Int], _ val: Int) {
//    var i = 0
//    let length = newSalary.count
//
//    while i < length {
//        if newSalary[i] == val {
//            newSalary.remove(at: i)
//            break
//        }
//        i += 1
//    }
//}
//
//func findSum(_ arr: [Int]) -> Int {
//    var sum = 0
//
//    for num in arr {
//        sum += num
//    }
//
//    return sum
//}


//Input:
let salary = [4000,3000,1000,2000]
//Output: 2500.00000
//Explanation: Minimum salary and maximum salary are 1000 and 4000 respectively.
//Average salary excluding minimum and maximum salary is (2000+3000)/2= 2500

average(salary)

