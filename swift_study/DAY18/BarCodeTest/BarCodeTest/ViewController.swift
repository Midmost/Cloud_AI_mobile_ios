//
//  ViewController.swift
//  BarCodeTest
//
//  Created by jo on 2021/10/15.
//

import UIKit
import BarcodeScanner
import AVFoundation //audio video


class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func actScan(_ sender: Any) {
        switch AVCaptureDevice.authorizationStatus(for: .video) {
        
        case .authorized:
            let scanner = BarcodeScannerViewController()
            scanner.codeDelegate = self
            scanner.errorDelegate = self
            scanner.dismissalDelegate = self
            present(scanner, animated: true)
        case .notDetermined:
            AVCaptureDevice.requestAccess(for: .video){
                granted in
                if granted{
                    DispatchQueue.main.async {
                        let scanner = BarcodeScannerViewController()
                        scanner.codeDelegate = self
                        scanner.errorDelegate = self
                        scanner.dismissalDelegate = self
                        self.present(scanner, animated: true)
                    }
                }
            }
        case .denied, .restricted:
            print("denied or restricted")
    }
}

}


extension ViewController: BarcodeScannerCodeDelegate ,BarcodeScannerErrorDelegate, BarcodeScannerDismissalDelegate{
    func scanner(_ controller: BarcodeScannerViewController, didCaptureCode code: String, type: String) {
        controller.reset()
        controller.dismiss(animated: true, completion: nil)
  }
    
    func scannerDidDismiss(_ controller:BarcodeScannerViewController){
        controller.dismiss(animated: true, completion: nil)
    }

    func scanner(_ controller: BarcodeScannerViewController, didReceiveError error: Error){
        print("ooo")

    }

}

