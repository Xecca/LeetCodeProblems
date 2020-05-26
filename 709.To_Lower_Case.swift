//709. To Lower Case
//hhttps://leetcode.com/problems/to-lower-case/
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for To Lower Case.
//Memory Usage: 20.7 MB, less than 20.00% of Swift online submissions for To Lower Case.
//----------------------------------------------------
//Implement function ToLowerCase() that has a string parameter str, and returns the same string in lowercase.
//----------------------------------------------------

func toLowerCase(_ str: String) -> String {
    return str.lowercased()
}

//version 2
//extension StringProtocol {
//    var asciiValues: [UInt8] { compactMap(\.asciiValue) }
//}
//
//func toLowerCase(_ str: String) -> String {
//    let newStr = str.asciiValues  // [97, 98, 99]
//    var finalStr = ""
//    var i = 0
//
//    while i < str.count {
//        if newStr[i] >= 65 && newStr[i] <= 90  {
//            finalStr.append(Character(UnicodeScalar(newStr[i] + 32)))
//        } else {
//            finalStr.append(Character(UnicodeScalar(newStr[i])))
//        }
//        i += 1
//    }
//    return finalStr
//}

//Input:
let str = "Hello!"
//Output: "hello!"

toLowerCase(str)



