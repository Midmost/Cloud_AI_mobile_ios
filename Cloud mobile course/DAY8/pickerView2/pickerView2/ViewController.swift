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
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        //optional로 뜨는 이유가 => UILabel 타입을 안 주고 view를 써서
        //이미지나 라벨이나 공통 상위 클래스를 반환해버리면(UIView) 뭐가 와도 받을 수 있으니
        //상위형을 받은 다음 형변환하면 메서드를 새로 만들 필요가 없음
        //옵셔널인 상태에서 nill이 안 떠야 참이 됨
        //언래핑을 해주자
        if let view1 = view as? UILabel{ //viewtype을 라벨로 바꿔준단 뜻
            //근데 라벨타입이 아닌데 라벨로 형변환하면?
            //nill 이 옴
            //view as? UILabel : view를 label로써 재활용 가능?
            if component == 0 {
                label.backgroundColor = .yellow
                label.text = bts[row]
            }
        }else{ //반환할 게 없으면 아래를 실행해라
            label.backgroundColor = .red
            label.text = exo[row]
        }
        let label = UILabel()
        //label.backgroundColor = .yellow
        label.textAlignment = .center
        
        if component == 0 {
            label.backgroundColor = .yellow
            label.text = bts[row]
        }else
        {
            label.backgroundColor = .red
            label.text = exo[row]
        }
        return label
    }
    
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var label: UILabel!
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
    }

}
