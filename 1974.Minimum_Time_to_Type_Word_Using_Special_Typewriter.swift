// Solved by Xecca

//1974. Minimum Time to Type Word Using Special Typewriter
//Difficult: Easy
//https://leetcode.com/problems/minimum-time-to-type-word-using-special-typewriter/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Minimum Time to Type Word Using Special Typewriter.
//Memory Usage: 14.1 MB, less than 72.22% of Swift online submissions for Minimum Time to Type Word Using Special Typewriter.

//

//There is a special typewriter with lowercase English letters 'a' to 'z' arranged in a circle with a pointer. A character can only be typed if the pointer is pointing to that character. The pointer is initially pointing to the character 'a'.
//
//Each second, you may perform one of the following operations:
//
//Move the pointer one character counterclockwise or clockwise.
//Type the character the pointer is currently on.
//Given a string word, return the minimum number of seconds to type out the characters in word.

//Constraints:
//
//1 <= word.length <= 100
//word consists of lowercase English letters.

//

func minTimeToType(_ word: String) -> Int {
    var lastPosition = 0
    var seconds = 0
    
    for char in word {
        let charAsciiNum = Int(char.asciiValue!) - 97
        if abs(lastPosition - charAsciiNum) > 13 {
            seconds += min(lastPosition, charAsciiNum) + (26 - max(lastPosition, charAsciiNum))
        } else {
            seconds += abs(lastPosition - charAsciiNum)
        }
        seconds += 1
        lastPosition = charAsciiNum
    }

    return seconds
}

//Example 1:
//
//Input: word = "abc"
//Output: 5
//Explanation:
//The characters are printed as follows:
//- Type the character 'a' in 1 second since the pointer is initially on 'a'.
//- Move the pointer clockwise to 'b' in 1 second.
//- Type the character 'b' in 1 second.
//- Move the pointer clockwise to 'c' in 1 second.
//- Type the character 'c' in 1 second.
//Example 2:
//
//Input: word = "bza"
//Output: 7
//Explanation:
//The characters are printed as follows:
//- Move the pointer clockwise to 'b' in 1 second.
//- Type the character 'b' in 1 second.
//- Move the pointer counterclockwise to 'z' in 2 seconds.
//- Type the character 'z' in 1 second.
//- Move the pointer clockwise to 'a' in 1 second.
//- Type the character 'a' in 1 second.
//Example 3:
//
//Input: word = "zjpc"
//Output: 34
//Explanation:
//The characters are printed as follows:
//- Move the pointer counterclockwise to 'z' in 1 second.
//- Type the character 'z' in 1 second.
//- Move the pointer clockwise to 'j' in 10 seconds.
//- Type the character 'j' in 1 second.
//- Move the pointer clockwise to 'p' in 6 seconds.
//- Type the character 'p' in 1 second.
//- Move the pointer counterclockwise to 'c' in 13 seconds.
//- Type the character 'c' in 1 second.

//Test cases:

if minTimeToType("zjpc") == 34 { print("Correct!") } else { print("Error! Expected: \(34)") }

