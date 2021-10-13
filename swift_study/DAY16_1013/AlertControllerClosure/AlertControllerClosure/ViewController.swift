//
//  ViewController.swift
//  AlertControllerClosure
//
//  Created by jo on 2021/10/13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //button pressed -> alerat widnow up
    @IBAction func actAlert(_ sender: Any) {
        let alert = UIAlertController(title:"Title",message:"message",preferredStyle: .alert)
        
        //action added
        let action1 = UIAlertAction(title: "확인", style: .default)
            {_ in
            print("확인이 눌러졌습니다.")
        }
        
        //cancel action
        let action2 = UIAlertAction(title:"취소", style:.cancel)
        {
            _ in
            print("취소가 눌러졌습니다.")
        }
        
        let action3 = UIAlertAction(title:"삭제", style: .destructive)
        {
            _ in
            print("삭제가 눌러졌습니다.")
        }
        
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        
        
        //show alert
        present(alert, animated: true)
        {
            print("Present Alertcontroller")
        }
        
        
    }
    


}

