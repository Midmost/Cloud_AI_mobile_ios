//: [Previous](@previous)

//import Foundation
//
////첫번째 수를 둘째 수로 나눴을 때
//
//func divide(firstNumber: Int, secondNumber: Int)->(Int, Int)
//{
//
//    var result1 = firstNumber / secondNumber
//    var result2 = firstNumber % secondNumber
//
//    return (result1, result2)   //**tuple은 반환값을 지정해서 해줄 필요 없다
//}
//
//print(divide(firstNumber: 15, secondNumber: 4)) //  => (3, 3)
//
//
////: [Next](@next)
//


func calcGrade(score : Int)->String
{
    var result = ""
    if (score >= 95)
    {
        result = "A"
    }
    else
    {
        result = "you are not A"
    }
    return result
}

var InputNum = calcGrade(score: 90)

print (InputNum)



