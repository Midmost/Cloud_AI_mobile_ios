//: [Previous](@previous)

import Foundation

let heejinTuple = ("a", "heejin", 3, 4, true)


//using tuple index
heejinTuple.0
heejinTuple.1
heejinTuple.2
heejinTuple.3
heejinTuple.4
print(heejinTuple.1)

//reset tuple value
let joyTuple = ("heejin", "you", 1.2, false, 4)
let (a,b,c,d,e) = joyTuple
print(e)

// let's make appended tuple
let addTpl : (Int, String) = (100, "hey")
print(addTpl)






//: [Next](@next)
