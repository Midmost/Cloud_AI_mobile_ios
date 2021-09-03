import UIKit


//copied data => structure
struct Person {
    var name : String
    var age : Int
    var gender : String
    var height : Double
}

var person = Person(name: "홍길동", age: 15, gender: "male", height: 171.7)
//print(person.name)

print(person.name)

print(person.age)
if person.name == "홍길동"{
    person.age = 17
}

print(person.age)

var person1 = person

print(person.age)
print(person1.age)
person1.age = 10
print(person.age)
print(person1.age)

//
//
//
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
print(person_class.age)
var person_class1 = person_class

print(person_class1.age)
person_class1.age = 19
print(person_class.age)


