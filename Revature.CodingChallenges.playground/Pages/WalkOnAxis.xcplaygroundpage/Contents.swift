//: [Previous](@previous)

import Foundation
//start at 0
//turn off right most
//turn off left most
//count steps
//input 2, [1, 2]
//result = 2, 5

func walkOnAxis(_ t : Int, _ arrN: [Int]){
    for i in 0..<t{
        countSteps(arrN[i])
    }
}

func countSteps(_ n: Int){
    var left = 0
    var right = n
    var prev = 0
    var steps = 0
    for i in 0...n{
        if i % 2 == 0{
            steps += right - prev
            prev = right
            right -= 1
        }
        else{
            steps += prev - left
            prev = left
            left += 1
        }
    }
    print(steps)
}

walkOnAxis(4, [1, 2, 3, 4])
//: [Next](@next)
 
