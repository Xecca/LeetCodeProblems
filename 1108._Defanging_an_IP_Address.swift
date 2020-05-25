//1108. Defanging an IP Address
//https://leetcode.com/problems/defanging-an-ip-address/
//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Defanging an IP Address.
//Memory Usage: 20.4 MB, less than 100.00% of Swift online submissions for Defanging an IP Address.
//----------------------------------------------------

func defangIPaddr(_ address: String) -> String {
    var newAdress = ""

    for num in address {
        if num != "." {
            newAdress.append(num)
        } else {
            newAdress.append("[.]")
        }
    }
    return newAdress
}

let address = "255.100.50.0"
//Input: address = "255.100.50.0"
let output = "255[.]100[.]50[.]0"

if defangIPaddr(address) == output {
    print("Succes!")
} else {
    print("Error!")
}

