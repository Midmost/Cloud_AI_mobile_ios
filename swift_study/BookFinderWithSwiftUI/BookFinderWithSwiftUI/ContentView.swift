//
//  ContentView.swift
//  BookFinderWithSwiftUI
//
//  Created by Asmin on 2021/11/16.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    @State var books:[Book]?
    @State var searchText = ""
    
    func search(){
        let apiKey = "KakaoAK 4cae53176045f8acd298a788ea85b153"
        let strURL = "https://dapi.kakao.com/v3/search/book"
        
        let request = AF.request(strURL, method: .get, parameters: ["query":searchText, "page":1], headers: ["Authorization":apiKey])
        
        request.responseDecodable(of: SResult.self) { response in
            switch response.result{
            case .success(let sresult):
                books = sresult.books
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(books ?? []){ book in
                        NavigationLink(destination: {
                            WebView(strURL: book.url)
                        }) {
                            BookCell(book: book)
                        }
                     }
                }
                .searchable(text: $searchText, prompt: "검색어를 입력하세요.")
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
