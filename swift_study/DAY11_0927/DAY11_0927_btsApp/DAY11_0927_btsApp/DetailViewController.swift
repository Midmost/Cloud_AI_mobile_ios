//
//  DetailViewController.swift
//  DAY11_0927_btsApp
//
//  Created by jo on 2021/09/27.
//

import UIKit

class DetailViewController: UIViewController {
    //외부에서 값이 넘어온단 말이야 값이 처음부터 세팅되지 않으면 옵셔널
    var member:[String:String]?
    //var member:[String:String] = [:] 이렇게 할수도 있지만 뭐가 안에 들어있는지 몰라
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblStage: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //member is not optional
        guard let member = self.member else {return}
        if let imageName = member["image"]
        {
            imageView.image = UIImage(named: imageName)
        }
        
        lblStage.text = member["stage_name"]
    }
    




}
