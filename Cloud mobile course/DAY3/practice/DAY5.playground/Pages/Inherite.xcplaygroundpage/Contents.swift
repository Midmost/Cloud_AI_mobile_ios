//: [Previous](@previous)

import Foundation

class Vehicle{
    var speed = 0.0
    func speedUp(){
        speed += 10
    }
    func speedDn(){
        speed -= 10
    }
}

class Car : Vehicle{
    var wheelCount:Int
    var seatCount : Int
    init(wheelCount: Int, seatCount: Int) {
        self.wheelCount = wheelCount
        self.seatCount = seatCount
    }
}

class Truck : Car {
    
    var loadage : Int = 0
    
//    init (loadage : Int){
//        self.loadage = loadage
//    }
    
    func load ()->()
    {
        print("load")
    }
    
    func unload()->()
    {
        print("unload")
    }
    
    override func speedUp() {  // 상위클래스에 있는 메서드를 서브 클래스에서 고치는거
        speed += 5
    }
}


var truck = Truck(wheelCount: 8, seatCount: 2)
truck.load()

var car = Car(wheelCount: 4, seatCount: 4)
//: [Next](@next)
