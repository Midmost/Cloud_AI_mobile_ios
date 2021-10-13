//
//  ViewController.swift
//  closureTest
//
//  Created by jo on 2021/10/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        doSomething(name: "홍길동", handler: {(n1:String)->Void in print("Hello \(n1)")})
        
        
        doSomething(name:"홍길동"){n1 in print("Hello\(n1)")}
        
        doSomething1{}
        
        let names = ["Chris","Alex","Ewa", "Barry", "Daniella"]
        let sortedNamed =
    
    
    //익명의 함수를 만들어볼거임 아래는 기존의 함수
    func sayHello(name:String){
        print("Hello\(name)")
    }
    
        func doSomething(name:String, handler:(_ n1:String)->Void)
    

}

