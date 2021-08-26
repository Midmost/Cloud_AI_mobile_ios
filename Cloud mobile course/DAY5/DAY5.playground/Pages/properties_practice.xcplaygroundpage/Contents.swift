import UIKit

class Square {
    var width = 0.0
    var height = 0.0
    var manage : Double{
        get{return Double(width)}
        set(newValue){(width = newValue)}       //set 은 생략 가능쓰
    }
    
    func square(){
        sqrt(width)
        sqrt(height)
    }
    
    
    var square_call = Square()
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
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
}

var square = Square_answer()
square.area = 70.0          //property라서 = 을 써준다
print(square.height)
print(square.width)
print(square.duplicate())


