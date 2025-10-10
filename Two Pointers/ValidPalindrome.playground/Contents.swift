import UIKit

func isPalindrome(_ s: String) -> Bool {
    
    var word : String = ""
    for i in s {
        if i.isLetter || i.isNumber {
            word += String(i).lowercased()
        }
    }
    return word == String(word.reversed())
}
print(isPalindrome("A man, a plan, a canal: Panama"))

// İkinci Yol

 func isPalindromeSecond(_ s: String) -> Bool {
     
     let filtered = s.lowercased().filter{$0.isLetter || $0.isNumber}
     return filtered == String(filtered.reversed())
 
 }
 print(isPalindromeSecond("A man, a plan, a canal: Panama"))
