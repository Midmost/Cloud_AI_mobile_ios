//
//  BTSTableViewController.swift
//  0928_retrospective
//
//  Created by jo on 2021/10/02.
//

import UIKit

class BTSTableViewController: UITableViewController { var bts:NSArray?

    override func viewDidLoad() {
        super.viewDidLoad()
        //path가 nill이면 이 이후가 아무의미가 없어 그래서 quard
        
        
        tableView.rowHeight = 100
        guard let path = Bundle.main.path(forResource: "bts", ofType: "plist") else {return}
        
        //NSArray 에서 plist이용해서 만들 때는 contentsOfFile
        bts = NSArray(contentsOfFile: path)

        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1 //왜 1이지? 지금 section이 하나있으니까
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let bts = bts {
            //여기서 bts 변수명이 똑같아서 헛갈림
            // =의 오른쪽 bts는 처음에 선언한 var bts:NSArray? 이거고
            // =의 왼쪽 bts는 이 코드블럭 안에서 선언되어있는 애야
            // 명확하게 구분하고 싶으면 사실 bts = self.bts 이렇게 해도 됨
            
            return bts.count
        }
        else{
            return 0 // else란 말은 nill이란 뜻임
        }
        
        //return bts.count // bts가 옵셔널이라서 언래핑 필요
    }
    
    
    
    
    
    
    
    ///////////////////////////////////// 여기까지가 plist 기본
    
    
    
    
    
    
 


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bts_cell", for: indexPath)

        // reuseIdentifier 항상 잘 바꿔주자
        
        //무조건 형변환이 되는건 아냐 UIImageView로 1번 태그가 되어있으니까 변환되는거임
        //그러니 태그...항상...조심...또 조심...
        //let imageView = cell.viewWithTag(1) as? UIImageView
        
        //bts자체가 없으면 의미가 없어서 guard
        guard let bts = self.bts,let member = bts[indexPath.row] as? [String:String] else {return cell}
        //왜 리턴값을 cell을 해줘야 하는거지?
        
        
////////////////////////////////////////  셀 안에 들어갈 이미지, 라벨1, 라벨2 ////////////////////////////////////////////////////
        
        //왜 if let 썼을까? imageView는 없어도 label은 있을 수 있어서...?
        if let imageView = cell.viewWithTag(1) as? UIImageView{
            if let imageName = member["image"]{
                let image = UIImage(named: imageName)
                imageView.image = image
            }
            
            if let lblStage = cell.viewWithTag(2) as? UILabel{
                lblStage.text = member["stage_name"] // text도 옵셔널, member[]도 옵셔널 걍 넣어
            }
            
            if let lblName = cell.viewWithTag(3) as? UILabel{
                lblName.text = member["name"]
            }
            
           //let image = UIImage(named: <#T##String#>)
            // named의 매개변수는 string, 옵셔널이 아님 근데 member["image"]는 옵셔널
             // 언래핑 필요
            
        }

        return cell
    }

    
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

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
