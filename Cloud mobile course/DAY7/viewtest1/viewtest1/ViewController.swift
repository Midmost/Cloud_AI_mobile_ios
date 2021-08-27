//
//  ViewController.swift
//  viewtest1
//
//  Created by jo on 2021/08/27.
//

import UIKit

class ViewController: UIViewController {
    
    var isClicked : Bool = false                //toggle 만들기
    @IBOutlet weak var mylabel: UILabel!
    @IBAction func actOnClick(_ sender: Any) {         // @IBAction은 코드랑 상관없어 // sender라는 애는 이벤트를 발생시킨 애 //지금 sender는 버튼
        isClicked = !isClicked
        if isClicked {
            mylabel.textColor = .red
        }else
        {
            mylabel.textColor = .blue
        }
        
    }
   
    @IBOutlet weak var segment : UISegmentedControl!
    @IBAction func actChngeValue(_ sender: Any) {
        let result = "선택된 segment는 \(segment.selectedSegmentIndex+1)"
        mylabel.text = result
    }
    
    @IBAction func onExit(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mylabel.text = "again hello"
        mylabel.backgroundColor = .gray
    }


}

