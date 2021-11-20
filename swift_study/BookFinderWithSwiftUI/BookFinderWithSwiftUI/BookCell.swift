//
//  BookCell.swift
//  BookFinderWithSwiftUI
//
//  Created by Asmin on 2021/11/18.
//

import SwiftUI

struct BookCell: View {
    var book:Book
    var body: some View {
        HStack{
            AsyncImage(url: URL(string:book.thumbnail), transaction: .init(animation: .spring())) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(3/4, contentMode: .fit)
                        .frame(width: 100)
                case .failure(_):
                    EmptyView()
                @unknown default:
                    EmptyView()
                }
            }
            VStack{
                Text(book.title)
                    .font(.title2)
                    .foregroundColor(.blue)
                    .fontWeight(.bold)
                Text(book.authors.joined(separator: ","))
                    .font(.body)
                    .bold()
                    .foregroundColor(.gray)
                    .padding(.vertical, 3)
                HStack{
                    Spacer()
                    Text(book.publisher)
                    Spacer()
                    Text("\(book.price)")
                    Spacer()
                }
            }
        }
    }
}

//struct BookCell_Previews: PreviewProvider {
//    static var previews: some View {
//        BookCell(book:Boo)
//    }
//}
