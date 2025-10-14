import UIKit

func isSubsequence(_ s: String, _ t: String) -> Bool {
    var index = 0
    var changedS = Array(s)
    for i in t {
        if index < changedS.count && i == changedS[index] {
            index += 1
        }
    }
    return index == changedS.count
    
}
isSubsequence("abc", "axgbkcd")
