//: [Previous](@previous)

import Foundation


//우리가 배웠던 타입들
let num11:Int = 4
let arr:[String] = []
let t:(Int, Int) = (1,2)

func hello1(){
    print("hi")                 //매개변수와 반환값이 없으므로 ()->()
}                               //()->Void라고 쓸 수도 있음

let func1:()->() = hello1       //상수로 불려진 func1의 타입이 hello1과 같기 때문에 대입이 가능
func1()


func sayHello(name:String, age:Int){        //(String,Int) -> ()
    print("hello")
}

//type1
func sayHello1(name:String){                 //() -> ()
    print("hello")
}


//type2
func sayHello2(name:String)->[Int]{                 //(String,Int) -> ([Int])
    print("hello")
    return[]
}

let func1:()->() = sayHello1                    //sayHello2는 타입이 달라서 부를 수 없음

func hello(name: String){
    print("hi\(name)")
}

func hello1(name:String, hfunc:(String)->()) {
      hfunc(name)
}
hello1(name: "홍길동", hfunc: hello)

    
//: [Next](@next)
