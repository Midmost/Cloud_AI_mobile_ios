//
//  DetailViewController.swift
//  BookFinder
//
//  Created by Asmin on 2021/09/30.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    var strURL:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let str = strURL,
              let url = URL(string: str)
        else { return }
        let request = URLRequest(url: url)
        webView.load(request)        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
