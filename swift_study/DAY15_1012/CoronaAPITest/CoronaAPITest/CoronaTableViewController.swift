//
//  CoronaTableViewController.swift
//  CoronaAPITest
//
//  Created by jo on 2021/10/12.
//

import UIKit

class CoronaTableViewController: UITableViewController {
    
    let serviceKey =
        "avhWh0v236HYzmqSKOMsKscVYUCKOsTLXYutDoS0ZkvyhMHBZUxxrddVdVIoP37z4gQKwJYHl7T8rm53Y5SvSA%3D%3D"
    
    //array 초기화가 안되서 옵셔널로 잡음
    //변수 선언( = )이 아니라 타입을 지정해주는 거니까( : )
    var hospitals: [[String:Any]]?

    @IBOutlet weak var searchBar: UISearchBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
    }
    
    func search(query:String){
        let strURL = "https://api.odcloud.kr/api/apnmOrg/v1/list?serviceKey=\(serviceKey)&cond[orgZipaddr::LIKE]=\(query)"
        guard let url = URL(string: strURL) else {return}
        let request = URLRequest(url: url)
        let session = URLSession.shared
        let task = session.dataTask(with: request, completionHandler: dataTaskHandler(data:response:error:))
        
        //만든거 사용하기
        task.resume()
    }
    
    func dataTaskHandler(data:Data?, response:URLResponse?, error:Error?){
        if let error = error {
            //nill이면 에러프린트 출력하고 리턴해버려
            print(error.localizedDescription)
            return
        }
        guard let data = data else {return}
        
        do {
            if let root = try JSONSerialization.jsonObject(with: data, options:[])as? [String:Any]{
                hospitals = root["data"] as? [[String:Any]]
                
                //UI를 건드리는 쪽은 메인쓰레드만 처리해야해
                //근데 네트워크는 별도의 쓰레드를 만드니까
                //메인쓰레드에 tableView.reloadData를 넣어줘야해
                //여기서 큐: 줄 서는거 (맨 처음 넣은 게 젤먼저 나옴)
                DispatchQueue.main.async{
                    self.tableView.reloadData()
                    //tableView나 핸들러에서 넣어주려면 항상 메인쓰레드에 넣어줘야한다
                }
            }
                
        }catch{
            
        }
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
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
        
        if let hospitals = self.hospitals{
            let dic = hospitals[indexPath.row]
            if let name = dic["orgnm"] as? String{
                cell.textLabel?.text = name
            }
        }
        
        
       
        return cell
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

//요즘 서치바 만드는 방법
//이 자체를 다른 파일에 넣어놔도돼
extension CoronaTableViewController: UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let query = searchBar.text{
            let tempQuery = query as NSString
            if let q = tempQuery.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed){
                search(query: q)
                
            }
        }
    }
}
