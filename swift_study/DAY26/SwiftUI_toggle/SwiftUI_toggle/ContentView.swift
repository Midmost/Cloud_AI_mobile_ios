//
//  ContentView.swift
//  SwiftUI_toggle
//
//  Created by jo on 2021/11/17.
//

import SwiftUI

struct ContentView: View {
    @State var isOn_heejin = false
    var body: some View {
        Form{
            Toggle("toggle",isOn: $isOn_heejin) //$표시는 binding이란 뜻
            
            if isOn_heejin{
                Image(systemName: "lightbulb")
            }else{
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
