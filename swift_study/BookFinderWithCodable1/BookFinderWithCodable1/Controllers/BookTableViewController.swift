//
//  BookTableViewController.swift
//  BookFinderWithCodable1
//
//  Created by Asmin on 2021/11/16.
//

import UIKit
import Alamofire
import SDWebImage
class BookTableViewController: UITableViewController {
    let apiKey = "KakaoAK 4cae53176045f8acd298a788ea85b153"
    let strURL = "https://dapi.kakao.com/v3/search/book"
    var books:[Book]?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
        search()
    }

    func search(){
        let params:Parameters = ["query":"love", "page":1]
        let header:HTTPHeaders = ["Authorization":apiKey]
        
        let alamo = AF.request(strURL, method: .get, parameters: params, headers: header)
        
        alamo.responseDecodable(of: SResult.self) { response in
            switch response.result {
            case .success(let sresult):
                self.books = sresult.books
                print(sresult.books)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let books = self.books{
            return books.count
        } else {
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        guard let books = self.books else { return cell }
        let book = books[indexPath.row]
        if let lblTitle = cell.viewWithTag(2) as? UILabel{
            lblTitle.text = book.title
        }
        if let imageView = cell.viewWithTag(1) as? UIImageView{
            imageView.sd_setImage(with: URL(string: book.thumbnail), completed: nil)
        }
        if let lblAuthors = cell.viewWithTag(3) as? UILabel{
            lblAuthors.text = book.authors.joined(separator: ",")
        }
        if let lblPrice = cell.viewWithTag(4) as? UILabel{
            lblPrice.text = "\(book.price)"
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
