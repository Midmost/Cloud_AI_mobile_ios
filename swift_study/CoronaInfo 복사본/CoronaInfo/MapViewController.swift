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
    
    //Rest API key
    let apiKey = "KakaoAK 340282a6e2e9d04cdbfdb866860d0b02"
    
    //String to Value
//    var lat:String?
//    var lon:String?
    var hospital: [String:Any]?
    /*
    self.view는 viewdidload 안에서만 쓸 수 있어서 아래 코드는 동작안해
    var mapView:MTMapView = MTMapView(frame: self.view.frame)
 */
    //그래서 아래처럼 써준다
    let mapView : MTMapView = MTMapView()
        
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(hospital!)
        
        //쿼리에 뭘넣고 받아와? 주소!
        guard let hospital = self.hospital,
                let query = hospital["orgZipaddr"] as? String
        else{return}
        
        getCoord(query: query)
        mapView.frame = self.view.frame
        self.view.addSubview(mapView)
        
/*
        //원래 맵뷰 불러오는 코드
        let mapView = MTMapView (frame: self.view.bounds)
        //mapView.delegate = selfm
        mapView.baseMapType = .standard

        let pointGeo = MTMapPointGeo(latitude: 37.4634, longitude: 126.324)
        let point = MTMapPoint(geoCoord: pointGeo)
        mapView.setMapCenter(point, animated: true)
        mapView.setZoomLevel(-1, animated:true)
        self.view.addSubview(mapView)
 */
        
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
                let lat = json["documents"].arrayValue[0]["y"].doubleValue
                let lon = json["documents"].arrayValue[0]["x"].doubleValue
                print(lat, lon)
                let pointGeo = MTMapPointGeo(latitude: lat, longitude: lon)
                let point = MTMapPoint(geoCoord: pointGeo)
                //여기 애니메이션은 true가 별로일 수도 있어
                //핸들러에서 처리하는 것들은 다 self넣어줘라
                self.mapView.setMapCenter(point, animated: true)
                //숫자가 클수록 지도늘 넓게 글자는 작게 보이는거임 -1로 하자
                self.mapView.setZoomLevel(-1, animated: true)
                let item = MTMapPOIItem()
                //병원기관명을 넣자 기관명은 ? orgnm
                if let hospital = self.hospital{
                    item.itemName = hospital["orgnm"] as? String
                }
                //어떤 핀으로 지도에 꽂을거야? 나중에는 커스텀 핀으로 합시다
                item.markerType = .bluePin
                //아이템을 보여줄 위치를 지정 지금은 센터랑 똑같은 위치로
                item.mapPoint = point
                self.mapView.add(item)
                

            case .failure(let error):
                if let description_message = error.errorDescription {
                    print(description_message)
                }
            }
        }

    }
}

