//
//  BTSTableViewController.swift
//  DAY11_0927_btsApp
//
//  Created by jo on 2021/09/27.
//

import UIKit

let bts:[[String:String]] = [["stage_name":"RM", "name":"김남준", "image":"bts1"],
["stage_name":"진", "name":"김석진", "image":"bts2"],
["stage_name":"슈가", "name":"민윤기", "image":"bts3"],
["stage_name":"제이홉", "name":"정호석", "image":"bts4"],
["stage_name":"지민", "name":"박지민", "image":"bts5"],
["stage_name":"뷔", "name":"김태형", "image":"bts6"],
["stage_name":"정국", "name":"전정국", "image":"bts7"]]



class BTSTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //tableview는 책장, cell은 책
        //맞춰줘야해
        tableView.rowHeight = 100
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return bts.count
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let member:[String:String] = bts[indexPath.row]

        //when get the value from dict, it's optional,so do unwrapping
        if let imageView = cell.viewWithTag(1) as? UIImageView{
            if let imageName = member["image"]{
                imageView.image = UIImage(named: imageName)
                //UIImage는 언래핑한 게 필요해서 if let을 해줘야해
            }
        }
        
        
//        if let stageName = member["stage_name"]{
//            lblStage.text = stageName
//        }
        
        if let lblStage = cell.viewWithTag(2) as? UILabel {
            lblStage.text = member["stage_name"]
            //text는 원래 옵셔널이라서 그리고 딕셔너리는 항상 옵셔널이라서 member["stage_name"] 옵셔널이면 안돼

        }
        
        if let lblName = cell.viewWithTag(3) as? UILabel {
            lblName.text = member["name"]
            //text는 원래 옵셔널이라서 그리고 딕셔너리는 항상 옵셔널이라서 member["stage_name"] 옵셔널이면 안돼
        }
        
        if let lblOrder = cell.viewWithTag(4) as? UILabel {
            lblOrder.text = "\(indexPath.row+1)번째 멤버"
        }

        return cell
    }
    
  
    
    
    
    
    //detail view controller 에서 instantiate하여 push하면 그 참조값이 어디에 있다? destination에 있다.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //얘의 멤버라는 속성으로 보내줘야하는데
        //UIViewController가 기본값으로 설정되어있지만
        //멤버속성은 DetailViewController에 있단 말이지
        
        
        
        
        //indexPathForSelectedRow: 선택되어 있는 셀이 있다는 것
        if let indexPath = tableView.indexPathForSelectedRow{
            //indexPath != nill 인 경우에만 {}안으로 들어올 수 있어
            if let destVC = segue.destination as? DetailViewController
            {
                destVC.member = bts[indexPath.row]
            }
            
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
