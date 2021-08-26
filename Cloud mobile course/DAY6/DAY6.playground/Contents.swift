import UIKit


//copied data => structure
struct Person {
    var name : String
    var age : Int
    var gender : String
    var height : Double
}

var person = Person(name: "홍길동", age: 15, gender: "male", height: 171.7)
print(person.name)




// reference type => class
class Person_class{
    var name : String
    var age : Int
    
    init(name: String, age : Int) {
        self.name = name
        self.age = age
    }
}

var person_class = Person_class(name: "heejin", age: 27)
print(person_class.name)
