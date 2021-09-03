import UIKit

var set1 : Set<String> = Set<String>() // ==>> official syntax

// express the same way with Array and Set
var set2 : Set<String> = []
var array : Array<String> = []


//a set has no sequence
var set3 : Set<Int> = [1,2,3,4]
for name in set3 {
    print(name)
}


//because set has no order, can't add same argument
set3.insert(7)    //inserted true
set3.insert(3)    //inserted false

//remove and save another variable
let result = set3.remove(3)
print(set3)
