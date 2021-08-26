//: [Previous](@previous)

import Foundation

class Square_init {
    var width : Double; var height : Double
    var area : Double{
        get { return width * height }       //readonly
        set(newVal_const){                        //write
            width = sqrt(newVal_const)                  // newval은 let이 생략되었다고 보면 된다
            height = width
        }
    }
    
    func duplicate()->(Double,Double){
        width = width * 2
        height = height * 2
        return(width, height)
    }
    
    init(w: Double, h: Double)
    {
        width = w
        height = h
    }
}

var s1 = Square_init(w: 10, h: 13)
s1.width
s1.height

self.width = width  // self의 의미는 이 클래스를 의미!


//: [Next](@next)
