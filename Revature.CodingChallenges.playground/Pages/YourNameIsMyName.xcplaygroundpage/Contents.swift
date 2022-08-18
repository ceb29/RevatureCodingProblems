import UIKit

//t = number of cases
//test if string A is substring of B,  ["A B", "A B"]

func yourNameisMine(_ t: Int, arr: [String]){
    for str in arr{
        let strSplit = str.components(separatedBy: " ")
        isSubsequence(strA: strSplit[0], strB: strSplit[1])
    }
}

func isSubsequence(strA: String, strB: String){
    let arrA = Array(strA)
    let arrB = Array(strB)
    if arrA.count > arrB.count{
        print("no")
        return
    }
    var j = 0
    for i in 0..<arrB.count{
        if arrA[j] == arrB[i]{
            j += 1
            if j == arrA.count{
                print("yes")
                return
            }
        }
    }
    print("no")
}


let t = 3
let cases = ["john johanna", "ira ira", "kayla, jayla"]
yourNameisMine(t, arr: cases)
