//
//  MainTableViewController.swift
//  BookFinder
//
//  Created by Asmin on 2021/09/30.
//

import UIKit

class MainTableViewController: UITableViewController, UISearchBarDelegate {
    let apiKey = "KakaoAK 4cae53176045f8acd298a788ea85b153"
    var books:[[String:Any]]?
    var page = 1
    @IBOutlet weak var searchBar: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.delegate = self
    }
    @IBAction func actNext(_ sender: Any) {
        page += 1
        guard let query = searchBar.text else { return }
        search(query: query, page: page)
    }
    
    @IBAction func actPrev(_ sender: Any) {
        page -= 1
        guard let query = searchBar.text else { return }
        search(query: query, page: page)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let query = searchBar.text else { return }
        search(query: query, page: 1)
        searchBar.resignFirstResponder()
    }
    
    func dataTaskHandler(data:Data?, response:URLResponse?, error:Error?){
        guard let rdata = data  else { return }
        do{
            if let dic = try JSONSerialization.jsonObject(with: rdata, options: []) as? [String:Any] {
//                let meta = dic["meta"] as? [String:Any]
                books = dic["documents"] as? [[String:Any]]
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        } catch{
            print("실패")
        }
    }
    
    func search(query:String, page:Int){
        let strURL = "https://dapi.kakao.com/v3/search/book?query=\(query)&page=\(page)" as NSString
        guard let str = strURL.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return }

        guard let url = URL(string: str) else { return }
        var request = URLRequest(url: url)
        request.addValue(apiKey, forHTTPHeaderField: "Authorization")
        request.httpMethod = "GET"
        let session = URLSession.shared
        let dataTask = session.dataTask(with: request, completionHandler: dataTaskHandler)
        dataTask.resume()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
   
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if let books = self.books {
            return books.count
        } else {
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        guard let books = self.books else { return cell }
        let book = books[indexPath.row]
        let title = book["title"] as? String
        cell.textLabel?.text = title
        
        if let imageURL = book["thumbnail"] as? String,
           let url = URL(string: imageURL){
            do {
                let data = try Data(contentsOf: url)
                let cover = UIImage(data: data)
                cell.imageView?.image = cover
            } catch {
                print("thumbnail down failed")
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

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destVC = segue.destination as? DetailViewController,
              let indexPath = tableView.indexPathForSelectedRow,
              let books = self.books
              else { return }
        
        let book = books[indexPath.row]
         
        destVC.strURL = book["url"] as? String
    }
    

}
