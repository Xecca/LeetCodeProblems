//1337. The K Weakest Rows in a Matrix
//https://leetcode.com/problems/the-k-weakest-rows-in-a-matrix/
//----------------------------------------------------
//Runtime: 88 ms, faster than 95.45% of Swift online submissions for The K Weakest Rows in a Matrix.
//Memory Usage: 21.4 MB, less than 85.71% of Swift online submissions for The K Weakest Rows in a Matrix.
//----------------------------------------------------
//Given a m * n matrix mat of ones (representing soldiers) and zeros (representing civilians), return the indexes of the k weakest rows in the matrix ordered from the weakest to the strongest.
//
//A row i is weaker than row j, if the number of soldiers in row i is less than the number of soldiers in row j, or they have the same number of soldiers but i is less than j. Soldiers are always stand in the frontier of a row, that is, always ones may appear first and then zeros.
//----------------------------------------------------

func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
    var newArr = [[Int]]()
    var i = 0
    var countSoldiers = 0
    var rowIndex = 0
    var finalArr = [Int]()
    
    for row in mat {
        i = 0
        countSoldiers = 0
        while row[i] != 0 {
            countSoldiers += 1
            i += 1
            if i == row.count {
                break
            }
        }
        newArr.append([rowIndex, countSoldiers])
        rowIndex += 1
    }
    let sortedArray = newArr.sorted(by: {$0[1] < $1[1] })
    i = 0
    while i < k {
        finalArr.append(sortedArray[i][0])
        i += 1
    }
    
    return finalArr
}

//Input:
let mat = [
 [1,1,0,0,0],
 [1,1,1,1,0],
 [1,0,0,0,0],
 [1,1,0,0,0],
 [1,1,1,1,1]],
k = 3
//Output: [2,0,3]
//Explanation:
//The number of soldiers for each row is:
//row 0 -> 2
//row 1 -> 4
//row 2 -> 1
//row 3 -> 2
//row 4 -> 5
//Rows ordered from the weakest to the strongest are [2,0,3,1,4]

kWeakestRows(mat, k)

