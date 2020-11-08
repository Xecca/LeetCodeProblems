// Solved by Xecca

//661. Image Smoother
//Сomplexity: Easy
//https://leetcode.com/problems/image-smoother/

//----------------------------------------------------
//Runtime: 464 ms, faster than 62.50% of Swift online submissions for Image Smoother.
//Memory Usage: 14.6 MB, less than 25.00% of Swift online submissions for Image Smoother.
//----------------------------------------------------

//Given a 2D integer matrix M representing the gray scale of an image, you need to design a smoother to make the gray scale of each cell becomes the average gray scale (rounding down) of all the 8 surrounding cells and itself. If a cell has less than 8 surrounding cells, then use as many as you can.

//Note:
//The value in the given matrix is in the range of [0, 255].
//The length and width of the given matrix are in the range of [1, 150].

//----------------------------------------------------

func imageSmoother(_ M: [[Int]]) -> [[Int]] {
    var smootherImage = [[Int]](repeating: [Int](repeating: 0, count: M[0].count), count: M.count)
    var r = 0
    var c = 0
    var value = 0
    var nr = 0
    var nc = 0
    
    while r < smootherImage.count {
        while c < smootherImage[0].count {
            value = 0
            nr = r - 1
            while nr <= r + 1 {
                nc = c - 1
                while nc <= c + 1 {
                    if (0 <= nr && nr < smootherImage.count && 0 <= nc && nc < smootherImage[0].count) {
                        smootherImage[r][c] += M[nr][nc]
                        value += 1
                    }
                    nc += 1
                }
                nr += 1
            }
            smootherImage[r][c] /= value
            c += 1
        }
        c = 0
        r += 1
    }
    
    return smootherImage
}

//Example 1:
//Input:
//[[1,1,1],
// [1,0,1],
// [1,1,1]]
//Output:
//[[0, 0, 0],
// [0, 0, 0],
// [0, 0, 0]]
//Explanation:
//For the point (0,0), (0,2), (2,0), (2,2): floor(3/4) = floor(0.75) = 0
//For the point (0,1), (1,0), (1,2), (2,1): floor(5/6) = floor(0.83333333) = 0
//For the point (1,1): floor(8/9) = floor(0.88888889) = 0

//Test cases:
if imageSmoother([[1,1,1],[1,0,1],[1,1,1]]) == [[0,0,0],[0,0,0],[0,0,0]] { print("Correct!") } else { print("Error! Expected: \([[1,1,1],[1,0,1],[1,1,1]])")}
if imageSmoother([[2,3,4],[5,6,7],[8,9,10],[11,12,13],[14,15,16]]) == [[4,4,5],[5,6,6],[8,9,9],[11,12,12],[13,13,14]] { print("Correct!") } else { print("Error! Expected: \([[2,3,4],[5,6,7],[8,9,10],[11,12,13],[14,15,16]])")}


