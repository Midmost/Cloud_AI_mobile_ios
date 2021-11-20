//
//  ContentView.swift
//  SwiftUIWithUIKit
//
//  Created by jo on 2021/11/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
//            ImageView(imagename:"logo"
//            ImageVC()
//            WebView(strURL: "http://www.google.com")
            WebVC()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
