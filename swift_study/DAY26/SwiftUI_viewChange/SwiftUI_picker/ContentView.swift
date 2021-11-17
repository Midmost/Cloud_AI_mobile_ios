//
//  ContentView.swift
//  SwiftUI_picker
//
//  Created by jo on 2021/11/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            MainView()
                .tabItem{
                    Image(systemName: "lightbulb")
                }
            FourthView()
                .tabItem{
                    Image(systemName: "lightbulb.fill")
                }
        }
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
