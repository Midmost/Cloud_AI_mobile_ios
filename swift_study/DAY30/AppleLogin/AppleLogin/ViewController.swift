//
//  ViewController.swift
//  AppleLogin
//
//  Created by jo on 2021/11/24.
//

import UIKit
import AuthenticationServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func appleLogin(_ sender: Any) {
        let request = ASAuthorizationAppleIDProvider().createRequest()
        request.requestedScopes = [.email, .fullName]
        
        
        //controller를 만듦
        let authorizaitonController = ASAuthorizationController(authorizationRequests: [request])
        authorizaitonController.delegate = self
        
        //controller 화면에 띄움
        authorizaitonController.performRequests()
    }
    
    
}

extension ViewController:ASAuthorizationControllerDelegate{
    //로그인 성공하면 호출되는 함수
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        let credential = authorization.credential as? ASAuthorizationAppleIDCredential
        
        
        print(credential?.user)
        print(credential?.fullName)
        print(credential?.email)
    }
    
    //로그인 실패하면 호출되는 함수
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        print(error.localizedDescription)
    }
}

