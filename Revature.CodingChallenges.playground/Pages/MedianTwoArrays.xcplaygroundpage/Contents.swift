//: [Previous](@previous)

import Foundation

//given [1,2], [3,4]
//output 2.5
//

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    var arr = nums1 + nums2
    arr = arr.sorted {$0 < $1}
    if arr.count % 2 == 0{
        var left : Double = Double(arr[(arr.count / 2) - 1])
        var right : Double = Double(arr[arr.count / 2])
        return (left + right) / 2
    }
    else{
        return Double(arr[arr.count / 2])
    }
}

let nums1 = [1, 2]
let nums2 = [3, 4]

print(findMedianSortedArrays(nums1, nums2))
//: [Next](@next)
