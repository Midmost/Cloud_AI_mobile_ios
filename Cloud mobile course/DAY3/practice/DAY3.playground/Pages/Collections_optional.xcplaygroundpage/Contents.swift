//: [Previous](@previous)

import Foundation

//using tuple as argument in array =>> 강사님은 소괄호를 튜플이라고 하심
var tArray:Array<(String, Int)> = [("a", 1), ("b", 2)]
print(tArray[1])
let t1 = tArray[0]
print(t1)
print(t1.0)
print(t1.1)

var heejinArray:Array<(String,Int)> = [("me", 27), ("him", 28)]
let h1 = heejinArray[0]
let h2 = heejinArray[1]

print ("ok, I am \(h1.1) and he is \(h2.1)")


//using Array as argument in Tuple
var heejinTuple:([String], Int) = (["heejin", "jihwan"], 2)
print(heejinTuple.0)

//using Array as Value in Dictionary
var heejinDic:[String:[String]] = ["Heejin":["still","love"]]
print(heejinDic["Heejin"])

//using Dictionary as argument in Array
var heejin_Dict_array: [[String:String]] = [["heejin":"love" , "jihwan":"sick" ]]
print(heejin_Dict_array[0])

//most popular way
var bts:[[String:Any]] = [["name":"Jin"], ["age": 25, "IsHemale":true]]
print(bts[0])




//: [Next](@next)
