//
//  BookFinderModels.swift
//  BookFinderWithCodable1
//
//  Created by Asmin on 2021/11/16.
//

import Foundation

struct Book: Codable, Identifiable {
    var title:String
    var publisher:String
    var authors:[String]
    var thumbnail:String
    var url:String
    var price:Int
    var id:String
    
    enum CodingKeys:String, CodingKey{
        case title, publisher, authors, thumbnail, url, price
        case id = "isbn"
    }
}

struct Meta: Codable {
    var isEnd:Bool
    var pageableCount:Int
    var totalCount:Int
    
    enum CodingKeys:String, CodingKey{
        case isEnd = "is_end"
        case pageableCount = "pageable_count"
        case totalCount = "total_count"
    }
}

struct SResult: Codable {
    var meta: Meta
    var books: [Book]
    
    enum CodingKeys:String, CodingKey{
        case meta
        case books = "documents"
    }
}
