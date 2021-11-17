//
//  ContentView.swift
//  SwiftUIBasic
//
//  Created by jo on 2021/11/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                VStack{
                    Text("Hello, world!")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .lineLimit(3)
                        .truncationMode(.middle)
                        .lineSpacing(50)
                        .shadow(color: .red, radius: 3, x: 3, y: 3)
                        .foregroundColor(.yellow)
                        .background(.blue)
                        .cornerRadius(20)
                    Text("나도 textView")
                        .font(.largeTitle)
                        .background(.green)
                        .padding()
                    
                    
                }.padding()
                    .background(.red)
                    .font(.largeTitle)
                
                
        }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
