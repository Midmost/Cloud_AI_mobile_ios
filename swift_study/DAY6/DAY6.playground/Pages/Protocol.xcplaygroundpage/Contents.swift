//: [Previous](@previous)

import Foundation


//declare 함수와 다르게 구현은 코드블럭 안에 넣지 않아
protocol SampleProtocol {                   //interface 같은 것! 지켜야 할 약속
    var name : String {get set}
    var description : String {get}
}

//지켜주겠다고 한 구조체나 클래스에 구현할 것을 넣어둠
struct SampleClass : SampleProtocol {
    var description: String
    // 위에서 지키라고 protocol이 왔으니까 여기서 써주는 거야   //struct
    var name = "홍길동"                        // apple 가이드 라인을 보통 프로토콜로 많이 준다네!
    var desciption : String {
        return "Name : \(self.name)"
    }
    
    func execute(cmd : String){
        if cmd == "start"
        {
            print("실행합니다")
        }
    }
    func showPort(port:Int)->String{
        return "port: \(port)"
    }
}

//var process = SampleClass()
//print(type(of: process))
//
//var process1 : SampleProtocol = process
//process1.execute(cmd: "start")
//process1.showport(port: 1)
//


























//: [Next](@next)
