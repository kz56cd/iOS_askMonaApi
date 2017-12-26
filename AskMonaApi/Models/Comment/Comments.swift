//
//  Comments.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/26.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation

public struct Comments: Codable {
    let status: Int
    let updated: Int
    let modified: Int
    let list: [Comment]
    
    enum CodingKeys: String, CodingKey {
        case status
        case updated
        case modified
        case list = "responses"
    }
}
