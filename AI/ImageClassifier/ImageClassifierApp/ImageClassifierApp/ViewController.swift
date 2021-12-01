//
//  ViewController.swift
//  ImageClassifierApp
//
//  Created by today0818 on 2021/11/08.
//

import UIKit
import PhotosUI

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var classifierBtn: UIButton!
    
    let imagePredictor:ImagePredictor = ImagePredictor()

    // 버튼 액션 -> 이미지 피커 present
    @IBAction func actGetImage(_ sender: Any){
        present(photoPicker, animated: true)
    }

    func updateResultLabel(_ text:String){
        DispatchQueue.main.async {
            self.lbl.text = text
        }
    }
    
    func userSelectedPhoto(_ image: UIImage){
        // 이미지 피커 didFinish 선택한 이미지를 이미지뷰에 업데이트, 모델 호출, 레이블 적용
        DispatchQueue.main.async {
            // 메인 스레드에서 이미지 업데이트
            self.imageView.image = image
        }
        // 모델 호출
        do {
            try imagePredictor.makePredictions(for: image) { predictions in
            //결과값 확인 및 사용
                guard let prediction = predictions else {
                    self.updateResultLabel("예측값이 없습니다.")
                    return
                }
                guard let topResult = prediction.first else {
                    self.updateResultLabel("예측값이 없습니다.")
                    return
                }
                self.updateResultLabel(topResult.result)
            }
        } catch {
            print(error.localizedDescription)
            
        }
    }

}
 
extension ViewController: PHPickerViewControllerDelegate {
    var photoPicker: PHPickerViewController {
        var config = PHPickerConfiguration()
        config.selectionLimit = 1
        config.filter = PHPickerFilter.images
        
        let photoPicker = PHPickerViewController(configuration: config)
        photoPicker.delegate = self
        
        return photoPicker
    }
    
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        picker.dismiss(animated: false)
        
        guard let result = results.first else {
            return
        }
        result.itemProvider.loadObject(ofClass: UIImage.self) { object, Error in
            if let photo = object as? UIImage {
                self.userSelectedPhoto(photo)
            }
        }
    }
}

