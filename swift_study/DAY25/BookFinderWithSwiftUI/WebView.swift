//
//  WebView.swift
//  BookFinderWithSwiftUI
//
//  Created by jo on 2021/11/18.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    var strURL:String
    
    func makeUIView(contextL Context) -> some UIView{
        let webView = WKWebView()
        guard let url = URL(string: strURL) else {return webView}
        let request = URLRequest(url: url)
        webView.load(request)
        return webView
    }
    
    func updateUIView(_ uiView: UIViewType, context:Context){
        
    }
}
//
//struct WebView_Previews: PreviewProvider {
//    static var previews: some View {
//        WebView()
//    }
//}
