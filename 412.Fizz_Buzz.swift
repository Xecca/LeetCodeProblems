//412. Fizz Buzz
//Сomplexity: Easy
//https://leetcode.com/problems/fizz-buzz/

//----------------------------------------------------
//Runtime: 20 ms, faster than 98.70% of Swift online submissions for Fizz Buzz.
//Memory Usage: 20.8 MB, less than 91.14% of Swift online submissions for Fizz Buzz.
//----------------------------------------------------

//Write a program that outputs the string representation of numbers from 1 to n.
//
//But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.

//----------------------------------------------------

func fizzBuzz(_ n: Int) -> [String] {
    var i = 1
    var finalStr = [String]()
    
    while i <= n {
        if i % 3 == 0 && i % 5 == 0 {
            finalStr.append("FizzBuzz")
        } else if i % 3 == 0 {
            finalStr.append("Fizz")
        } else if i % 5 == 0 {
            finalStr.append("Buzz")
        } else {
            finalStr.append(String(i))
        }
        i += 1
    }
    
    return finalStr
}

//
let n = 15
//
//Return:
//[
//    "1",
//    "2",
//    "Fizz",
//    "4",
//    "Buzz",
//    "Fizz",
//    "7",
//    "8",
//    "Fizz",
//    "Buzz",
//    "11",
//    "Fizz",
//    "13",
//    "14",
//    "FizzBuzz"
//]

fizzBuzz(n)

