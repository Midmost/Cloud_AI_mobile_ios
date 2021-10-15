//
//  CoronaTableViewController.swift
//  CoronaInfo
//
//  Created by jo on 2021/10/14.
//

import UIKit
import SwiftyJSON
import Alamofire

class CoronaTableViewController: UITableViewController,UISearchBarDelegate {
    
    
    var hospitals:[[String:Any]]?
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    let serviceKey = "avhWh0v236HYzmqSKOMsKscVYUCKOsTLXYutDoS0ZkvyhMHBZUxxrddVdVIoP37z4gQKwJYHl7T8rm53Y5SvSA=="
        //갑자기 인코딩키가 안먹어서 민경님 말씀대로 디코딩 키 가져옴
    
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar){
        if let q = searchBar.text{
            search(query:q)
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
    }
    
    
    
    func search(query:String){
        let strURL = "https://api.odcloud.kr/api/apnmOrg/v1/list"
        let params:Parameters = ["serviceKey":serviceKey,"cond[orgZipaddr::LIKE]":query]
        let request = AF.request(strURL, method: .get, parameters: params)
        request.responseJSON {
            response in switch response.result{
            case .success(let value):
                let root = JSON(value)
                self.hospitals = root["data"].arrayObject as? [[String:Any]]
                
                
               //프린트할 코드
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
             
            //실패 경우 코드
            case .failure(let error):
                if let message = error.errorDescription{
                    print(message)
                }
            }
        }
    }
    
   
    
    
    
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let hospitals = self.hospitals{
            return hospitals.count
        }else {
            return 0
        }
        
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        guard let hospitals = self.hospitals else {return cell}
        let item = hospitals[indexPath.row]
        cell.textLabel?.text = item["orgnm"] as? String
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?)
    {
        if let target = segue.destination as? MapViewController,
           let indexPath = tableView.indexPathForSelectedRow,
           let hospitals = self.hospitals{
            target.hospital = hospitals[indexPath.row]
        }
    }


}
