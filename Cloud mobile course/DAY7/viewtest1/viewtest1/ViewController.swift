//
//  ViewController.swift
//  viewtest1
//
//  Created by jo on 2021/08/27.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mylabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        mylabel.text = "again hello"
        mylabel.backgroundColor = .gray

    }


}

