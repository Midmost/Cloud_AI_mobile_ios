//
//  ContentView.swift
//  LazyGridTest
//
//  Created by jo on 2021/11/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        var columns:[GridItem] = [GridItem(.adaptive(minimum: 100, maximum: 150))]
        
        VStack{
            LazyVGrid(columns: columns){
                ForEach(1..<10){ _ in
                    Image(systemName: "star")
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
