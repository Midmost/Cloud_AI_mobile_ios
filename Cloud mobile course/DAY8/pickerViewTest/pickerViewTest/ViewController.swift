//
//  ViewController.swift
//  pickerViewTest
//
//  Created by jo on 2021/08/30.
//

import UIKit

class ViewController: UIViewController {

    let datasource = PickerViewDatasource
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = datasource
     
    }


}

