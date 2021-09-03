//: [Previous](@previous)

import Foundation

// declaration class
class Vehicle{
    var wheels: Int
    var seats: Int
    var engines : Int
    
    init(wheels: Int, seats: Int, engines: Int){                     // [ var: type ] <= syntax
        self.wheels = wheels
        self.seats = seats
        self.engines = engines
    }
}

func drive(){
    print("Run")
}


//Usage class
var bike = Vehicle(wheels: 2, seats : 2, engines: 3)
print("bike.wheels = \(bike.wheels)")





//: [Next](@next)
