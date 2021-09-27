//
//  ViewControllerC.swift
//  DAY11_0927
//
//  Created by jo on 2021/09/27.
//

import UIKit

class ViewControllerC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //makeing method
    @IBAction func actBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        //navigation cotorllr가 있으면 동작하고 nill이면 동작안해
        //animation 그냥 true 해라
    }
    
    @IBAction func actToRoot(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    @IBAction func popTo(_ sender: Any) {
        //unwrapping need
        //if let can be used in method
        //guard can be used anywhere
        if let viewControllers = self.navigationController?.viewControllers{
            for viewController in viewControllers{
                //viewController, viewControllers type is UIviewController
                if viewController is ViewControllerA
                //네가 viewCA냐? 계속묻는거
                {
                    self.navigationController?.popToViewController(viewController, animated: true)
                    
                }
            }
        }
        
        
        
        guard let viewControllers = self.navigationController?.viewControllers else { return  }
            for viewController in viewControllers {
                if let vc = viewController as? ViewControllerA{
                    self.navigationController?.popToViewController(vc, animated: true)
            }
        }
        
    }
    
    
    @IBAction func toBlue(_ sender: Any) {
        if let blueVC = self.storyboard?.instantiateViewController(identifier: "blue")
        {
            self.navigationController?.pushViewController(blueVC, animated: true)
        }
    }
    
    
}
