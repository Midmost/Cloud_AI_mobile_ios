//: [Previous](@previous)

import Foundation


class Square_self {
    var width: Double; var height:Double
    var area : Double {
        get{width * height}
        set(newVal){
            width = sqrt(newVal)
            height = sqrt(newVal)
        }
    }

    func square_method()->(Double,Double){
        width = width * 2
        height = height * 2
        return(width, height)
    }
    
    
//init(width: Double, height: Double)
//{
//    width = width                 //error가 난다
//}
    

init(width: Double, height: Double)
{
    self.width = width
    self.height = height
}

    
//: [Next](@next)
}
