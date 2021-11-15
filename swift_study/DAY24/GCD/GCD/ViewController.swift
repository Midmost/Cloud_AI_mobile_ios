//
//  ViewController.swift
//  GCD
//
//  Created by jo on 2021/11/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func task1(){
        print("task1 시작")
        sleep(3)
        print("task1 종료")
    }
    
    func task2(){
        print("task2 시작")
        sleep(2)
        print("task2 종료")
    }
    
    func task3(){
        print("task3 시작")
        sleep(1)
        print("task3 종료")
    }

    @IBAction func actionMain(_ sender: Any) {
        task1()
        task2()
        task3()
    }
    
    @IBAction func actionGlobal(_ sender: Any) {
        DispatchQueue.global(qos: .background).async{
            self.task1()
        }
        let queue = DispatchQueue.global(qos: .userInteractive)
            
        queue.async{
            self.task2()
        }
        queue.async{
            self.task3()
        }

    }
    
    @IBAction func actionAsync(_ sender: Any) {
        let queue = DispatchQueue.global(qos: .userInteractive)
        
        queue.async {
            self.task1()
        }
            
        queue.async{
            self.task2()
        }
        queue.async{
            self.task3()
        }

    }
    
    @IBAction func actionSync(_ sender: Any) {

        let queue = DispatchQueue.global(qos: .userInteractive)
        
        queue.sync {
            self.task1()
        }
        
        queue.sync{
            self.task2()
        }
        
        queue.sync{
            self.task3()
        }
    }
    

}

