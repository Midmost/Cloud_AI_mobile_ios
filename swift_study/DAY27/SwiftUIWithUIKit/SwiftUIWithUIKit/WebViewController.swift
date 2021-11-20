//
//  WebViewController.swift
//  SwiftUIWithUIKit
//
//  Created by jo on 2021/11/18.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    @IBOutlet weak var webView:WKWebView

    override func viewDidLoad() {
        super.viewDidLoad()
        let strURL = "http://www.naver.com"
        quard let url = URL(string: strURL) else {return}

        // Do any additional setup after loading the view.
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
