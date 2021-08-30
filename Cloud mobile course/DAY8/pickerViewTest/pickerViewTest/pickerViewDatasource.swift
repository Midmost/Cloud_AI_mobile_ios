//
//  pickerViewDatasource.swift
//  pickerViewTest
//
//  Created by jo on 2021/08/30.
//

import UIKit

//얘를 피커뷰의 데이터소스로 할거야
//데이터 소스로 쓰려면?
//프로토콜의 데이터소스를 적용해야해

class PickerViewDatasource: NSObject, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        <#code#>
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        <#code#>
    }
    

}

