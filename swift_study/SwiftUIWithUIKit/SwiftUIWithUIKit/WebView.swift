//
//  WebView.swift
//  SwiftUIWithUIKit
//
//  Created by Asmin on 2021/11/18.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    @Binding var strURL:String
    func makeUIView(context: Context) -> some UIView {
        let webView = WKWebView()
        guard let url = URL(string: strURL) else { return webView }
        let request = URLRequest(url: url)
        webView.load(request)
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}

struct WebVC: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> some UIViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "webvc") as! WebViewController
        
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

//struct WebView_Previews: PreviewProvider {
//    static var previews: some View {
//        WebView(strURL: "https://www.google.com")
//    }
//}
