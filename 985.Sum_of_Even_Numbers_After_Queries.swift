//985. Sum of Even Numbers After Queries
//Сomplexity: Easy
//https://leetcode.com/problems/sum-of-even-numbers-after-queries/

//----------------------------------------------------
//Runtime: 672 ms, faster than 44.44% of Swift online submissions for Sum of Even Numbers After Queries.
//Memory Usage: 22.4 MB, less than 100.00% of Swift online submissions for Sum of Even Numbers After Queries.
//----------------------------------------------------

//We have an array A of integers, and an array queries of queries.
//
//For the i-th query val = queries[i][0], index = queries[i][1], we add val to A[index].  Then, the answer to the i-th query is the sum of the even values of A.
//
//(Here, the given index = queries[i][1] is a 0-based index, and each query permanently modifies the array A.)
//
//Return the answer to all queries.  Your answer array should have answer[i] as the answer to the i-th query.

//----------------------------------------------------

func sumEvenAfterQueries(_ A: [Int], _ queries: [[Int]]) -> [Int] {
    var i = 0
    var newA = A
    var sumEven = [Int]()
    var tempSum = 0
    var oldVal = 0
    
    for num in newA {
        if num % 2 == 0 {
            tempSum += num
        }
    }
    
    while i < A.count {
        oldVal = newA[queries[i][1]]
        newA[queries[i][1]] += queries[i][0]
        if oldVal % 2 == 0 {
            if newA[queries[i][1]] % 2 != 0 {
                tempSum -= oldVal
            } else {
                tempSum += queries[i][0]
            }
        } else if newA[queries[i][1]] % 2 == 0 {
            tempSum += newA[queries[i][1]]
        }
        sumEven.append(tempSum)
        i += 1
    }
    
    return sumEven
}

//Input:
let A = [1,2,3,4], queries = [[1,0],[-3,1],[-4,0],[2,3]]
//Output: [8,6,2,4]
//Explanation:
//At the beginning, the array is [1,2,3,4].
//After adding 1 to A[0], the array is [2,2,3,4], and the sum of even values is 2 + 2 + 4 = 8.
//After adding -3 to A[1], the array is [2,-1,3,4], and the sum of even values is 2 + 4 = 6.
//After adding -4 to A[0], the array is [-2,-1,3,4], and the sum of even values is -2 + 4 = 2.
//After adding 2 to A[3], the array is [-2,-1,3,6], and the sum of even values is -2 + 6 = 4.

sumEvenAfterQueries(A, queries)

