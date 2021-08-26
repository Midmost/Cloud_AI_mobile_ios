//: [Previous](@previous)

import Foundation

class Square_answer{
    // 가로 세로를 관리하는 연산 프로퍼티 라면, 가로세로 변수 필요
    var width = 0.0
    var height = 0.0
    
    //넓이를 입력 받으려면
    var area: Double{
        get{return width*height}
        set(value){width = sqrt(value); height = width}          //여기서 튜플로 하지 않넴
    }
    
    //가로세로를 두배로 만들고 변경된 가로세로를 튜플로 반환 -> method 필요
    func duplicate()->(Double,Double){        //tuple로 반환하려니 () ->(), 그리고 받는 타입이 더블이니 ()->(Double,Double)
        width = width * 2
        height = width
        return(width, height)
    }
    
    // init이 없을 경우
//    init(){               기본 void 형태로 자동 생성
//    }
    
    init(w:Double, h:Double){
        width = w
        height = h
    }
}

var square_example = Square_answer(w: 1.0, h: 1.0)

//: [Next](@next)
