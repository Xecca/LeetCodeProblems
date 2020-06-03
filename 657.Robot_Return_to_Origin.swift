//657. Robot Return to Origin
//https://leetcode.com/problems/robot-return-to-origin/
//Runtime: 28 ms, faster than 93.10% of Swift online submissions for Robot Return to Origin.
//Memory Usage: 21 MB, less than 100.00% of Swift online submissions for Robot Return to Origin.
////----------------------------------------------------
//In a array A of size 2N, there are N+1 unique elements, and exactly one of these elements is repeated N times.
//
//Return the element repeated N times.
//----------------------------------------------------

func judgeCircle(_ moves: String) -> Bool {
    var position = [0, 0]

    for turn in moves {
        if Character(extendedGraphemeClusterLiteral: turn) == "L" {
            position[0] -= 1
        } else if Character(extendedGraphemeClusterLiteral: turn) == "R" {
            position[0] += 1
        } else if Character(extendedGraphemeClusterLiteral: turn) == "U" {
            position[1] += 1
        } else {
            position[1] -= 1
        }
    }
    if position == [0, 0] {
        return true
    }

    return false
}

//Input:
let moves = "UD"
//Output: true
//Explanation: The robot moves up once, and then down once. All moves have the same magnitude, so it ended up at the origin where it started. Therefore, we return true.

judgeCircle(moves)

