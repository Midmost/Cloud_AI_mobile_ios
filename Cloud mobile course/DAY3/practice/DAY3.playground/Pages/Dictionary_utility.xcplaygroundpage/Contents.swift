//: [Previous](@previous)

import Foundation


//update value
var heejin : [String:String]
heejin = ["KR":"seoul", "US":"washington"]
heejin.updateValue("paris", forKey:"FR")
heejin.updateValue("jeju", forKey: "KR")
heejin.removeValue(forKey: "KR")
print(heejin)


// 10명의 사람이 있고 각 각 이름이 a,b,d,... 이렇게 있다고 칠 때,
// 키스 밸루스...?

var capitals = ["KR":"Seoul", "EN":"London", "FR":"Paris"]
for (country, capital) in capitals {
   print("\(country)'s capital = \(capital)")
}















//: [Next](@next)
