//: [Previous](@previous)

//import Foundation
//
//var temp1:Int? = 3
//var temp2:Int? = 5
//temp1 + temp2
//temp1 + 30
//
//var optInt2 : Int? = 3
//print("옵셔널 자체의 값 : \(optInt2)")
//print("!로 강제 언래핑한 값 : \(optInt2!)")
//temp1! + temp2!
//var index7 = Int("123")!
//print(index7)
//
//var optStr1 : String? = "swift"
//print(optStr1)
//print(optStr1!)
//
//var capital5 = ["KR": "seoul", "EN" : "london"]
//print(capital5["KR"])
//print(capital5["kr"])
//var krCapital = capital5["KR"]!
//var krCapital1 = capital5["kr"]!

//optional 선언
var temp2 : Int? = 123


// 1번쨰 방법
if temp2 != nil
{
    print("변환된 값은 \(temp2!)")
}else
{
    print("값 변환에 실패")
}
    
//2번째 방법 
if let val = temp2 {                // != nil 을 아예 if let heejinVal = 래핑된 변수 이란 형태로 만들어놓음
    print("변환된 값: \(val)")          //nill이 아닌 경우에만 참이 되어 이 코드블럭이 실행됨 nill이면 아무것도 안함
}

//: [Next](@next)
