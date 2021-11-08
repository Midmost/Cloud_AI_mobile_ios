//
//  ViewController.swift
//  imageClassifierAPp
//
//  Created by jo on 2021/11/08.
//

import UIKit
import PhotosUI

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var selectedImageView: UIImageView!
    // 결과 보여주는 레이블
    // 선택한 이미지 보여주는 이미지뷰
    // 앨범을 띄워주는 버튼
    
    let imagePredictor: ImagePredictor = ImagePredictor()

    
    @IBAction func showUserAlbum(_ sender: UIButton) {
        //버튼 액션 -> 이미지 피커 present
        present(photoPicker, animated: true)
    }
    
    func updateResultLabel(_ text: String){
        DispatchQueue.main.async {
            self.resultLabel.text = text //얘도 클로져라서 클로져 안에서 할 때는 항상 self를 붙여야 해
        }
        
    }
    
    func userSelectedPhoto(_ image: UIImage){
        //이미지 피커 didFinish 선택한 이미지를 이미지뷰에 업데이트, 모델 호출
        //호출되어 나오면 레이블에 업데이트
        
        
        //**미정강사님 짧막 디스패치 설명!
        //mainthread가 아니기 때문에 DispatchQueue 필요
        //UI에서 상관없는 것들을 background에서 사용하고
        //Dispatch는 바로 어떤 스레드에서 할 지를 결정해주는 애라고 보면 됨
        //그리고 기본으로는 메인인데 클로져 안에서 발생하는
        //self.selectedImageView.image = image 이런 코드들은 별도의 스레드에서 진행중인거라
        //그 이미지를 ui에 없데이트 해주려면 이런 dispatchQueue 코드가 필요한거지.
        DispatchQueue.main.async {
            //main thread 에서 이미지 업데이트
            self.selectedImageView.image = image
        }
        //모델 호출
        do{
            try imagePredictor.makePredictions(for: image){
                predictions in
                //결과값 확인 및 사용
                guard let prediction = predictions else{
                    self.updateResultLabel("예측값이 없습니다.")
                    return
                }
                guard let topResult = prediction.first else{
                    self.updateResultLabel("예측값이 없습니다.")
                    return
                }
                self.updateResultLabel(topResult.result)
            }
        }catch{
            //error
            print(error.localizedDescription)
        }
    }
}


extension ViewController: PHPickerViewControllerDelegate{
    var photoPicker: PHPickerViewController{
        var config = PHPickerConfiguration()
        config.selectionLimit = 1
        config.filter = PHPickerFilter.images
        
        let photoPicker = PHPickerViewController(configuration: config)
        photoPicker.delegate = self
        
        return photoPicker
    }
    
    func picker(_ picker: PHPickerViewController, didFinishPicking results:
                    [PHPickerResult]){
        picker.dismiss(animated: false)
        
        guard let result = results.first else{
            return
        }
        result.itemProvider.loadObject(ofClass: UIImage.self){object, error in
            //image 선택해서 그 객체가 UIimage가 맞다면 위에 method를 전달할거야.
            if let photo = object as? UIImage{
                self.userSelectedPhoto(photo)
            }
        }
    }
}
