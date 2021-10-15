//
//  ViewController.swift
//  ActivityTest
//
//  Created by jo on 2021/10/15.
//

import UIKit
import ProgressHUD

class ViewController: UIViewController {


   override func viewDidLoad() {
        super.viewDidLoad()
        let indicator1 = UIActivityIndicatorView(frame:CGRect(x: 0, y: 0, width: 50, height: 50))
        indicator1.center = self.view.center
        indicator1.hidesWhenStopped = true
        indicator1.color = .blue
        self.view.addSubview(indicator1)
        indicator1.startAnimating()

    }

    @IBAction func actAnimate(_ sender: Any) {
        ProgressHUD.show("다운로드 중입니다")
    }
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        let value = sender.value
        ProgressHUD.showProgress(CGFloat(value))
    }
    
    @IBAction func actDismiss(_ sender: Any) {
        ProgressHUD.dismiss()
    }
    
}









