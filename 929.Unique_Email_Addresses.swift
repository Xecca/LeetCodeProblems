//929. Unique Email Addresses
//Сomplexity: Easy
//https://leetcode.com/problems/unique-email-addresses/
//----------------------------------------------------
//Runtime: 184 ms, faster than 57.40% of Swift online submissions for Unique Email Addresses.
//Memory Usage: 21.5 MB, less than 56.08% of Swift online submissions for Unique Email Addresses.
//----------------------------------------------------
//Every email consists of a local name and a domain name, separated by the @ sign.
//
//For example, in alice@leetcode.com, alice is the local name, and leetcode.com is the domain name.
//
//Besides lowercase letters, these emails may contain '.'s or '+'s.
//
//If you add periods ('.') between some characters in the local name part of an email address, mail sent there will be forwarded to the same address without dots in the local name.  For example, "alice.z@leetcode.com" and "alicez@leetcode.com" forward to the same email address.  (Note that this rule does not apply for domain names.)
//
//If you add a plus ('+') in the local name, everything after the first plus sign will be ignored. This allows certain emails to be filtered, for example m.y+name@email.com will be forwarded to my@email.com.  (Again, this rule does not apply for domain names.)
//
//It is possible to use both of these rules at the same time.
//
//Given a list of emails, we send one email to each address in the list.  How many different addresses actually receive mails?
//----------------------------------------------------

func numUniqueEmails(_ emails: [String]) -> Int {
    var newEmails = emails
    var i = 0
    var j = 0
    
    while i < newEmails.count {
        while j < newEmails[i].count && newEmails[i][String.Index(encodedOffset: j)] != "@" {
            if newEmails[i][String.Index(encodedOffset: j)] == "." {
                newEmails[i].remove(at: String.Index(encodedOffset: j))
            } else {
                j += 1
            }
            print(newEmails[i][String.Index(encodedOffset: j)])
            if newEmails[i][String.Index(encodedOffset: j)] == "+" {
                while newEmails[i][String.Index(encodedOffset: j)] != "@" {
                    newEmails[i].remove(at: String.Index(encodedOffset: j))
                }
                break
            }
        }
        j = 0
        i += 1
    }
    
    
    print(newEmails)
    
    return (Set(newEmails)).count
}

//Input:
let emails = ["test.email+alex@leetcode.com", "test.email@leetcode.com"]
//Output: 2
//Explanation: "testemail@leetcode.com" and "testemail@lee.tcode.com" actually receive mails

numUniqueEmails(emails)

