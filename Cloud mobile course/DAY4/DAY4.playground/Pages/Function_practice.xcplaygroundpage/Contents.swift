//: [Previous](@previous)

import Foundation


func calcGrade (score: Int)->String    // 매개변수로 grade가 X
{
    var result = ""
    
    switch score {
    
    case 95...100:
        result = "A"
    case 0...94:             // 0...<95 라고 해도 같은 뜻
        result = "you are not A"
    default:
        print("Invalid number")
    }
    return result
}

//
//func calcGrade2 (score: Int) -> String
//{
//    let score1 = score/10       // 정수끼리 연산하면 정수만 남옴
//    var result = ""
//    switch score1 {
//    case 1:
//        result = "A"
//    case 2:
//        result = "B"
//    default:
//       print("Invalid")
//    }
//    print result
//}

print(calcGrade(score: 95)) // => A

//: [Next](@next)
