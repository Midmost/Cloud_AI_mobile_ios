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
//    var lat:String?
//    var lon:String?
    var hospital: [String:Any]?
        
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(hospital!)
        
        //쿼리에 뭘넣고 받아와? 주소!
        guard let hospital = self.hospital,
                let query = hospital["orgZipaddr"] as? String
        else{return}
        
        getCoord(query: query)
        
//        //맵뷰
//        let mapView = MTMapView (frame: self.view.bounds)
//        //mapView.delegate = selfm
//        mapView.baseMapType = .standard
//
//        let pointGeo = MTMapPointGeo(latitude: 37.4634, longitude: 126.324)
//        let point = MTMapPoint(geoCoord: pointGeo)
//        mapView.setMapCenter(point, animated: true)
//        mapView.setZoomLevel(-1, animated:true)
//        self.view.addSubview(mapView)
        
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
                //좌표를 가져왔을 때 이걸 self 안 쓰고 바로 잡을 수 있다.
                let lat = json["documents"].arrayValue[0]["y"].double
                let lon = json["documents"].arrayValue[0]["x"].double
                print(lat, lon)

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
