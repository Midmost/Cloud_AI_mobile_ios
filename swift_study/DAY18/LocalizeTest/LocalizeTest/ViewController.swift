//
//  ViewController.swift
//  LocalizeTest
//
//  Created by jo on 2021/10/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        label1.text = NSLocalizedString("hello", comment: "")
        label2.text = NSLocalizedString("i'm", comment: "")
        label3.text = NSLocalizedString("heejin", comment: "")
    }


}

