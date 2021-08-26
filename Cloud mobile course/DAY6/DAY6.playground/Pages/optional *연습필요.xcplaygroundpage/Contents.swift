//: [Previous](@previous)

import Foundation

class SampleClass {
    var name : String = ""
}

//class SampleClass1 {
//    var num : Int
//    init(num : Int){
//        self.num = num
//    }
//
//    func method1(){
//        var num1 : Int? //optional은 연산을 할 수 없음
//        var num2 : Int?
//        do {
//            print(num1)
//        }
//        num1 = 1
//        num2 = 2
//
//        print(num1)
//    }
//}

var opInt : Int?
opInt = nil
print(opInt)

var opInt1 : Int? = 1
print(opInt1)

var opStr : String? =  "swift"
print(opStr)

var opArr : [String]?
opArr  = ["C", "JAVA", "오브젝티트-C", "smallTalk"]
print(opArr)

var opDic : [String:Int]?
opDic = ["국어": 94, "수학": 84]
print(opDic)


//: [Next](@next)
