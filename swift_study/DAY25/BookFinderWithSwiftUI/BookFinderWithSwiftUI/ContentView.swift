//
//  ContentView.swift
//  BookFinderWithSwiftUI
//
//  Created by jo on 2021/11/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(books ?? []){ book in
                        NavigationLink(destination: {WebView(strURL: book.url)}
                                       {label: BookCell(book: book)}
                        
                        
                        
                        
                        
                        BookCell(book: book)
                    }
                }
                .searchable(text: $searchText, prompt:"검색어를 입력하세요>"
                                .onSubmit(of: .search, search)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
