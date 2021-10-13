//
//  ViewController.swift
//  ParsingTest
//
//  Created by jo on 2021/10/13.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onGetTapped(_ sender: Any) {
        getWeather(lat: 37.327798205321514, lon: 126.83931095794505)
    }
     let appID = "97240930f69215cf4fa8a94c713651d7"
    
    //37.327798205321514
    // 126.83931095794505
    
    @IBOutlet weak var lblWeather: UILabel!
    @IBOutlet weak var lblTemp: UILabel!
    @IBOutlet weak var lblHum: UILabel!
    
    
    

    
    func getWeather(lat:Double, lon:Double){
        let strUrl = "https://api.openweathermap.org/data/2.5/weather?appid=\(appID)&lat=\(lat)&lon=\(lon)&units=metric"
        
        guard let url = URL(string:strUrl)else {return}
        let request = URLRequest(url: url)
        let session = URLSession.shared
        
        
        let task = session.dataTask(with: request, completionHandler: taskHandler)
    
        
        task.resume()
    }
    
    //session - task - url
    func taskHandler(data:Data?, response:URLResponse?, error:Error?){
        if let error = error {
            print(error.localizedDescription)
            return
        }
        
        
        guard  let data = data else {return}
        do {
            let root = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any]
            guard let weather = root else {return}
            
            if let weather1 = weather["weather"] as? [[String:Any]]{
                if let item = weather1.first{
                    DispatchQueue.main.async{
                        self.lblWeather.text = item["description"] as? String
                    }
                }
                //let desc = item["description"]
                //lblWeather.text = desc as? String
            }
            if let main = weather["main"] as? [String:Any]{
                DispatchQueue.main.async {

                    if let temp = main["temp"]as? Double{
                        self.lblTemp.text = "\(temp)"
                    }
                    //self.lblTemp.text = "\(main["temp"]as? Double)"

                    if let humi = main["humidity"]as? Int {
                        self.lblHum.text = "\(humi)"
                    }
                    //self.lblHum.text = "\(main["temp"]as? Int)"
                }
            }
        }catch{
            
        }
        
        
    }
    

}
