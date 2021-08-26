//: [Previous](@previous)

import Foundation

do{
    var cont : Int = 0
    do{
        var cont = 3    // 변수 명이 겹쳐서는 안되지만 가능한 이유는 코드블럭이 달라서 선언 가능
        print(cont)    //제일 가까운 바로 위 cont가 선언
    }
    print(cont)        // 같으 블록 내인 do 바로 밑에 있는 거
}

do{
    let cnt = 1
    do {
        print("\(cnt)first!")
        do {
            print("\(cnt)sec!")
            do {
                print("\(cnt)third!")    //
            }
        }
        
    }
}

let param1 = 5
func test1(param1:Int){  //매개변수는 속한 코드블록 내에서 선언된 변수와 똑같음
    print(param1)  //
}


//: [Next](@next)
