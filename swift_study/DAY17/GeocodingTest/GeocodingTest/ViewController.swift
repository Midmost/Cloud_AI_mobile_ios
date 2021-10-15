//
//  ViewController.swift
//  GeocodingTest
//
//  Created by jo on 2021/10/14.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    let apiKey = "KakaoAK b845d6a5d67434187b7a96403fe148bb"

    @IBOutlet weak var latLabel: UILabel!
    @IBOutlet weak var logLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actSearch(_ sender: Any) {
        let query = "서울특별시 금천구 디지털로9길 56"
        getCoord(query: query)
    }
    
    func getCoord(query: String) {
        let strURL = "https://dapi.kakao.com/v2/local/search/address.json"
        let params:Parameters = ["query":query]
        let headers:HTTPHeaders = ["Authorization": apiKey]
        
        let alamo = AF.request(strURL, method: .get, parameters: params, headers: headers)
        alamo.responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                let lat = json["documents"].arrayValue[0]["y"].string
                let lon = json["documents"].arrayValue[0]["x"].string
                //print(lat, lon)
                DispatchQueue.main.async {
                    self.latLabel.text = lat as? String
                    self.logLabel.text = lon as? String
                }
                
            case .failure(let error):
                if let description_message = error.errorDescription {
                    print(description_message)
                }
            }
        }
        
    }
    
}
