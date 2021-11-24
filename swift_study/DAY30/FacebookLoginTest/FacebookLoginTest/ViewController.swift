//
//  ViewController.swift
//  FacebookLoginTest
//
//  Created by jo on 2021/11/24.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func fbLogin(_ sender: Any) {
        if let token = AccessToken.current,
           !token.isExpired{
            //token이 아직 있고 시간이 유효하다면
            print(token.userID)
        }else{
            let manager = LoginManager()
            manager.logIn(permissions: ["public_profile"], from:self) { Result, error in
                if let error = error{
                    print(error.localizedDescription)
                    return
                }
                guard let result = Result else {return}
                //login요청하면 갔다가 캔슬될 수 있음
                if result.isCancelled{
                    print("사용자가 취소")
                    return
                }else{
                    let token = AccessToken.current
                    let userId = token?.userID
                    print(userId)
                    
                
                
//                https://graph.facebook.com/userid/picture?type=large
                    
                }
            }
        }
    }
    
}

