//: [Previous](@previous)

import Foundation

class Vehicle {                         //class name should be written as Capital letters
    var speed = 0
    var mile: Double {                  //properties
        return Double(speed) * 0.6213
    }
    
    func speedUp(){ speed += 10}
    func speedDn(){ speed -= 10}
    func speed2mile()->Double{
        return Double(speed) * 0.6
    }
}
 
var _vehicle = Vehicle()
_vehicle.speedUp()
print(_vehicle.speed2mile())



























//: [Next](@next)
