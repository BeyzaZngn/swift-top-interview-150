import UIKit

func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    if n == 0 {
        return
    }
    
    var p1 = m - 1
    var p2 = n - 1
    var p = m + n - 1
    
    while p2 >= 0 {
        
        if p1 >= 0 && nums1[p1] > nums2[p2] {
            
            nums1[p] = nums1[p1]
            p1 -= 1
            
        } else {
            
            nums1[p] = nums2[p2]
            p2 -= 1
        }
        
        p -= 1
    }
    
}


var nums1_ex1 = [1, 2, 3, 0, 0, 0]
let nums2_ex1 = [2, 5, 6]
let m1 = 3
let n1 = 3

merge(&nums1_ex1, m1, nums2_ex1, n1)

print("Sonuç: \(nums1_ex1)")
// Sonuç: [1, 2, 2, 3, 5, 6]
