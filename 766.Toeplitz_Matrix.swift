//766. Toeplitz Matrix
//Сomplexity: Easy
//https://leetcode.com/problems/toeplitz-matrix/
//----------------------------------------------------
//Runtime: 88 ms, faster than 26.09% of Swift online submissions for Toeplitz Matrix.
//Memory Usage: 20.8 MB, less than 69.23% of Swift online submissions for Toeplitz Matrix.
//----------------------------------------------------

//Given an integer n. Each number from 1 to n is grouped according to the sum of its digits.
//
//Return how many groups have the largest size.

//----------------------------------------------------

//first version
func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
    let heightMatrix = matrix.count
    let widthMatrix = matrix[0].count
    var i = 0
    var j = 0
    var indexDiag = 0
    var diagonals = [[Int]](repeating: [], count: heightMatrix + widthMatrix - 1)

    while indexDiag < widthMatrix {

        while i < heightMatrix && j < widthMatrix {
            diagonals[indexDiag].append(matrix[i][j])
            j += 1
            i += 1
        }
        indexDiag += 1
        i = 0
        j = indexDiag
    }
    i += 1
    j = 0
    var tempI = i
    while indexDiag < heightMatrix + widthMatrix - 1 {

        while i < heightMatrix && j < widthMatrix {
            diagonals[indexDiag].append(matrix[i][j])
            j += 1
            i += 1
        }
        tempI += 1
        indexDiag += 1
        i = tempI
        j = 0
    }

    return checkTeoplitz(diagonals)
}

func checkTeoplitz(_ diagonals: [[Int]]) -> Bool {
    var i = 0

    while i < diagonals.count {
        if Set(diagonals[i]).count != 1 {
            return false
        }
        i += 1
    }

    return true
}

//second version

//func isToeplitzMatrix(_ matrix: [[Int]]) -> Bool {
//    let heightMatrix = matrix.count
//    let widthMatrix = matrix[0].count
//    var i = 0
//    var j = 0
//
//    var tempI = i
//    while i < heightMatrix && j < widthMatrix {
//        let tempVal = matrix[i][j]
//        while j < widthMatrix && i < heightMatrix {
//            if matrix[i][j] != tempVal {
//                return false
//            }
//            print(matrix[i][j])
//            j += 1
//            i += 1
//        }
//        tempI += 1
//        j = tempI
//        i = 0
//    }
//    j = 0
//    i = 1
//    tempI = 1
//    while i < heightMatrix && j < widthMatrix{
//        let tempVal = matrix[i][j]
//        while j < widthMatrix && i < heightMatrix {
//            if matrix[i][j] != tempVal {
//                return false
//            }
//            print(matrix[i][j])
//            j += 1
//            i += 1
//        }
//        tempI += 1
//        i = tempI
//        j = 0
//    }
//
//    return true
//}


//Input:
//
let matrix = [
  [1,2,3,4],
  [5,1,2,3],
  [9,5,1,2]
]
//Output: True
//Explanation:
//In the above grid, the diagonals are:
//"[9]", "[5, 5]", "[1, 1, 1]", "[2, 2, 2]", "[3, 3]", "[4]".
//In each diagonal all elements are the same, so the answer is True.

isToeplitzMatrix(matrix)

