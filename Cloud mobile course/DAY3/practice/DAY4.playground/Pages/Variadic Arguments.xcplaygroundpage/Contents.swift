import UIKit


func avg(scores:Int...)->{
    var total = 0
    for score in scores{
        total += score
    }
    return Double(total) / Double(scores.count)
}
var greeting = "Hello, playground"
