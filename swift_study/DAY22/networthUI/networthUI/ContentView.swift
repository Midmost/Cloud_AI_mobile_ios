//
//  ContentView.swift
//  networthUI
//
//  Created by jo on 2021/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var accounts = [Account]()
    var body: some View {
        ForEach(accounts, id: \.self){item in
            HStack {
                Image(systemName: "banknote").foregroundColor(.green)
                Text("Hello, world!")
                Spacer()
                Text("\(item.balance)")
            }
        }.onAppear(perform:LoadAccount)
    }
    
    func LoadAccount(){
        guard let url = URL(string: "localhost:8000/rent_book/book/")else{
            print("api is down")
            return
        
        }
        
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        request.addValue("", forHTTPHeaderField: "Authorization")
        
        URLSession.shared.dataTask(with: request){
            data, response, error in
            if let data = data{
                if let response = try? JSONDecoder().decode([Account].self, from:data){
                    DispatchQueue.main.async{
                        self.accounts = response
                    }
                    return
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
