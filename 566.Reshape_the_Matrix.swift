class Solution {
    func matrixReshape(_ nums: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        let sizeOfMatrix = nums.count * nums[0].count

        if sizeOfMatrix == r * c {
            var newMatrix = Array(repeating: Array(repeating: 0, count: c), count: r)
            var tempMatrix = [Int]()
            var i = 0
            var j = 0
            var t = 0

            for num in nums {
                for n in num {
                    tempMatrix.append(n)
                }
            }

            while i < r {
                j = 0
                while j < c {
                    newMatrix[i][j] = tempMatrix[t]
                    j += 1
                    t += 1
                }
                i += 1
            }

            return newMatrix
        }

        return nums
    }
}
