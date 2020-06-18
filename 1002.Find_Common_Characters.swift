//1002. Find Common Characters
//Сomplexity: Easy
//https://leetcode.com/problems/find-common-characters/
//----------------------------------------------------
//Runtime: 1696 ms, faster than 5.13% of Swift online submissions for Find Common Characters.
//Memory Usage: 20.8 MB, less than 89.47% of Swift online submissions for Find Common Characters.
//----------------------------------------------------
//Given an array A of strings made only from lowercase letters, return a list of all characters that show up in all strings within the list (including duplicates).  For example, if a character occurs 3 times in all strings but not 4 times, you need to include that character three times in the final answer.
//
//You may return the answer in any order.
//----------------------------------------------------

// more faster alternative variant:
//func commonChars(_ A: [String]) -> [String] {
//    var chars = [Int](repeating: Int.max, count: 26)
//    var ret = [String]()
//    for word in A {
//        var _chars = [Int](repeating: 0, count: 26)
//        for c in word {
//            _chars[Int(c.asciiValue!) - 97] += 1
//        }
//        for i in 0..<26 {
//            chars[i] = min(chars[i], _chars[i])
//            print(chars[i])
//            print(chars)
//            print(_chars)
//        }
//    }
//
//    for i in 0..<26 {
//        for _ in 0..<chars[i] {
//            ret.append(String(Character(Unicode.Scalar(i + 97)!)))
//        }
//    }
//
//    return ret
//}

func commonChars(_ A: [String]) -> [String] {
    var i = 1
    var newArrStr = A
    var countChars = 0
    var j = 0
    var finalStr = [String]()


    while newArrStr[0].count > 0 {
        countChars = 1
        i = 1
        j = 0
        let currentChar = newArrStr[0][String.Index(utf16Offset: 0, in: newArrStr[0])]

        while i < newArrStr.count {
            while j < newArrStr[i].count {
                if currentChar == newArrStr[i][String.Index(utf16Offset: j, in: newArrStr[i])] {
                    countChars += 1
                    newArrStr[i].remove(at: String.Index(utf16Offset: j, in: newArrStr[i]))
                    break
                }
                j += 1
            }
            print(newArrStr)
            j = 0
            i += 1
        }
        if countChars == newArrStr.count {
            finalStr.append(String(currentChar))
        }
        newArrStr[0].remove(at: String.Index(utf16Offset: 0, in: newArrStr[0]))
    }

    return finalStr
}

//Input:
let str = ["bella","label","roller"]
//Output: ["e","l","l"]

commonChars(str)

