//
//  Topics.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/24.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation

public struct Topics: Codable {
    let status: Int
    let count: Int
    let list: [Topic]

    enum CodingKeys: String, CodingKey {
        case status
        case count
        case list = "topics"
    }
}
