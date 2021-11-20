//
//  ViewController.swift
//  BookFinderWithCodable
//
//  Created by Asmin on 2021/11/15.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    var books:[Book]?
    let apiKey = "KakaoAK 4cae53176045f8acd298a788ea85b153"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getData(_ sender: Any) {
        search()
    }

    func search(){
        let strURL = "https://dapi.kakao.com/v3/search/book"
        
        let params:Parameters = ["query":"ios", "page":1]
        let headers:HTTPHeaders = ["Authorization":apiKey]
        
        let alamo = AF.request(strURL, method: .get, parameters: params, headers: headers).validate(statusCode: 200..<300)
        alamo.responseDecodable(of: SResult.self){ response in
            
            switch(response.result){
            case .success(let sresult):
                self.books = sresult.documents
                print(self.books!])
               
//                let lblTitle = cell.viewWithTag(1)
//                let book = self.books[indexPath.row]
//                lblTitle.text = book.title
//                lblAuthors.text = book.authors.joined(separator: ",")
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        
    }
}


