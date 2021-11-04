//
//  ViewController.swift
//  imageSave
//
//  Created by jo on 2021/10/26.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    let picker = UIImagePickerController()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
    }

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func actGetImage(_ sender: Any) {
        //controller 띄울 때는?
        present(picker, animated: true)
        //사진에 접근을 하겠다!
        picker.sourceType = .photoLibrary
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) { // [string:any]와 다를 거 없어 타입이 저 긴거라는 거 일 뿐
        picker.dismiss(animated: true)
        

        //이미지를 저장하기 전에 함수를 거쳐서 저장을 해야됨
        if let image = info[.originalImage] as? UIImage{
            imageView.image = image
            let rotatedImage = rotateImage(image: image)
            let data = rotatedImage?.pngData()
            try! data?.write(to: getFileName())
        }
       
    }
    
    func getFileName()->URL{
        let uniquename = ProcessInfo.processInfo.globallyUniqueString
        let filename = getDocuments().appendingPathComponent("image_\(uniquename).png")
        print(filename)
        return filename
    }
    
    func getDocuments()->URL{
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return urls[0]
    }
    
    func rotateImage(image:UIImage)->UIImage?{
        if(image.imageOrientation == UIImage.Orientation.up){
            return image
        }
        
        UIGraphicsBeginImageContext(image.size)
        image.draw(in: CGRect(origin: CGPoint.zero, size: image.size))
        let copy = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return copy
    }
}

