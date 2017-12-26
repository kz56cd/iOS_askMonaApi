//
//  User.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/27.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation

public struct User: Codable {
    let status: Int
    let error: String
    let name: String
    let dan: String
    let description: String?

    enum CodingKeys: String, CodingKey {
        case status
        case error
        case name = "u_name"
        case dan = "u_dan"
        case description = "profile"
    }
}
