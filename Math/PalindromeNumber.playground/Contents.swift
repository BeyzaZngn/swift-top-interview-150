import UIKit

func isPalindrome (_ x: Int) -> Bool {
    if x < 0 {return false}
    if x != 0 && x % 10 == 0 {return false}
    
    var num = x
    var reversedHalf = 0
    
    while num > reversedHalf {
        let lastDigit = num % 10
        reversedHalf = reversedHalf * 10 + lastDigit
        num /= 10
    }
    
    return num == reversedHalf || num == reversedHalf / 10
}
isPalindrome(121)
