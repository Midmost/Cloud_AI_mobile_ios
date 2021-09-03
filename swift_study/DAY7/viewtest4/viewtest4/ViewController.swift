
import UIKit

class ViewController: UIViewController {
    @IBAction func actValueChngeStep(_ sender: UIStepper) {
        label.text = "\(sender.value)"
    }
    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func actDate(_ sender: UIDatePicker) {
        //1970.01.01 부터 0시 => 이 때 부터 점점 시간이 올라간댜ㅑㅑ
        let date = sender.date
        let formatter = DateFormatter()
        formatter.dateFormat = "yyy-MM-dd HH:mm:ss"//소문자12 대문자 24
        
        let str = formatter.string(from: date)
        label.text = str

    }
    
    @IBOutlet weak var imgView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "bts2")//()를 만든다?생성자를 만든다는 뜻
        
        //여기서 image는 optional type
        //let image : UIImage? 이게 원래 문법
        //위의 image는 그냥 생략한 거
        imgView.image = image
        
        
       
    }


}

