//
//  ContentView.swift
//  SwiftUI_button
//
//  Created by jo on 2021/11/17.
//

import SwiftUI

struct ContentView: View {
    @State var isOn = false
    var body: some View{
        Form{
            Button(action: {
                isOn = !isOn
            }){
                Text("검색")
            }
            
            if isOn {
                Image(systemName: "lightbulb")
                    .resizable()
                    .frame(width: 80, height: 100, alignment: .center)
                    .aspectRatio(1, contentMode: .fit)

            }else
            {
                Image(systemName: "lightbulb.fill")
                    .resizable()
                    .frame(width: 80, height: 100, alignment: .center)
                    .aspectRatio(1, contentMode: .fit)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
