//
//  ContentView.swift
//  SwiftUIBasic2
//
//  Created by jo on 2021/11/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let numbers = [1,2,3,4,5,6,7,8,9]
        VStack{
            VStack{
                ForEach(1..<10){number in
                    Text("Hello, world!\(number)")
                }
            }
            VStack{
                ForEach(numbers, id:\.self){number in
                    Text("Hello World\(number)")
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
