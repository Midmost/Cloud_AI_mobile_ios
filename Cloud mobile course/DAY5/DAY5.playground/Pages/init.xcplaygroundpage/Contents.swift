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
    

}

//여기서 불편한 점은 매번 width나 height을 수정하려면
var square_example = Square_answer()
square_example.width = 10  // <== 이런 식으로

// 그래서 초기값을 만들고 값을 자주 바꿔줄 수 있게 int을 쓰는겨
//init의 특징은 함수랑 똑같지만 이름이 고정이고 func 안쓰는 것 뿐 걍 함수 그자체
//초기화하고 싶은 변수들을 넣어서

var square2 = Square_answer() // 만약 이걸 실행할 때 Square_answer에 init이 있으면 init 부터 실행을 해


//: [Next](@next)
