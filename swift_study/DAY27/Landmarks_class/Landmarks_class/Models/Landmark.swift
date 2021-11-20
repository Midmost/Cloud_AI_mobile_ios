//
//  Model.swift
//  Landmarks_class
//
//  Created by jo on 2021/11/18.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark : Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description:String

    
    
    //어차피 이미지를 만들어줄 거라서
    private var imageName:String
    var image: Image{
        Image(imageName) //return 생략
    }//연산 프로퍼티
    
    
    private var coordinates: Coordinates
    var locationCoordinates:CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    
    struct Coordinates : Codable, Hashable{
        var latitude: Double
        var longitude: Double
    }
}

//struct Meta: Codable{
//    var isFeatured: Bool
//    var isFavorite: Bool
//
//    enum CodingKeys: String, CodingKey{
//        case isFeatured : "is_Featured"
//        case isFavorite : "is_Favorite"
//    }
//}
    

