//: [Previous](@previous)

import Foundation

//five people clap and say they number
//func myfunc(){
//    // dict in array
//    let fivePeople : [[String:Any]] = [["First":1], ["Sec":2], ["Third":3], ["Four":4], ["five":5]]
//    for person in fivePeople {
//        var num1 = fivePeople[0]
//        num1[0]
//    }
//
//}
//
//
//func myfunc2(){
//    let ThreePeople:Array<(String,Int)> = [("First", 1), ("Sec", 2), ("Three", 3)]
//    var firstPersons = ThreePeople[0]
//    var secPersons = ThreePeople[1]
//    var thirdPersons = ThreePeople[2]
//
//    var firstNum = firstPersons.1
//    var secNum = firstPersons.1
//    var thirdNum = thirdPersons.1
//}



func sayHello(name:String){
    print("Hello \(name)")
}

sayHello(name: "희진")

func sayHello() -> String {    // 함수로 실행한 결과가 문자열로 나가게 만들겠다.
    return "Hello Func"      // 리턴값을 스트링으로 나오게 해준다. 타입을 맞춰줘야해
}


func threeTimes(val : Int) -> Int {
    return val * 3
}



//with External parameter
func Heejinfunc(externalName internalName : String, externalAge internalAge : Int) -> String{
    return "\(internalName) is \(internalAge) years old"
}
print(Heejinfunc(externalName: "jihwan", externalAge: 28))



// without External parameter
func sayHello1(_ name : String, _ age: Int)->String{
    return "\(name) ist \(name) years old"
}
print(sayHello1("jihwan", 28))

//: [Next](@next)
