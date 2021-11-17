//
//  ContentView.swift
//  SwiftUI_slider
//
//  Created by jo on 2021/11/17.
//

import SwiftUI

struct ContentView: View {
    @State var sliderValue = 0.0
    var body: some View {
        VStack{
            Slider(value: $sliderValue, in: 1...100, step:0.1)
                .padding()
            
          Text("sliderValue\(sliderValue)")
            
            Text("\(sliderValue, specifier: "%.0f")")
            
            Text(String(format:"%.1f",sliderValue))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
