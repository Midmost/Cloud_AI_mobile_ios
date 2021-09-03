//
//  ViewController.swift
//  pickerViewTest
//
//  Created by jo on 2021/08/30.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    let bts = ["jin", "RM", "sugar", "v", "jhop", "jukuk", "whoever"]
    
    let datasource = PickerViewDatasource()
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //return 4
        return bts.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
       // return "\(row)번째 row "
        return bts[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = bts[row]
    }
    
//
    
    


}

