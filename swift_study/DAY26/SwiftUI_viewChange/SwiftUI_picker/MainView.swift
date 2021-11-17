//
//  MainView.swift
//  SwiftUI_picker
//
//  Created by jo on 2021/11/17.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView{
            NavigationLink(destination: ThirdView()){
                Text("다음 화면으로")
            }.navigationTitle("Main View")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
