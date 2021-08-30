//
//  ViewController.swift
//  TableViewTest
//
//  Created by jo on 2021/08/30.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var TableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(indexPath.row)번째 cell"
        //? 넣는 이유는 cell 안에 UILabel이 있을수도 없을수도 있어서야
        //사실 label은 다 들어가 있는데 다른 속성은 없는 경우도 있어서
        //?를 맞춰서 써줘야 함
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.dataSource = self
    }


}

