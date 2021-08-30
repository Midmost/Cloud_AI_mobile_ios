//
//  ViewController.swift
//  pickerView2
//
//  Created by jo on 2021/08/30.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource { //protocol을 부를거야! delegate이랑 datasource써야지!
    
    let bts = ["jin", "sugar", "jimin", "RM", "뷔", "정국", "제이홉"]
    var exo = ["시우민", "디오", "붼", "도경수","찬열"]
    
    
    
    
   ///////////////////////// 위에서 프로토콜 부른 뒤 밑에 메서드를 써줘야 해
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2       //component개수는 고정이야 이거 여쭤보자
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return bts.count
        }
        else{
            return exo.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return bts[row]
        }
        else
        {
            return exo[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0
        {label.text = bts[row]}
        else
        {label.text = exo[row]}
    }
    
    
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var label: UILabel!
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
    }

}
