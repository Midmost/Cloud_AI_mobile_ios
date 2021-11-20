//
//  ImageView.swift
//  SwiftUIWithUIKit
//
//  Created by jo on 2021/11/18.
//

import SwiftUI

struct ImageView: UIViewRepresentable {
    var imagename : String
    //구현해야 할 요수는 2개 있음
    func makeUIView(context: Context) -> some UIView {
        let imageView = UIImageView()
        let image = UIImage(named: imagename)
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        return imageView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}

struct ImageVC: UIViewControllerRepresentable{
    func makeUIViewController(context: Context) -> some UIViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "imageview") as! ImageViewController
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
