// Solved by Xecca

//1002. Find Common Characters
//Difficult: Easy
//https://leetcode.com/problems/find-common-characters/

//Runtime: 52 ms, faster than 87.21% of Swift online submissions for Find Common Characters.
//Memory Usage: 14.1 MB, less than 98.84% of Swift online submissions for Find Common Characters.

//
    //Given an array A of strings made only from lowercase letters, return a list of all characters that show up in all strings within the list (including duplicates).  For example, if a character occurs 3 times in all strings but not 4 times, you need to include that character three times in the final answer.
    //
    //You may return the answer in any order.

    //Note:
    //
    //1 <= A.length <= 100
    //1 <= A[i].length <= 100
    //A[i][j] is a lowercase letter
//

func commonChars(_ A: [String]) -> [String] {
    
    var comChars = [String]()
    var countLetters = 0
    var lettersInFirstWord: [Character : Int] = [:]
    var i = 0
    
    for letter in A[i] {
        let countLetters = lettersInFirstWord[letter] ?? 0
        lettersInFirstWord.updateValue(countLetters + 1, forKey: letter)
    }
    i += 1
    
    while i < A.count {
        var lettersInCurrentWord: [Character : Int] = [:]
        for letter in A[i] {
            countLetters = lettersInCurrentWord[letter] ?? 0
            lettersInCurrentWord.updateValue(countLetters + 1, forKey: letter)
        }
        
        for letter in lettersInFirstWord.keys {
            if lettersInFirstWord[letter] ?? 0 > lettersInCurrentWord[letter] ?? 0 {
                lettersInFirstWord.updateValue(lettersInCurrentWord[letter] ?? 0, forKey: letter)
            }
        }
        i += 1
    }
    
    for letter in lettersInFirstWord.keys {
        i = 0
        while i < lettersInFirstWord[letter] ?? 0 {
            comChars.append(String(letter))
            i += 1
        }
    }
    
    return comChars
}

//Example 1:
//
//Input: ["bella","label","roller"]
//Output: ["e","l","l"]
//Example 2:
//
//Input: ["cool","lock","cook"]
//Output: ["c","o"]

//Test cases:

if commonChars(["bella","label","roller"]) == ["e","l","l"] { print("Correct!") } else { print("Error! Expected: \(["e","l","l"])") }
if commonChars(["cool","lock","cook"]) == ["e","l","l"] { print("Correct!") } else { print("Error! Expected: \(["c","o"])") }

