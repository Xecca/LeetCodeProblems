// Solved by Xecca

//492. Construct the Rectangle
//Difficult: Easy
//https://leetcode.com/problems/construct-the-rectangle/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Construct the Rectangle.
//Memory Usage: 14.1 MB, less than 66.67% of Swift online submissions for Construct the Rectangle.

//

//A web developer needs to know how to design a web page's size. So, given a specific rectangular web page’s area, your job by now is to design a rectangular web page, whose length L and width W satisfy the following requirements:
//
//The area of the rectangular web page you designed must equal to the given target area.
//The width W should not be larger than the length L, which means L >= W.
//The difference between length L and width W should be as small as possible.
//Return an array [L, W] where L and W are the length and width of the web page you designed in sequence.

//Constraints:
//
//1 <= area <= 107

//

func constructRectangle(_ area: Int) -> [Int] {
    let startPos = Int(Double(area).squareRoot())
    var bestRes = [0, 0]
    var i = 1
    
    while i <= startPos {
        if area % i == 0 {
            bestRes = [(area / i), i]
        }
        i += 1
    }
    
    return bestRes
}

// slow: Runtime: 2460 ms
//     func constructRectangle(_ area: Int) -> [Int] {
//         var bestRes = [area, 1]
//         var minDiff = bestRes[0] - bestRes[1]
//         var curRect = bestRes
    
//         while curRect[0] > curRect[1] {
//             if area % curRect[0] == 0 {
//                 curRect[1] = area / curRect[0]
//                 if curRect[0] - curRect[1] < minDiff {
//                     minDiff = bestRes[0] - bestRes[1]
//                     bestRes = curRect
//                 }
//             }
//             curRect[0] -= 1
//         }
    
//         return bestRes
//     }

//Example 1:
//
//Input: area = 4
//Output: [2,2]
//Explanation: The target area is 4, and all the possible ways to construct it are [1,4], [2,2], [4,1].
//But according to requirement 2, [1,4] is illegal; according to requirement 3,  [4,1] is not optimal compared to [2,2]. So the length L is 2, and the width W is 2.
//Example 2:
//
//Input: area = 37
//Output: [37,1]
//Example 3:
//
//Input: area = 122122
//Output: [427,286]

//Test cases:

if constructRectangle(4) == [2, 2] { print("Correct!") } else { print("Error! Expected: \([2, 2])") }
if constructRectangle(37) == [37, 1] { print("Correct!") } else { print("Error! Expected: \([37, 1])") }
if constructRectangle(122122) == [427,286] { print("Correct!") } else { print("Error! Expected: \([427,286])") }

