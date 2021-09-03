//
//  ViewController.swift
//  viewtest2
//
//  Created by jo on 2021/08/27.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label_sl: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sw: UISwitch!
    
    //slider의 값을 읽어서 변동값을 라벨에 붙여넣는거
    @IBAction func actSliderValueChnge(_ sender: Any) {
        //읽어올 값
        //slider.value
        //읽어온 값을 label부착
        label_sl.text = "\(slider.value)"
    }
    @IBAction func swChange(_ sender: Any) {
        if sw.isOn{
            label_sl.text = "on"
        }
        else
        {
            label_sl.text = "off"
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        slider.minimumValue = 0
//        slider.maximumValue = 100
//        slider.value = 0

    }


}

