//: [Previous](@previous)

import Foundation

extension Double {
    var km : Double { return self * 1000.0 }
    var m : Double { return self }
    var description : String {
        return "\(self) km는 \(self.km)m"
    }
    
}

2.km
5.5.m
7.0.description
print(7.0.description)

let distance = 42.km + 195.m
print("marathon : \(distance)")






//: [Next](@next)
