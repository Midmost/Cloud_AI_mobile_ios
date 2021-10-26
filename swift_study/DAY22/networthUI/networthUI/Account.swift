//
//  Account.swift
//  networthUI
//
//  Created by jo on 2021/10/22.
//

import Foundation

struct Account: Codable, Hashable{
    let name: String
    let category : String
    let description : String
    let wealth_type : String
    let balance: Int
    let created_at: String
}
