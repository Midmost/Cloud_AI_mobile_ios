//
//  BTSTableViewController.swift
//  0928_retrospective02_PListTest2
//
//  Created by jo on 2021/10/02.
//

import UIKit

class BTSTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let targetPath = getFileName("bts.plist")
        guard let sourcePath = Bundle.main.path(forResource: "bts", ofType: "plist")
        else {return}
        
        let fileManager = FileManager.default
        
        if !fileManager.fileExists(atPath: targetPath){
            
        }
    }
    
    func getFileName(_ fileName:String) -> String{
        //NS 치면 자동완성으로 함수명이 뜨는데 매우 길어. 이 때 .을 눌러주면 자동완성할 수 있는 오브젝트들이 떠
            // 첫번째 매개변수는 경로, 우리는 도큐먼트 폴더 필요해서 저거로
            // 두번째 매개변수는 도메인,우리는 사용자만 필요해서 저거로
            // 세번째는 강사님도 모르신다고 함
        let docDirs = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let docPath = docDirs[0] as NSString
        let fullPath = docPath.appendingPathComponent(fileName)
        return fullPath
        
        //pathComponent 는 / (슬러쉬) 임
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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
