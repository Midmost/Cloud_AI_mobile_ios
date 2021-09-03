//: [Previous](@previous)

import Foundation

import UIKit

class SimpleClass{
    var name = "홍길동"
    var age = 15
    var count = 5
}

//let aPerson = SimpleClass()
let aPerson: SimpleClass = SimpleClass() //aPerson의 type은? SimpleClass!!

print("name is \(aPerson.name)")

print(aPerson.count)


class Vehicle{
    var speed = 0
    func speedUp(){
        speed += 10
    }
    
    func speedDn(){
        speed -= 10
    }
}

var vehicle1 = Vehicle()
vehicle1.speedUp()
print(vehicle1.speed)
vehicle1.speedUp()
print(vehicle1.speed)



class Vehicle1 {
    var speed = 0
    func speedUp(){speed += 10}
    func speedDn(){speed -= 10}
    func speed2Mile() -> Double {
        return Double(speed) * 0.6213
    }
}

var someVehicle1 = Vehicle1();
someVehicle1.speedUp()
print(someVehicle1.speed)
var mile = someVehicle1.speed2Mile()









//: [Next](@next)
