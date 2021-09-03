//: [Previous](@previous)

import Foundation


func calculator_Switch(_ i:Int, _ j:Int, _ op:String)->Int{
    var result = 0
    
    switch op {
    case "+":
        result = i + j
    case "-":
        result = i - j
    default:
        print("please using +,-")
    }
    return result
}
    
print(calculator_Switch(2, 3, "+"))



//: [Next](@next)

