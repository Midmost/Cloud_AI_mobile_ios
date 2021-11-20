//
//  ContentView.swift
//  AlertTest
//
//  Created by Asmin on 2021/11/18.
//

import SwiftUI

struct ContentView: View {
    @State var isOn = false
    var body: some View {
        VStack{
            Button("Alert") {
                isOn.toggle()
            }
            .alert(isPresented: $isOn) {
//                Alert(title: Text("Title"), message: Text("message"), dismissButton: .cancel())
                
//                Alert(title: Text("Title"), message: nil, dismissButton: .cancel(Text("확인"), action: {
//                    print("확인")
//                }))
                
                Alert(title: Text("타이틀"), message: Text("message"), primaryButton: .default(Text("다운받기"), action: {
                    print("다운로드")
                }), secondaryButton: .cancel())
            }
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
