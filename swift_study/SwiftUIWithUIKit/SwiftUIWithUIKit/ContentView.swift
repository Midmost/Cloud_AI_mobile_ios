//
//  ContentView.swift
//  SwiftUIWithUIKit
//
//  Created by Asmin on 2021/11/18.
//

import SwiftUI

struct ContentView: View {
    @State var strURL:String = ""
    var body: some View {
        VStack{
//            ImageView(imagename: "logo")
//            ImageVC()
//            TextField("주소를 입력하세요.", text: $strURL)
//                .font(.title)
//
//            WebView(strURL: $strURL)
////                .onSubmit {
////                    WebView(strURL: strURL)
////                }
//            Text(strURL)
            WebVC()
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
