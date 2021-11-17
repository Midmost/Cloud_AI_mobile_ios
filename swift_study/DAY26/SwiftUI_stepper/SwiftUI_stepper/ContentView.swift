//
//  ContentView.swift
//  SwiftUI_stepper
//
//  Created by jo on 2021/11/17.
//

import SwiftUI

struct ContentView: View {
    @State var stepperValue = 0
    var body: some View {
        VStack{
            HStack{
                Stepper(value: $stepperValue, in:1...100){
                    Text("Stepper")
                }
                Spacer()
            }.padding(.horizontal, 20)
            Text("\(stepperValue)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
