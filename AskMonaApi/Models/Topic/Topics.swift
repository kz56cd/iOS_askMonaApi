//
//  Topics.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/24.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation

public struct TopicsResponse: Decodable {
    let topics: [Topic]

//    enum CodingKeys: String, CodingKeys {
//        case list = "topics"
//    }
}

public struct Topic: Decodable {
    // stub
    let rank: Int
    let title: String
}
