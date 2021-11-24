//
//  ViewController.swift
//  kakaoLoginTest
//
//  Created by jo on 2021/11/24.
//

import UIKit
import KakaoSDKCommon
import KakaoSDKAuth
import KakaoSDKUser

class ViewController: UIViewController {
    @IBOutlet weak var lblId: UILabel!
    
    @IBOutlet weak var lblNick: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginWithKakao(_ sender: Any) {
        // 카카오톡 설치 여부 확인
        if (UserApi.isKakaoTalkLoginAvailable()) {
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoTalk() success.")

                    //do something
                    _ = oauthToken
                    self.userInfo()
                }
            }
        }
    }
    
    
    @IBAction func loginWithAccount(_ sender: Any) {
        UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoAccount() success.")

                    //do something
                    _ = oauthToken
                    self.userInfo()
                }
            }
    }
    
    //token 을 받아왔을 때 토큰이 있는 상태에서 호출할 수 있도록
    func userInfo(){
        //error가 나면 error를 받아오고 안 나면 user를 받아오겠다는클로저
        UserApi.shared.me { user, error in
            if let error = error {
                print(error.localizedDescription)
                return
            }
            else
            {
                if let id = user?.id{
                    self.lblId.text = "\(id)"
                }
                
                
                self.lblNick.text = user?.kakaoAccount?.profile?.nickname
                
                
                
                guard let url = user?.kakaoAccount?.profile?.profileImageUrl
                else {return}
                
                if let data = try? Data(contentsOf: url){
                    self.imageView.image = UIImage(data: data)
                }
                
                
            }
            
        }
    }
    
    
    
}

