//
//  ViewController.swift
//  kakaoMapSelf
//
//  Created by jo on 2021/10/12.
//

import UIKit

class ViewController: UIViewController, MTMapViewDelegate{

    @IBOutlet var view1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //지도를 뿌려보자
        mapView = MTMapView(frame:view1.bounds)
        mapView?.delegate = self
        mapView?.baseMapType = .standard
        
        let pointGeo = MTMapPointGeo(latitude:Double,longtitude:Double)
        let point = MTMapPoint(geoCoord:pointGo)
        mapView?.setMapCenter(point, animated:true)
        mapView?.setZoomLever(-1,animated:true)
        
        if let mapView = self.mapVIew{
            view1.addSubview(mapView!)
        }
      
    }
    
    @IBAction func actPin1(_ sender: Any) {
        let item1 = MTMapPOIItem()
        let pointGeo = MTMapPointGeo(latitude:Double,longtitude:Double)
        let point = MTMapPoint(geoCoord:pointGo)
        item1.itemName = "현재위치"
        item1.mapPoint = point
        item1.markerType = .redPin
        item1.customImageName = "pin_sel"
        item1.markerSelectedType = .customImage
        item1.customSelectedImageName = "pin"
        mapView?.add(item1)
    }
    
    @IBAction func actPin2(_ sender: Any) {
    }
    
    
    extension ViewController:MTMapViewDelegate{
        func mapView(_ mapView: MTMapView!, touchedCalloutBalloonOf poiItem: MTMapPOIItem!)
        {
            if let name = poiItem.itemName{
                print("\(poiItem.itemName)터치됨")
            }
            
        }
    }
}

