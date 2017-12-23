//
//  TopicApiError.swift
//  AskMonaApi
//
//  Created by msano on 2017/12/23.
//  Copyright © 2017年 kz56cd. All rights reserved.
//

import Foundation

public struct TopicApiError: Error {
    let statusCode: Int
    let info: TopicApiErrorInfo?
}

public struct TopicApiErrorInfo: Codable {
    let status: Int
    let message: String
    
    enum CodingKeys: String, CodingKey {
        case status
        case message = "error"
    }
}
