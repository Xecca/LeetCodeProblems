//1078. Occurrences After Bigram
//Сomplexity: Easy
//https://leetcode.com/problems/occurrences-after-bigram/
//----------------------------------------------------
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Occurrences After Bigram.
//Memory Usage: 20.8 MB, less than 100.00% of Swift online submissions for Occurrences After Bigram.
//----------------------------------------------------

//Given words first and second, consider occurrences in some text of the form "first second third", where second comes immediately after first, and third comes immediately after second.
//
//For each such occurrence, add "third" to the answer, and return the answer.

//----------------------------------------------------

func findOcurrences(_ text: String, _ first: String, _ second: String) -> [String] {
    let splitedText = text.split(separator: " ")
    var arrWithThirdWords = [String]()
    var i = 0
    let length = splitedText.count
    
    while i < length {
        if splitedText[i] == first {
            if i + 1 < length && splitedText[i + 1] == second {
                if i + 2 < length {
                    arrWithThirdWords.append(String(splitedText[i + 2]))
                }
            }
        }
        i += 1
    }
    
    //    print(splitedText)
    //    print(arrWithThirdWords)
    
    return arrWithThirdWords
}

//Input:
let text = "alice is a good girl she is a good student", first = "a", second = "good"
//Output: ["girl","student"]

findOcurrences(text, first, second)

