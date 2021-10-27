//
//  ViewController.swift
//  testProj11
//
//  Created by jo on 2021/10/26.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    var manager = CLLocationManager() //cl은 core location이란 거임
    

    override func viewDidLoad() {
        super.viewDidLoad()
        manager.delegate = self
        manager.requestAlwaysAuthorization()
        manager.desiredAccuracy = kCLLocationAccuracyBest
        
    }

    @IBAction func actlocation(_ sender: Any) {
        manager.startUpdatingLocation() //현재위치를 체크해서 변화하면 가져옴
    }
    
    
   
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.last
        let lat = location?.coordinate.latitude
        let lon = location?.coordinate.longitude
        print(lat, lon)
    }
   
}


