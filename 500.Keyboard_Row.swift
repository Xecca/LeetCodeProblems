//500. Keyboard Row
//Сomplexity: Easy
//https://leetcode.com/problems/keyboard-row/
//----------------------------------------------------
//Runtime: 8 ms, faster than 67.44% of Swift online submissions for Keyboard Row.
//Memory Usage: 20.8 MB, less than 100.00% of Swift online submissions for Keyboard Row.
//----------------------------------------------------

//Given a List of words, return the words that can be typed using letters of alphabet on only one row's of American keyboard like the image below.

//----------------------------------------------------

func findWords(_ words: [String]) -> [String] {
    let keyboard = [
        ["Q", "q", "W", "w", "E", "e", "R", "r", "T", "t", "Y", "y", "U", "u", "I", "i", "O", "o", "P", "p"],
        ["A", "a", "S", "s", "D", "d", "F", "f", "G", "g", "H", "h", "J", "j", "K", "k", "L", "l"],
        ["Z", "z", "X", "x", "C", "c", "V", "v", "B", "b", "N", "n", "M", "m"]
    ]
    var stringArr = [String]()
    
    for word in words {
        let newWord = checkRowInString(word, keyboard)
        if newWord != "" {
            stringArr.append(newWord)
        }
    }
    
    return stringArr
}

func checkRowInString(_ word: String, _ keyboard: [[String]]) -> String {
    var row = 0
    
    while row < 3 {
        for char in word {
            if keyboard[row].contains(where: { $0 == String(char) }) == true {
                if checkWord(word, keyboard, row) == true {
                    return word
                }
            }
            break
        }
        row += 1
    }
    
    return ""
}

func checkWord(_ word: String, _ keyboard: [[String]], _ row: Int) -> Bool {

    for char in word {
        if keyboard[row].contains(where: { $0 == String(char) }) == false {
            return false
        }
    }

    return true
}
//Example:
//
//Input:
let words = ["Hello", "Alaska", "Dad", "Peace"]
//Output: ["Alaska", "Dad"]

findWords(words)

