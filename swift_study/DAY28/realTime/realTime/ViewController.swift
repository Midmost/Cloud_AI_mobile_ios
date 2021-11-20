//
//  ViewController.swift
//  realTime
//
//  Created by jo on 2021/11/19.
//

import UIKit
import FirebaseDatabase
import Firebase

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        let testItemsReference = Database.database().reference(withPath: "test-items")
        
        testItemsReference.observe(.value, with: {
                    snapshot in
                    print(snapshot)
                })


        testItemsReference.child("user").observe(.value) {
                    snapshot in
                    let value = snapshot.value as! [String: AnyObject]
                    let name = value["name"] as! String

                    print("name is \(name)")
               }
  
    }
    
    

}

