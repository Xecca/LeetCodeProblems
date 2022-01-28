// Solved by Xecca

import Foundation

//211. Design Add and Search Words Data Structure
//Difficult: Medium
//https://leetcode.com/problems/design-add-and-search-words-data-structure/

//Runtime: 4496 ms, faster than 5.55% of Swift online submissions for Design Add and Search Words Data Structure.
//Memory Usage: 17.1 MB, less than 98.61% of Swift online submissions for Design Add and Search Words Data Structure.

//

//Design a data structure that supports adding new words and finding if a string matches any previously added string.
//
//Implement the WordDictionary class:
//
//WordDictionary() Initializes the object.
//void addWord(word) Adds word to the data structure, it can be matched later.
//bool search(word) Returns true if there is any string in the data structure that matches word or false otherwise. word may contain dots '.' where dots can be matched with any letter.

//
//Constraints:
//
//1 <= word.length <= 500
//word in addWord consists lower-case English letters.
//word in search consist of  '.' or lower-case English letters.
//At most 50000 calls will be made to addWord and search.

//

class WordDictionary {
    var strArr: [String] = []
    
    init() {
    }
    
    func addWord(_ word: String) {
        self.strArr.append(word)
    }
    
    func search(_ word: String) -> Bool {
        var i = 0
        let length = word.count
        
        for arrWord in strArr {
            let arrWordLength = arrWord.count
            
            if arrWordLength == length {
                i = 0
                while i < arrWordLength {
                    if arrWord[String.Index(utf16Offset: i, in: arrWord)] != word[String.Index(utf16Offset: i, in: word)] && word[String.Index(utf16Offset: i, in: word)] != "." {
                        break
                    }
                    if i == length - 1 {
                        return true
                    }
                    i += 1
                }
            }
        }
        
        return false
    }
}

/**
 * Your WordDictionary object will be instantiated and called as such:
 * let obj = WordDictionary()
 * obj.addWord(word)
 * let ret_2: Bool = obj.search(word)
 **/

// Other solution (not mine):

//class WordDictionary {
//    var dict: [Int: Set<String>] = [:]
//
//    init() {
//    }
//
//    func addWord(_ word: String) {
//        if dict[word.count] == nil {
//            dict[word.count] = []
//        }
//        dict[word.count]!.insert(word)
//    }
//
//    func search(_ word: String) -> Bool {
//        guard let words = dict[word.count] else { return false }
//
//        for wordInDict in words {
//            var i = wordInDict.startIndex
//            var j = word.startIndex
//            var found = true
//
//            while i < wordInDict.endIndex {
//                if word[j] != "." && word[j] != wordInDict[i] {
//                    found = false
//                    break
//                }
//                i = wordInDict.index(after: i)
//                j = word.index(after: j)
//            }
//            if found {
//                return true
//            }
//        }
//
//        return false
//    }
//}

//Example:
//
//Input
//["WordDictionary","addWord","addWord","addWord","search","search","search","search"]
//[[],["bad"],["dad"],["mad"],["pad"],["bad"],[".ad"],["b.."]]
//Output
//[null,null,null,null,false,true,true,true]
//
//Explanation
//WordDictionary wordDictionary = new WordDictionary();
//wordDictionary.addWord("bad");
//wordDictionary.addWord("dad");
//wordDictionary.addWord("mad");
//wordDictionary.search("pad"); // return False
//wordDictionary.search("bad"); // return True
//wordDictionary.search(".ad"); // return True
//wordDictionary.search("b.."); // return True

//Test cases:

//let input = "FlaG"
//let answer = [0,1,1,2,3,4]

//if getArrElements([2,1,4], [1,0,3]) == answer { print("Correct!") } else { print("Error! Expexted: \(answer)") }

