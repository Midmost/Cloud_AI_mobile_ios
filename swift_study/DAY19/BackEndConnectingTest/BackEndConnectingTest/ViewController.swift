//
//  ViewController.swift
//  BackEndConnectingTest
//
//  Created by jo on 2021/10/20.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actPost(_ sender: Any) {
        
        let strURL = "http://localhost:8000/users/"
        let params : Parameters = ["user_id":"a01", "name":"조희진",
                                  "password":"1234", "address":"서울시 강동구"]
        let alamo = AF.request(strURL, method: .post, parameters: params)
        alamo.responseJSON {
            response in switch response.result {
            case .success(let value):
                let json = JSON(value)
                print(json)
                let result = json["success"].boolValue
                if result{
                    self.showResult(title: "사용자추가", message: "사용자추가성공!")
                } else {
                    self.showResult(title: "사용자추가", message: "사용자추가실패...")
                    print("fail")
                }
            case .failure(let error):
                print(error.errorDescription)
            }
        }
    
    }
    
    
    
    fileprivate func callAPI(_ strURL : String, method: HTTPMethod, parameters: Parameters?, headers: HTTPHeaders?, handler: @escaping(Any)->())
    //@escaping설명해주셨는데 뭔지 모르겠음 클로져 얘기 나옴
    
    {
        let alamo = AF.request(strURL, method: .get)
        alamo.responseJSON { response in
            switch response.result{
            case .success(let value):
                
                handler(value)
            
            case .failure(let error):
                print(error.errorDescription)
            }
        }
            
    }
    
    
    
    
    @IBAction func actGet(_ sender: Any) {
        let strURL = "http://localhost:8000/users/"
        let alamo = AF.request(strURL, method: .get, parameters: nil,headers: nil)
        alamo.responseJSON{ HJresponse in
            switch HJresponse.result{
            case .success(let value):
                let json = JSON(value)
                let item = json["data"].arrayObject
                print(item)
            case .failure(let error):
                print(error.errorDescription)
            }
            
    }
        
        
    }
    @IBAction func actPut(_ sender: Any) {
        let strURL = "http://localhost:8000/users/"
        let params : Parameters = ["user_id":"a01", "name":"홍길동",
                                  "password":"1234", "address":"서울시 강동구"]
        let alamo = AF.request(strURL, method: .post, parameters: params)
        alamo.responseJSON { response in
            switch response.result{
            case .success(let value):
                let json = JSON(value)
                let result = json["success"].boolValue
                if result{
                    self.showResult(title: "사용자수정", message: "수정성공")
                }else{
                    self.showResult(title: "사용자수정", message: "수정실패")
                }
                
            case .failure(let error):
                print(error.errorDescription)
            }
        }
    }
    
    @IBAction func actDel(_ sender: Any) {
        
        
        let strURL = "http://localhost:8000/users/1"
        //삭제를 하려면 지정을 해줘야해
        let alamo = AF.request(strURL, method: .delete)
        alamo.responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                let result = json["result"].boolValue
                if result {
                    self.showResult(title: "사용자삭제", message: "삭제성공")
                }else{
                    self.showResult(title: "사용자삭제", message: "삭제실패")
                }
            case .failure(let error):
                print(error.errorDescription)
            }
        }
    }
    
    
    
    
}

extension UIViewController{
    func showResult(title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "확인", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true)
        
    }
}


