//
//  ViewController.swift
//  viewtest_0830
//
//  Created by jo on 2021/08/30.
//

import UIKit

class ViewController: UIViewController {
    
    var btsArray = ["bts1", "bts2", "bts3","bts4","bts5","bts6","bts7"]
    var index = 0   //처음에 0번째를 보여주도록
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    fileprivate func displayImage() {
        let imageName = btsArray[index]
        let image = UIImage(named: imageName)
        imageView.image = image
    }
    
    @IBAction func actNext(_ sender: Any) {
        index += 1
        if(index > btsArray.count - 1){index = btsArray.count - 1}
        pageControl.currentPage = index
        displayImage()
        
    }
    @IBAction func actPrev(_ sender: Any) {
        index -= 1
        if(index <= 0)
        {
            //index = btsArray.endIndex
            index = 0
        }
        pageControl.currentPage = index
        displayImage()
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        pageControl.numberOfPages = btsArray.count
        displayImage()
 
    }

}
