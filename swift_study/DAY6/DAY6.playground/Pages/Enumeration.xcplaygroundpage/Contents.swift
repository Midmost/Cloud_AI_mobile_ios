//: [Previous](@previous)

import Foundation

enum Direction {
    case north
    case south
}

var directionToHead = Direction.north   // type이 우리가 지정한 대로 Direction이 된거임
print(directionToHead)

directionToHead = .south     //따라서 추론이 가능하기 때문에 생략 가능

switch directionToHead {
case .north : print("go to north")
case .south : print("go to south")
}



//: [Next](@next)
