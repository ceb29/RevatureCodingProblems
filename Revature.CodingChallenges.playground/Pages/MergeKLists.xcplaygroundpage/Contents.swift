//: [Previous](@previous)

import Foundation

//input [[1,4,5],[1,3,4],[2,6]]
//output [1,1,2,3,4,4,5,6]

class ListNode{
    var val: Int
    var next: ListNode?
    
    init(_ val: Int){
        self.val = val
        self.next = nil
    }
}

func printList(_ head: ListNode?){
    var current = head
    while current != nil{
        print(current!.val)
        current = current?.next
    }
}

func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
    var arr : [Int] = []

    for list in lists{
        var currentList = list
        while currentList != nil{
            arr.append(currentList!.val)
            currentList = currentList?.next
        }
    }
    
    if arr.count > 0{
        arr = arr.sorted {$0 < $1}
        let head : ListNode? = ListNode(arr[0])
        var current = head

        for i in 1..<arr.count{
            let node : ListNode? = ListNode(arr[i])
            current?.next = node
            current = current?.next
        }

        return head
    }
    return nil
}

let head1 : ListNode? = ListNode(1)
head1?.next = ListNode(4)
head1?.next?.next = ListNode(5)

let head2: ListNode? = ListNode(1)
head2?.next = ListNode(3)
head2?.next?.next = ListNode(4)

let head3: ListNode? = ListNode(2)
head3?.next = ListNode(6)

var arrLists: [ListNode?] = [head1, head2, head3]
var mergedSortedHead = mergeKLists(arrLists)
printList(mergedSortedHead)
//: [Next](@next)
