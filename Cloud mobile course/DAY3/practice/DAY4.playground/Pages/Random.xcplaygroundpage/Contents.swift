//: [Previous](@previous)

import Foundation

//45로 나누면 0 ~ 44 근데 원하는게 1 ~ 45 니까 45 + 1을 해줘야 함

//var lotto : Array<Int> = []
//lotto = arc4random()
//
//print(lotto)

func lotto()->[Int]{
    var nums = [Int]()
    for _ in 1...6{
        nums.append(Int(arc4random() % 45 + 1))
    }
    return nums
}

func lotto2()->[Int]            //결과를 array로
{
    var result:[Int] = []
    for _ in 0...5 {
        result.append(Int(arc4random() % 45 + 1))
    }
    return result.sorted()
}
print(lotto())

func lotto2()->[Int]
{
    var result:Set<Int> = []    //결과를 set으로
    while true {
        result.insert(Int(arc4random() % 45 + 1))
        if result.count == 6 {
            break
        }
    }
    return result.sorted()
}



//: [Next](@next)
