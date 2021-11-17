//
//  Models.swift
//  BookFinderWithCodable
//
//  Created by jo on 2021/11/15.
//

import Foundation

struct Meta:Codable{
    var isEnd:Bool
    var pageableCount:Int
    var totalCount:Int
    
    enum CodingKeys:String, CodingKey{
        case isEnd = "is_end"
        case pageableCount = "pageable_count"
        case totalCount = "total_count"
    }
}

struct Book:Codable{
    var title:String
    var authors:[String]
    var publisher:String
    var thumbnail:String
    var price:Int
    var url:String
}

struct SResult:Codable{
    var meta:Meta
    var documents:[Book]
}
