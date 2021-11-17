//
//  ContentView.swift
//  SwiftUi_image
//
//  Created by jo on 2021/11/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View{
        let bts:[String] = ["RM","진", "슈가", "제이홉", "지민","뷔","정국"]
        //        let images = ["bts1"]
        ScrollView{
            Section("bts"){
                ForEach(0..<bts.count){index in
                    BTSImage(image: "bts\(index+1)", name: bts[index])
                }
            }

        }
    }
}







// Identifiable or Hashable
struct BTS:Hashable {
    var image:String
    var name:String
//    var id:Int
}


struct BTSImage:View{
    var image:String
    var name:String
    
    var body: some View{
        ZStack{
            Image(image)
                .resizable()
                .aspectRatio(2/3, contentMode: .fit)
                .frame(width: 300, height: 300, alignment: .center)
                .clipShape(Circle().scale(0.6).offset(y:-60))
                .overlay(Circle()
                            .scale(0.6).offset(y:-60).stroke(.red, lineWidth: 8))
            //                    .background(.yellow)
            
            Text(name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .offset(y:50)
            }
        }
    }
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
