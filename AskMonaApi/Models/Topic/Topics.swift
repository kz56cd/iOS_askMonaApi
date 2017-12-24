//
//  Topics.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/24.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation

public struct TopicsResponse: Codable {
    let status: Int
    let count: Int
    let topics: [Topic]
}

public struct Topic: Codable {
    // stub
    let rank: Int
    let title: String

    // TODO: Add another required params
}
