//1025. Divisor Game
//Сomplexity: Easy
//https://leetcode.com/problems/divisor-game/
//----------------------------------------------------
//Runtime: 4 ms, faster than 89.83% of Swift online submissions for Divisor Game.
//Memory Usage: 20.4 MB, less than 100.00% of Swift online submissions for Divisor Game.
//----------------------------------------------------

//Alice and Bob take turns playing a game, with Alice starting first.
//
//Initially, there is a number N on the chalkboard.  On each player's turn, that player makes a move consisting of:
//
//Choosing any x with 0 < x < N and N % x == 0.
//Replacing the number N on the chalkboard with N - x.
//Also, if a player cannot make a move, they lose the game.
//
//Return True if and only if Alice wins the game, assuming both players play optimally.

func divisorGame(_ N: Int) -> Bool {
    var newN = N
    var x = 1
    var turn = 0
    
    while x > 0 && newN > x {
        x = 1
        if canMove(newN, &x) == true {
            turn += 1
            newN -= x
        } else {
            break
        }
        print(turn)
    }
    if turn % 2 == 0 {
        return false
    } else {
        return true
    }

}

func canMove(_ N: Int, _ x: inout Int) -> Bool {
    while x < N {
        if N % x == 0 && x > 0 && N > x {
            return true
        } else {
            x += 1
        }
    }
    
    return false
}

let N = 3
divisorGame(N)

//Input: 2
//Output: true
//Explanation: Alice chooses 1, and Bob has no more moves.




























////-----------------------------------------------------------------------------------------------------
////821. Shortest Distance to a Character
////Сomplexity: Easy
////https://leetcode.com/problems/shortest-distance-to-a-character/
////----------------------------------------------------
////Runtime: 8 ms, faster than 100.00% of Swift online submissions for Available Captures for Rook.
////Memory Usage: 21.1 MB, less than 77.78% of Swift online submissions for Available Captures for Rook.
////----------------------------------------------------
////Given a string S and a character C, return an array of integers representing the shortest distance from the character C in the string.
////----------------------------------------------------
//
//func shortestToChar(_ S: String, _ C: Character) -> [Int] {
//    let length = S.count
//    var finalMatch = [Int](repeating: Int.max, count: length)
//    finalMatch = findChar(S, C, finalMatch)
//    var i = 0
//
//    while i < length {
//        var diff = [Int]()
//        for ind in finalMatch {
//            diff.append(<#T##newElement: Int##Int#>)
//        }
//    }
//
//
//    print(finalMatch)
//
//    return [0]
//}
//
//func findChar(_ str: String, _ char: Character, _ finalMatch: [Int]) -> [Int] {
//    var i = 0
//    var charPosition = finalMatch
//
//    for letter in str {
//        if letter == char {
//            charPosition[i] = 0
//        }
//        i += 1
//    }
//
//    return charPosition
//}
//
////Input:
//let S = "loveleetcode", C: Character = "e"
////Output: [3, 2, 1, 0, 1, 0, 0, 1, 2, 2, 1, 0]
//
//shortestToChar(S, C)

