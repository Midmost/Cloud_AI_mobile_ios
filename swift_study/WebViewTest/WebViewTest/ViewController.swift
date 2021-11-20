//
//  ViewController.swift
//  WebViewTest
//
//  Created by Asmin on 2021/09/29.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let str = "https://naver.com"
        
        guard let url = URL(string: str) else { return }
        
        let request = URLRequest(url: url)
        
        webView.load(request)
    }
}

