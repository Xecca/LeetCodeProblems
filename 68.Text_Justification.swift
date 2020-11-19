//
//  LeetCodeProblems
//
//  Created by Xecca

//68. Text Justification
//Difficult: Hard
//https://leetcode.com/problems/text-justification/

//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Text Justification.
//Memory Usage: 14.5 MB, less than 68.57% of Swift online submissions for Text Justification.

//Given an array of words and a width maxWidth, format the text such that each line has exactly maxWidth characters and is fully (left and right) justified.
//
//You should pack your words in a greedy approach; that is, pack as many words as you can in each line. Pad extra spaces ' ' when necessary so that each line has exactly maxWidth characters.
//
//Extra spaces between words should be distributed as evenly as possible. If the number of spaces on a line do not divide evenly between words, the empty slots on the left will be assigned more spaces than the slots on the right.
//
//For the last line of text, it should be left justified and no extra space is inserted between words.
//
//Note:
//
//A word is defined as a character sequence consisting of non-space characters only.
//Each word's length is guaranteed to be greater than 0 and not exceed maxWidth.
//The input array words contains at least one word.
//
//Constraints:
//
//1 <= words.length <= 300
//1 <= words[i].length <= 20
//words[i] consists of only English letters and symbols.
//1 <= maxWidth <= 100
//words[i].length <= maxWidth

func fullJustify(_ words: [String], _ maxWidth: Int) -> [String] {
    var wordsInString = 0
    var charsCount = 0
    var startIndex = 0
    var endIndex = 0
    var tempString = ""
    var result = [String]()
    
    while startIndex < words.count {
        endIndex = startIndex
        while endIndex < words.count {
            if charsCount + words[endIndex].count + (endIndex - startIndex) <= maxWidth {
                charsCount += words[endIndex].count
                wordsInString += 1
                if endIndex == words.count - 1 {
                    var i = 0
                    while i < wordsInString {
                        tempString.append(words[startIndex])
                        if tempString.count < maxWidth {
                            tempString.append(" ")
                        }
                        i += 1
                        startIndex += 1
                    }
                    while tempString.count < maxWidth {
                        tempString.append(" ")
                    }
                }
            } else {
                if wordsInString == 1 {
                    tempString.append(words[startIndex])
                    while tempString.count < maxWidth {
                        tempString.append(" ")
                    }
                } else {
                    var j = 0
                    var i = 0
                    let spaces = (maxWidth - charsCount) / (wordsInString - 1)
                    var modulo = (maxWidth - charsCount) % (wordsInString - 1)
                    while j < wordsInString {
                        tempString.append(words[startIndex])
                        while i < spaces && startIndex < endIndex - 1 {
                            tempString.append(" ")
                            i += 1
                        }
                        i = 0
                        if modulo > 0 {
                            tempString.append(" ")
                            modulo -= 1
                        }
                        startIndex += 1
                        j += 1
                    }
                }
                charsCount = 0
                wordsInString = 0
                break
            }
            endIndex += 1
        }
        result.append(tempString)
        tempString = ""
        startIndex = endIndex
    }
    
    return result
}

//Test cases:

if fullJustify(["This", "is", "an", "example", "of", "text", "justification."], 16) == ["This    is    an", "example  of text", "justification.  "] { print("Correct!") } else { print("Error!") }
if fullJustify(["What","must","be","acknowledgment","shall","be"], 16) == ["What   must   be", "acknowledgment  ", "shall be        "] { print("Correct!") } else { print("Error!") }
if fullJustify(["Science","is","what","we","understand","well","enough","to","explain","to","a","computer.","Art","is","everything","else","we","do"], 20) == ["Science  is  what we", "understand      well", "enough to explain to", "a  computer.  Art is", "everything  else  we", "do                  "] { print("Correct!") } else { print("Error!") }

