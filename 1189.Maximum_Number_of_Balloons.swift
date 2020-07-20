//1189. Maximum Number of Balloons
//Сomplexity: Easy
//https://leetcode.com/problems/maximum-number-of-balloons/

//----------------------------------------------------
//Runtime: 8 ms, faster than 100.00% of Swift online submissions for Maximum Number of Balloons.
//Memory Usage: 22 MB, less than 28.57% of Swift online submissions for Maximum Number of Balloons.
//----------------------------------------------------

//Given a string text, you want to use the characters of text to form as many instances of the word "balloon" as possible.
//
//You can use each character in text at most once. Return the maximum number of instances that can be formed.

//----------------------------------------------------

func maxNumberOfBalloons(_ text: String) -> Int {
    var countChars = ["b" : 0,
                      "a" : 0,
                      "l" : 0,
                      "o" : 0,
                      "n" : 0]
    var l = 0
    var o = 0
    
    for char in text {
        if char == "b" || char == "a" || char == "n" {
            let currentVal = countChars[String(char)]!
            countChars.updateValue(currentVal + 1, forKey: String(char))
        } else if char == "l"  {
            l += 1
            if l == 2 {
                let currentVal = countChars[String(char)]!
                countChars.updateValue(currentVal + 1, forKey: String(char))
                l = 0
            }
        } else if char == "o" {
            o += 1
            if o == 2 {
                let currentVal = countChars[String(char)]!
                countChars.updateValue(currentVal + 1, forKey: String(char))
                o = 0
            }
        }
    }
    
    print(countChars)
    
    return countChars.values.min()!
}

//
//Input:
let text = "loonbalxballpoon"
//Output: 2

maxNumberOfBalloons(text)

