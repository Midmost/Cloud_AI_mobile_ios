//
//  ViewController.swift
//  AutoLayoutTest
//
//  Created by Asmin on 2021/10/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let nextViewController = self.storyboard?.instantiateViewController(identifier: "tabarcontroller")
        nextViewController?.modalTransitionStyle = .coverVertical
        present(nextViewController, animated: true, completion: nil)
    }


}

