//
//  MapViewController.swift
//  CoronaInfo
//
//  Created by jo on 2021/10/14.
//

import UIKit
import Alamofire
import SwiftyJSON

class MapViewController: UIViewController {
    
    let apiKey = "KakaoAK b845d6a5d67434187b7a96403fe148bb"
    var lat:String?
    var lon:String?
    var hospital: [String:Any]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(hospital!)
        
        //쿼리에 뭘넣고 받아와? 주소!
        guard let hospital = self.hospital,
                let query = hospital["orgZipaddr"] as? String
        else{return}
        
        getCoord(query: query)
        
    }
    
    
    func getCoord(query: String){
        let strURL = "https://dapi.kakao.com/v2/local/search/address.json"
        let params:Parameters = ["query":query]
        let headers:HTTPHeaders = ["Authorization": apiKey]
        
        let alamo = AF.request(strURL, method: .get, parameters: params, headers: headers)
        alamo.responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                self.lat = json["documents"].arrayValue[0]["y"].string
                self.lon = json["documents"].arrayValue[0]["x"].string
                print(self.lat, self.lon)

            case .failure(let error):
                if let description_message = error.errorDescription {
                    print(description_message)
                }
            }
        }

    }
}
//
//extension MapViewController: UISearchBarDelegate{
//    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//        if let q = searchBar.text {
//
//        }
//    }
//}
