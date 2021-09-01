//
//  ViewController.swift
//  tableViewTest
//
//  Created by Heejin Jo on 2021. 9. 1..
//  Copyright © 2021년 Heejin Jo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0
        {
            return bts.count
        }
        else
        {
            return exo.count
        }
    }
    
    
    var bts = ["지민", "슈가", "RM", "정국", "제이홉"]
    var exo = ["첸"]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        if indexPath.section == 0 {
            cell.textLabel?.text = bts[indexPath.row]
        }else{
            cell.textLabel?.text = exo[indexPath.row]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let title : String?
        
        if section == 0 {
            return "bts"
        }else
        {
            return "exo"
        }
        //return title
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
    }


}

