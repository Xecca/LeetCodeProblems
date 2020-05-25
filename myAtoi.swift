//8. String to Integer (atoi)
// https://leetcode.com/problems/string-to-integer-atoi/

func myAtoi(_ str: String) -> Int {
    if str == "" {
        return 0
    }
    var numberStr = ""
    var sign = 1
    var i = 0
    
    let newString = str
    let lengthStr = newString.count
    
    if lengthStr != 1 {
        for curInd in newString {
            if curInd == " " || curInd == "\0" || curInd == "\t" || curInd == "\n" || curInd == "\r"  {
                print(curInd)
                i += 1
            } else {
                break
            }
        }
        if i < lengthStr - 1 {
            if newString[newString.index(newString.startIndex, offsetBy: i)] == "-" || newString[newString.index(newString.startIndex, offsetBy: i)] == "+" {
                if newString[newString.index(newString.startIndex, offsetBy: i)] == "-" {
                    sign = -1
                }
                i += 1
            }
            
            while newString[newString.index(newString.startIndex, offsetBy: i)] >= "0" && newString[newString.index(newString.startIndex, offsetBy: i)] <= "9" {
                numberStr.append(newString[newString.index(newString.startIndex, offsetBy: i)])
                if i < lengthStr - 1 {
                    i += 1
                } else {
                    break
                }
            }
        }
    } else {
        numberStr.append(newString[newString.index(newString.startIndex, offsetBy: 0)])
    }
    print(numberStr)
    
    let number = Int(numberStr) ?? 0
    print(number)
    if (number < Int32.min || number > Int32.max) || (numberStr.count >= 19 && number == 0) {
        if sign == -1 {
            return Int(Int32.min)
        } else {
            return Int(Int32.max)
        }
    }
    return Int(number) * sign
}

let num1 = "    0000000000000   "
let num2 = "  0000000000012345678"
let num3 = "9223372036854775808"

print(myAtoi(num2))
