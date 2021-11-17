//
//  ContentView.swift
//  SwiftUI_picker
//
//  Created by jo on 2021/11/17.
//

import SwiftUI

struct ContentView: View {
    let bts = ["RM", "진", "슈가", "제이홉", "지민", "뷔","정국"]
    @State var selectedMember:String = ""
    var body: some View {
        VStack{
            Picker("좋아하는 멤버를 선택하세요.", selection: $selectedMember){
                //하나가 아니라 여러개에서 뽑아야 하니 ForEach
                ForEach(bts, id:\.self) //구분하기 위해 id를 사용하고, hashable 을 쓰기 위해 \.self 사용
                {
                    member in
                    Text(member)
                }
            }.pickerStyle(.wheel)
            
            Text("선택하신 멤버는 \(selectedMember)")
                .font(.largeTitle)
        }
    }
}

// Identifiable or Hashable
struct BTS:Hashable {
    var image:String
    var name:String
//    var id:Int
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
